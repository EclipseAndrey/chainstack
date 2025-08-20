import 'package:flutter/cupertino.dart';

import 'either.dart';
import 'x_error.dart';

typedef ApiResponse<T> = Either<XError, T>;

class ApiHandler {
  static Future<ApiResponse<T>> handle<T>(
    Future<T> Function(Map<String, dynamic> body) action,
    Map<String, dynamic> body,
  ) async {
    try {
      final result = await action(body);
      return Either.right(result);
    } catch (e, st) {
      debugPrint(e.toString());
      debugPrint(st.toString());

      return Either.left(XError.fromException(e, st));
    }
  }

  static Future<ApiResponse<T>> handlePathParams<T>(
    Future<T> Function(String, Map<String, dynamic> body) action,
    String pathParam,
    Map<String, dynamic> body,
  ) async {
    try {
      final result = await action(pathParam, body);
      return Either.right(result);
    } catch (e, st) {
      debugPrint(e.toString());
      debugPrint(st.toString());

      return Either.left(XError.fromException(e, st));
    }
  }

  static Future<ApiResponse<T>> handleNoBody<T>(
    Future<T> Function() action,
  ) async {
    try {
      final result = await action();
      return Either.right(result);
    } catch (e, st) {
      debugPrint(e.toString());
      debugPrint(st.toString());

      return Either.left(XError.fromException(e, st));
    }
  }

  static Future<ApiResponse<T>> handleNoBodyPathParams<T>(
    Future<T> Function(String pathParam) action,
    String pathParam,
  ) async {
    try {
      final result = await action(pathParam);
      return Either.right(result);
    } catch (e, st) {
      debugPrint(e.toString());
      debugPrint(st.toString());

      return Either.left(XError.fromException(e, st));
    }
  }
}
