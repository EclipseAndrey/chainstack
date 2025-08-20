import 'package:chainstack/app/env/environment_model.dart';
import 'package:dio/dio.dart';

/// Для запросов к Chainstack RPC добавляет Basic Auth и JSON content-type.
class ChainstackAuthInterceptor extends InterceptorsWrapper {
  final AppEnvironment env;
  ChainstackAuthInterceptor(this.env);

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final rpc = env.chainstackRpcUrl;
    final uri = options.uri;
    final sameEndpoint =
        uri.scheme == rpc.scheme &&
        uri.host == rpc.host &&
        (rpc.hasPort ? uri.port == rpc.port : true) &&
        uri.path == rpc.path;

    if (sameEndpoint) {
      final auth = env.chainstackBasicAuthHeader;
      if (auth != null && auth.isNotEmpty) {
        options.headers['Authorization'] = auth;
      }
      options.headers['Content-Type'] = 'application/json';
    }
    return handler.next(options);
  }
}
