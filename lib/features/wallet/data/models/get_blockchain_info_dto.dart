// lib/features/wallet/data/models/get_blockchain_info_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_blockchain_info_dto.freezed.dart';
part 'get_blockchain_info_dto.g.dart';

@freezed
abstract class GetBlockchainInfoDto with _$GetBlockchainInfoDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetBlockchainInfoDto({
    required String chain, // main/test/regtest/signet
    required int blocks,
    required int headers,
    double? verificationprogress,
    bool? initialblockdownload,
    int? sizeOnDisk,
    bool? pruned,
  }) = _GetBlockchainInfoDto;

  factory GetBlockchainInfoDto.fromJson(Map<String, dynamic> json) => _$GetBlockchainInfoDtoFromJson(json);
}
