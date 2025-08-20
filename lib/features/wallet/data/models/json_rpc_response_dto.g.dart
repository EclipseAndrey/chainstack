// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_rpc_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JsonRpcResponseDto _$JsonRpcResponseDtoFromJson(Map<String, dynamic> json) =>
    _JsonRpcResponseDto(
      jsonrpc: json['jsonrpc'] as String?,
      result: json['result'],
      error: json['error'] == null
          ? null
          : JsonRpcErrorDto.fromJson(json['error'] as Map<String, dynamic>),
      id: json['id'],
    );

Map<String, dynamic> _$JsonRpcResponseDtoToJson(_JsonRpcResponseDto instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'result': instance.result,
      'error': instance.error,
      'id': instance.id,
    };
