// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_tx_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressTxDto _$AddressTxDtoFromJson(Map<String, dynamic> json) =>
    _AddressTxDto(
      txid: json['txid'] as String,
      version: (json['version'] as num).toInt(),
      size: (json['size'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      locktime: (json['locktime'] as num?)?.toInt(),
      status: json['status'] == null
          ? null
          : StatusDto.fromJson(json['status'] as Map<String, dynamic>),
      vin: (json['vin'] as List<dynamic>?)
          ?.map((e) => VinDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      vout: (json['vout'] as List<dynamic>?)
          ?.map((e) => VoutDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddressTxDtoToJson(_AddressTxDto instance) =>
    <String, dynamic>{
      'txid': instance.txid,
      'version': instance.version,
      'size': instance.size,
      'weight': instance.weight,
      'locktime': instance.locktime,
      'status': instance.status?.toJson(),
      'vin': instance.vin?.map((e) => e.toJson()).toList(),
      'vout': instance.vout?.map((e) => e.toJson()).toList(),
    };
