import 'package:dio/dio.dart';

class DataSourceException implements Exception {
  final String message;
  final int? statusCode;
  final DioException? dio;

  DataSourceException(this.message, {this.statusCode, this.dio});

  @override
  String toString() => 'DataSourceException($statusCode): $message';
}

Never rethrowAsDataSource(DioException e) {
  final code = e.response?.statusCode;
  final msg = e.message ?? 'Network error';
  throw DataSourceException(msg, statusCode: code, dio: e);
}
