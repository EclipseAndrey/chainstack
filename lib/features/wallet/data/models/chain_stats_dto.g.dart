// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chain_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChainStatsDto _$ChainStatsDtoFromJson(Map<String, dynamic> json) =>
    _ChainStatsDto(
      fundedTxoSum: (json['funded_txo_sum'] as num).toInt(),
      spentTxoSum: (json['spent_txo_sum'] as num).toInt(),
      fundedTxoCount: (json['funded_txo_count'] as num?)?.toInt(),
      spentTxoCount: (json['spent_txo_count'] as num?)?.toInt(),
      txCount: (json['tx_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChainStatsDtoToJson(_ChainStatsDto instance) =>
    <String, dynamic>{
      'funded_txo_sum': instance.fundedTxoSum,
      'spent_txo_sum': instance.spentTxoSum,
      'funded_txo_count': instance.fundedTxoCount,
      'spent_txo_count': instance.spentTxoCount,
      'tx_count': instance.txCount,
    };
