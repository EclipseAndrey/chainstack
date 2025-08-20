// lib/features/wallet/data/models/vout_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vout_dto.freezed.dart';
part 'vout_dto.g.dart';

@freezed
abstract class VoutDto with _$VoutDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory VoutDto({
    required int value, // satoshis
    String? scriptpubkey,
    String? scriptpubkeyAsm,
    String? scriptpubkeyType,
    String? scriptpubkeyAddress,
  }) = _VoutDto;

  factory VoutDto.fromJson(Map<String, dynamic> json) => _$VoutDtoFromJson(json);
}
