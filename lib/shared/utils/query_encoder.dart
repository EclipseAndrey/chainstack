import 'dart:convert';

class Query {
  static String encode(Object? value) {
    return base64UrlEncode(json.encode(value).codeUnits);
  }

  static T? decode<T>(String? value) {
    if (value == null) {
      return null;
    }
    return json.decode(String.fromCharCodes(base64.decode(value))) as T;
  }
}
