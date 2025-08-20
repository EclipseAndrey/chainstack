// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prevout_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrevoutDto _$PrevoutDtoFromJson(Map<String, dynamic> json) => _PrevoutDto(
  scriptpubkey: json['scriptpubkey'] as String?,
  scriptpubkeyAsm: json['scriptpubkey_asm'] as String?,
  scriptpubkeyType: json['scriptpubkey_type'] as String?,
  scriptpubkeyAddress: json['scriptpubkey_address'] as String?,
  value: (json['value'] as num?)?.toInt(),
);

Map<String, dynamic> _$PrevoutDtoToJson(_PrevoutDto instance) =>
    <String, dynamic>{
      'scriptpubkey': instance.scriptpubkey,
      'scriptpubkey_asm': instance.scriptpubkeyAsm,
      'scriptpubkey_type': instance.scriptpubkeyType,
      'scriptpubkey_address': instance.scriptpubkeyAddress,
      'value': instance.value,
    };
