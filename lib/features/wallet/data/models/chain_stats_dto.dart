import 'package:freezed_annotation/freezed_annotation.dart';

part 'chain_stats_dto.freezed.dart';
part 'chain_stats_dto.g.dart';

@freezed
abstract class ChainStatsDto with _$ChainStatsDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChainStatsDto({
    /// Сумма входящих (funded) и исходящих (spent) в сатоши
    required int fundedTxoSum,
    required int spentTxoSum,

    /// Кол-во UTXO/tx (не используем)
    int? fundedTxoCount,
    int? spentTxoCount,
    int? txCount,
  }) = _ChainStatsDto;

  factory ChainStatsDto.fromJson(Map<String, dynamic> json) => _$ChainStatsDtoFromJson(json);
}
