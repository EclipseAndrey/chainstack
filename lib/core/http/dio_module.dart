import 'package:chainstack/app/env/environment_model.dart';
import 'package:chainstack/core/http/interceptors/chainstack_auth_interceptor.dart';
import 'package:chainstack/core/http/interceptors/session_interceptor.dart';
import 'package:chainstack/core/infrastructure/internet_checker/domain/interceptor/connectivity_interceptor.dart';
import 'package:chainstack/core/infrastructure/internet_checker/domain/repositories/connectivity_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class DioKeys {
  static const base = 'baseDio'; // индексатор (Blockstream/Mempool/etc)
  static const rpc = 'rpcDio'; // Chainstack JSON-RPC
}

@module
abstract class DioModule {
  Dio _configure(Dio dio, AppEnvironment env) {
    dio.options = dio.options.copyWith(connectTimeout: env.connectTimeout, receiveTimeout: env.receiveTimeout);
    // Логи можно включить флагом окружения.
    if (env.enableNetworkLogging) {
      dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: false,
          responseBody: false,
          error: true,
        ),
      );
    }
    return dio;
  }

  /// Базовый клиент для индексатора адресов (баланс/история).
  @Named(DioKeys.base)
  @lazySingleton
  Dio dioBase(AppEnvironment env, IConnectivityRepository connectivityRepository) {
    final dio = _configure(Dio(), env);
    dio.options.baseUrl = env.indexerBase.toString();
    dio.interceptors.addAll([
      ConnectivityInterceptor(connectivityRepository: connectivityRepository),
      SessionInterceptor(),
    ]);
    return dio;
  }

  /// RPC клиент для Chainstack (Bitcoin Core JSON-RPC).
  @Named(DioKeys.rpc)
  @lazySingleton
  Dio dioRpc(AppEnvironment env, IConnectivityRepository connectivityRepository) {
    final dio = _configure(Dio(), env);
    dio.options.baseUrl = env.chainstackRpcUrl.toString();
    dio.interceptors.addAll([
      ConnectivityInterceptor(connectivityRepository: connectivityRepository),
      SessionInterceptor(),
      ChainstackAuthInterceptor(env),
    ]);
    return dio;
  }
}
