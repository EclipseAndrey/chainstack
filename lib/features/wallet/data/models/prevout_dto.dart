// lib/features/wallet/data/models/prevout_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prevout_dto.freezed.dart';
part 'prevout_dto.g.dart';

@freezed
abstract class PrevoutDto with _$PrevoutDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PrevoutDto({
    String? scriptpubkey,
    String? scriptpubkeyAsm,
    String? scriptpubkeyType,
    String? scriptpubkeyAddress,
    int? value, // satoshis
  }) = _PrevoutDto;

  factory PrevoutDto.fromJson(Map<String, dynamic> json) => _$PrevoutDtoFromJson(json);
}
