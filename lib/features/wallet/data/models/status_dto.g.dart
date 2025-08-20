// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusDto _$StatusDtoFromJson(Map<String, dynamic> json) => _StatusDto(
  confirmed: json['confirmed'] as bool,
  blockHeight: (json['block_height'] as num?)?.toInt(),
  blockHash: json['block_hash'] as String?,
  blockTime: (json['block_time'] as num?)?.toInt(),
  confirmations: (json['confirmations'] as num?)?.toInt(),
);

Map<String, dynamic> _$StatusDtoToJson(_StatusDto instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      'block_height': instance.blockHeight,
      'block_hash': instance.blockHash,
      'block_time': instance.blockTime,
      'confirmations': instance.confirmations,
    };
