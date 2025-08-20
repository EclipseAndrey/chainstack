// lib/features/wallet/data/models/json_rpc_error_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'json_rpc_error_dto.freezed.dart';
part 'json_rpc_error_dto.g.dart';

@freezed
abstract class JsonRpcErrorDto with _$JsonRpcErrorDto {
  const factory JsonRpcErrorDto({int? code, String? message, dynamic data}) = _JsonRpcErrorDto;

  factory JsonRpcErrorDto.fromJson(Map<String, dynamic> json) => _$JsonRpcErrorDtoFromJson(json);
}
