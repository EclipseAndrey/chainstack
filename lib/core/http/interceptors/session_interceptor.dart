import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

/// Добавляет уникальный X-Session-Id в каждый запрос.
class SessionInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['X-Session-Id'] = const Uuid().v4();
    return handler.next(options);
  }
}
