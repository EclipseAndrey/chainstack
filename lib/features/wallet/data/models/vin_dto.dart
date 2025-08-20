// lib/features/wallet/data/models/vin_dto.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'prevout_dto.dart';

part 'vin_dto.freezed.dart';
part 'vin_dto.g.dart';

@freezed
abstract class VinDto with _$VinDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory VinDto({PrevoutDto? prevout}) = _VinDto;

  factory VinDto.fromJson(Map<String, dynamic> json) => _$VinDtoFromJson(json);
}
