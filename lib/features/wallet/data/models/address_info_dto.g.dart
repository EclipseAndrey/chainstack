// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressInfoDto _$AddressInfoDtoFromJson(Map<String, dynamic> json) =>
    _AddressInfoDto(
      address: json['address'] as String,
      chainStats: ChainStatsDto.fromJson(
        json['chain_stats'] as Map<String, dynamic>,
      ),
      mempoolStats: json['mempool_stats'] == null
          ? null
          : ChainStatsDto.fromJson(
              json['mempool_stats'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AddressInfoDtoToJson(_AddressInfoDto instance) =>
    <String, dynamic>{
      'address': instance.address,
      'chain_stats': instance.chainStats,
      'mempool_stats': instance.mempoolStats,
    };
