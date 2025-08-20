import 'dart:io';

import 'package:chainstack/app/app.dart';
import 'package:chainstack/app/runner.config.dart';
import 'package:chainstack/core/http/proxy.dart';
import 'package:chainstack/core/x_logger/x_logger.dart';
import 'package:chainstack/core/x_logger/x_logger_bloc_observer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'env/environment_model.dart';

class AppRunner {
  static Future<void> run(AppEnvironment environment) async {
    if (const String.fromEnvironment('PROXY_URL').isNotEmpty) {
      debugPrint("!!! PROXY ENABLED ${const String.fromEnvironment('PROXY_URL')}");
      HttpOverrides.global = Proxy();
    }

    await _configureApp(environment);

    /// Add error logging
    PlatformDispatcher.instance.onError = (err, stack) {
      logE(err, stack);
      return true;
    };

    runApp(const App());
  }
}

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  ignoreUnregisteredTypes: [AppEnvironment],
)
Future<void> _configureApp(AppEnvironment appEnvironment) async {
  /// Биндинг
  WidgetsFlutterBinding.ensureInitialized();

  /// Переменные окружения
  GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);

  /// GetIt
  final getIt = $initGetIt(GetIt.instance);
  if (kDebugMode) {
    Bloc.observer = getIt.get<XLoggerBlocObserver>();
  }
}
