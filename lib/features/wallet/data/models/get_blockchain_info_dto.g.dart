// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_blockchain_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBlockchainInfoDto _$GetBlockchainInfoDtoFromJson(
  Map<String, dynamic> json,
) => _GetBlockchainInfoDto(
  chain: json['chain'] as String,
  blocks: (json['blocks'] as num).toInt(),
  headers: (json['headers'] as num).toInt(),
  verificationprogress: (json['verificationprogress'] as num?)?.toDouble(),
  initialblockdownload: json['initialblockdownload'] as bool?,
  sizeOnDisk: (json['size_on_disk'] as num?)?.toInt(),
  pruned: json['pruned'] as bool?,
);

Map<String, dynamic> _$GetBlockchainInfoDtoToJson(
  _GetBlockchainInfoDto instance,
) => <String, dynamic>{
  'chain': instance.chain,
  'blocks': instance.blocks,
  'headers': instance.headers,
  'verificationprogress': instance.verificationprogress,
  'initialblockdownload': instance.initialblockdownload,
  'size_on_disk': instance.sizeOnDisk,
  'pruned': instance.pruned,
};
