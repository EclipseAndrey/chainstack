// lib/features/wallet/data/models/status_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_dto.freezed.dart';
part 'status_dto.g.dart';

@freezed
abstract class StatusDto with _$StatusDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StatusDto({
    required bool confirmed,
    int? blockHeight,
    String? blockHash,

    /// Unix seconds
    int? blockTime,

    /// Некоторые индексаторы могут возвращать это поле
    int? confirmations,
  }) = _StatusDto;

  factory StatusDto.fromJson(Map<String, dynamic> json) => _$StatusDtoFromJson(json);
}
