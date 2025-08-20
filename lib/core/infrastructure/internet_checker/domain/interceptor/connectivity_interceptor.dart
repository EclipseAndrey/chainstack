import 'dart:async';

import 'package:chainstack/core/infrastructure/internet_checker/domain/repositories/connectivity_repository.dart';
import 'package:chainstack/core/x_logger/x_logger.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityInterceptor extends Interceptor {
  final Duration retryInterval;
  final Duration pingTimeout;
  final IConnectivityRepository _networkStatusRepository;
  final InternetConnectionChecker _checker;

  Completer<void>? _internetWaitCompleter;

  ConnectivityInterceptor({
    this.retryInterval = const Duration(seconds: 1),
    this.pingTimeout = const Duration(seconds: 2),
    required IConnectivityRepository connectivityRepository,
  }) : _networkStatusRepository = connectivityRepository,
       _checker = InternetConnectionChecker.createInstance(
         checkTimeout: pingTimeout,
         addresses: [AddressCheckOption(uri: Uri.parse('https://ya.ru'))],
       );

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final hasInternet = await _checkInternet();
    logW('[ConnectivityInterceptor] hasInternet: $hasInternet');

    if (hasInternet) {
      _networkStatusRepository.setOnline(true);
      handler.next(options);
    } else {
      _networkStatusRepository.setOnline(false);
      await _waitForInternet(); // дождаться одного общего восстановления
      handler.next(options);
    }
  }

  Future<void> _waitForInternet() async {
    // Если уже есть активный completer — ждём его
    if (_internetWaitCompleter != null) {
      logW('[ConnectivityInterceptor] Waiting for existing completer...');
      return _internetWaitCompleter!.future;
    }

    _internetWaitCompleter = Completer<void>();
    int attempt = 0;

    logW('[ConnectivityInterceptor] Started internet wait loop');

    while (true) {
      attempt++;
      logW('[ConnectivityInterceptor] Retry attempt #$attempt');

      await Future.delayed(retryInterval);

      final hasInternet = await _checkInternet();

      if (hasInternet) {
        logW('[ConnectivityInterceptor] Internet is back');
        _networkStatusRepository.setOnline(true);
        _internetWaitCompleter?.complete();
        _internetWaitCompleter = null;
        break;
      } else {
        logW('[ConnectivityInterceptor] Still offline');
        _networkStatusRepository.setOnline(false);
      }
    }
  }

  Future<bool> _checkInternet() async {
    final connectivityResults = await _networkStatusRepository.checkConnectivity();
    final hasAnyConnection = connectivityResults.any((result) => result != ConnectivityResult.none);

    if (!hasAnyConnection) {
      return false;
    }

    try {
      return await _checker.hasConnection.timeout(pingTimeout);
    } catch (_) {
      return false;
    }
  }
}
