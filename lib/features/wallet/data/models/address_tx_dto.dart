// lib/features/wallet/data/models/address_tx_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'status_dto.dart';
import 'vin_dto.dart';
import 'vout_dto.dart';

part 'address_tx_dto.freezed.dart';
part 'address_tx_dto.g.dart';

@freezed
abstract class AddressTxDto with _$AddressTxDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AddressTxDto({
    required String txid,
    required int version,
    int? size,
    int? weight,
    int? locktime,
    StatusDto? status,
    List<VinDto>? vin,
    List<VoutDto>? vout,
  }) = _AddressTxDto;

  factory AddressTxDto.fromJson(Map<String, dynamic> json) => _$AddressTxDtoFromJson(json);
}
