// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VinDto _$VinDtoFromJson(Map<String, dynamic> json) => _VinDto(
  prevout: json['prevout'] == null
      ? null
      : PrevoutDto.fromJson(json['prevout'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VinDtoToJson(_VinDto instance) => <String, dynamic>{
  'prevout': instance.prevout?.toJson(),
};
