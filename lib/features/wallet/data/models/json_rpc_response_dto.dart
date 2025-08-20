// lib/features/wallet/data/models/json_rpc_response_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'json_rpc_error_dto.dart';

part 'json_rpc_response_dto.freezed.dart';
part 'json_rpc_response_dto.g.dart';

@freezed
abstract class JsonRpcResponseDto with _$JsonRpcResponseDto {
  const factory JsonRpcResponseDto({String? jsonrpc, dynamic result, JsonRpcErrorDto? error, dynamic id}) =
      _JsonRpcResponseDto;

  factory JsonRpcResponseDto.fromJson(Map<String, dynamic> json) => _$JsonRpcResponseDtoFromJson(json);
}
