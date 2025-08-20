import 'dart:io';

const proxyString =
    'PROXY ${const String.fromEnvironment('PROXY_URL')}:${const String.fromEnvironment('PROXY_PORT', defaultValue: '9090')}';

class Proxy extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final client =
        super.createHttpClient(context)
          ..findProxy = (uri) {
            return proxyString;
          }
          ..badCertificateCallback = (cert, host, port) {
            return true;
          };
    return client;
  }
}
