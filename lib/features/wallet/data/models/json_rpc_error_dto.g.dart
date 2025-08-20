// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_rpc_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JsonRpcErrorDto _$JsonRpcErrorDtoFromJson(Map<String, dynamic> json) =>
    _JsonRpcErrorDto(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$JsonRpcErrorDtoToJson(_JsonRpcErrorDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
