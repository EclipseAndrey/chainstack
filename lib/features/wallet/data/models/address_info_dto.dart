import 'package:chainstack/features/wallet/data/models/chain_stats_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_info_dto.freezed.dart';
part 'address_info_dto.g.dart';

@freezed
abstract class AddressInfoDto with _$AddressInfoDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AddressInfoDto({
    required String address,
    required ChainStatsDto chainStats,
    ChainStatsDto? mempoolStats,
  }) = _AddressInfoDto;

  factory AddressInfoDto.fromJson(Map<String, dynamic> json) => _$AddressInfoDtoFromJson(json);
}
