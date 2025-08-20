import 'dart:async';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'x_error.freezed.dart';

@freezed
abstract class XError with _$XError {
  const factory XError.api({required int? statusCode, required String? message, Map<String, dynamic>? data}) =
      XApiError;

  const factory XError.internal(String message) = XInternalError;

  const factory XError.network(String message) = XNetworkError;

  const factory XError.unexpected(String message) = XUnexpectedError;

  const factory XError.unauthorized([String? message]) = XUnauthorized;
  const factory XError.validation({required Map<String, dynamic> errors, String? message}) = XValidationError;
  const factory XError.conflict([String? message]) = XConflictError;
  const factory XError.notFound([String? message]) = XNotFoundError;
  const factory XError.forbidden([String? message]) = XForbiddenError;

  /// Создание ошибки на основе исключения
  factory XError.fromException(Object error, StackTrace st) {
    if (error is DioException) {
      final response = error.response;
      final status = response?.statusCode;

      switch (status) {
        case 401:
          return XError.unauthorized(response?.data?['error']);
        case 403:
          return XError.forbidden(response?.data?['error']);
        case 404:
          return XError.notFound(response?.data?['error']);
        case 409:
          return XError.conflict(response?.data?['error']);
        case 422:
          return XError.validation(errors: response?.data?['errors'] ?? const {}, message: response?.data?['message']);
        default:
          return XError.api(
            statusCode: status,
            message: response?.data?['error'] ?? error.message,
            data: response?.data is Map<String, dynamic> ? response?.data : null,
          );
      }
    }

    if (error is TimeoutException) {
      return const XError.network("Request timed out");
    }

    return XError.unexpected(error.toString());
  }
}
