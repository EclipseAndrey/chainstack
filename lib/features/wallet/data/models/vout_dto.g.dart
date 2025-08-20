// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vout_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VoutDto _$VoutDtoFromJson(Map<String, dynamic> json) => _VoutDto(
  value: (json['value'] as num).toInt(),
  scriptpubkey: json['scriptpubkey'] as String?,
  scriptpubkeyAsm: json['scriptpubkey_asm'] as String?,
  scriptpubkeyType: json['scriptpubkey_type'] as String?,
  scriptpubkeyAddress: json['scriptpubkey_address'] as String?,
);

Map<String, dynamic> _$VoutDtoToJson(_VoutDto instance) => <String, dynamic>{
  'value': instance.value,
  'scriptpubkey': instance.scriptpubkey,
  'scriptpubkey_asm': instance.scriptpubkeyAsm,
  'scriptpubkey_type': instance.scriptpubkeyType,
  'scriptpubkey_address': instance.scriptpubkeyAddress,
};
