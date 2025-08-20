import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

void logI(Object? obj) => GetIt.I.get<IXLogger>().i(obj);

void logE(Object? obj, [StackTrace? stackTrace]) => GetIt.I.get<IXLogger>().e(obj, stackTrace: stackTrace);

void logW(Object? obj) => GetIt.I.get<IXLogger>().w(obj);

void logD(Object? obj) => GetIt.I.get<IXLogger>().d(obj);

void logV(Object? obj) => GetIt.I.get<IXLogger>().v(obj);

abstract class IXLogger {
  Talker get talker;
  Interceptor getInterceptor();

  void i(Object? message, {Object? error, StackTrace? stackTrace});

  void e(Object? message, {Object? error, StackTrace? stackTrace});

  void w(Object? message, {Object? error, StackTrace? stackTrace});

  void d(Object? message, {Object? error, StackTrace? stackTrace});

  void v(Object? message, {Object? error, StackTrace? stackTrace});

  void setNavigatorKey(GlobalKey<NavigatorState> navigatorKey);
  void show();
}

class XLoggerFormatter implements LoggerFormatter {
  const XLoggerFormatter();

  static const _logName = 'moon';

  @override
  String fmt(LogDetails details, TalkerLoggerSettings settings) {
    final levelPrefix = switch (details.level) {
      LogLevel.info => 'ℹ️',
      LogLevel.debug => '❕',
      LogLevel.error => '❗️',
      LogLevel.critical => '🆘',
      LogLevel.verbose => '▶️',
      LogLevel.warning => '⚠️',
    };
    final msg = details.message?.toString() ?? '';
    final cleanedMsg = msg
        .replaceFirst(RegExp(r'\[.*?\] \| \d{2}:\d{2}:\d{2} \d+ms \| '), '')
        .split('\n')
        .join('\n'.padRight('[$_logName] $levelPrefix '.length));

    return '$levelPrefix $cleanedMsg';
  }
}

@Singleton(as: IXLogger)
class XLoggerCore implements IXLogger {
  static void _output(String formattedMsg) {
    if (kDebugMode) {
      log(formattedMsg, name: 'x_tools');
    }
  }

  @override
  Talker get talker => _talker;

  final _talker = Talker(
    settings: TalkerSettings(),
    logger: TalkerLogger(
      output: _output,
      settings: TalkerLoggerSettings(enableColors: false),
      formatter: const XLoggerFormatter(),
    ),
  );

  final _errorPen = AnsiPen()..red();
  final _debugPen = AnsiPen()..blue();
  final _infoPen = AnsiPen()..green();
  final _warningPen = AnsiPen()..yellow();

  GlobalKey<NavigatorState>? navigatorKey;

  XLoggerCore();

  @override
  Interceptor getInterceptor() {
    return TalkerDioLogger(
      talker: _talker,
      settings: const TalkerDioLoggerSettings(
        enabled: kDebugMode,
        printRequestHeaders: false,
        printResponseHeaders: false,
        printResponseData: false,
      ),
    );
  }

  @override
  void i(Object? message, {Object? error, StackTrace? stackTrace}) {
    _talker.log(_formatObject(message), pen: _infoPen, logLevel: LogLevel.info);
  }

  @override
  void e(Object? message, {Object? error, StackTrace? stackTrace}) {
    _talker.log(
      _formatObject(message),
      exception: error,
      stackTrace: stackTrace,
      logLevel: LogLevel.error,
      pen: _errorPen,
    );
  }

  @override
  void w(Object? message, {Object? error, StackTrace? stackTrace}) {
    _talker.log(
      _formatObject(message),
      exception: error,
      stackTrace: stackTrace,
      logLevel: LogLevel.warning,
      pen: _warningPen,
    );
  }

  @override
  void d(Object? message, {Object? error, StackTrace? stackTrace}) {
    _talker.log(_formatObject(message), exception: error, stackTrace: stackTrace, pen: _debugPen);
  }

  @override
  void v(Object? message, {Object? error, StackTrace? stackTrace}) {
    _talker.log(
      _formatObject(message),
      exception: error,
      stackTrace: stackTrace,
      logLevel: LogLevel.verbose,
      pen: _debugPen,
    );
  }

  @override
  void setNavigatorKey(GlobalKey<NavigatorState> navigatorKey) {
    this.navigatorKey = navigatorKey;
  }

  @override
  void show() {
    if (navigatorKey == null) {
      return;
    }
    navigatorKey!.currentState?.push(MaterialPageRoute(builder: (context) => TalkerScreen(talker: _talker)));
  }

  Object? _formatObject(Object? obj) {
    if (obj is Map) {
      return _mapToString(obj);
    }
    return obj;
  }

  String _mapToString(Map map) {
    final sb = StringBuffer();
    _mapToString2(map, sbOut: sb);
    return sb.toString();
  }

  void _mapToString2(Map map, {required StringBuffer sbOut, int indent = 1}) {
    final sb = StringBuffer();

    map.forEach((key, value) {
      sb.write('\t' * indent); // Добавляем табуляцию в зависимости от уровня вложенности
      if (value is Map) {
        sb.write('$key:'); // Если значение – это Map, выводим ключ и начинаем новую строку
        sbOut.write(sb.toString()); // Выводим текущий буфер
        sb.clear(); // Очищаем буфер перед рекурсией
        _mapToString2(
          value.cast<String, dynamic>(),
          indent: indent + 1,
          sbOut: sbOut,
        ); // Рекурсивно вызываем для вложенной Map с увеличенной табуляцией
      } else {
        sb.write('$key: $value'); // Выводим обычный ключ-значение
        sbOut.writeln(sb.toString()); // Выводим текущий буфер
        sb.clear(); // Очищаем буфер после вывода
      }
    });
  }
}
