// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StatusDto {

 bool get confirmed; int? get blockHeight; String? get blockHash;/// Unix seconds
 int? get blockTime;/// Некоторые индексаторы могут возвращать это поле
 int? get confirmations;
/// Create a copy of StatusDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusDtoCopyWith<StatusDto> get copyWith => _$StatusDtoCopyWithImpl<StatusDto>(this as StatusDto, _$identity);

  /// Serializes this StatusDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusDto&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.blockHeight, blockHeight) || other.blockHeight == blockHeight)&&(identical(other.blockHash, blockHash) || other.blockHash == blockHash)&&(identical(other.blockTime, blockTime) || other.blockTime == blockTime)&&(identical(other.confirmations, confirmations) || other.confirmations == confirmations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,confirmed,blockHeight,blockHash,blockTime,confirmations);

@override
String toString() {
  return 'StatusDto(confirmed: $confirmed, blockHeight: $blockHeight, blockHash: $blockHash, blockTime: $blockTime, confirmations: $confirmations)';
}


}

/// @nodoc
abstract mixin class $StatusDtoCopyWith<$Res>  {
  factory $StatusDtoCopyWith(StatusDto value, $Res Function(StatusDto) _then) = _$StatusDtoCopyWithImpl;
@useResult
$Res call({
 bool confirmed, int? blockHeight, String? blockHash, int? blockTime, int? confirmations
});




}
/// @nodoc
class _$StatusDtoCopyWithImpl<$Res>
    implements $StatusDtoCopyWith<$Res> {
  _$StatusDtoCopyWithImpl(this._self, this._then);

  final StatusDto _self;
  final $Res Function(StatusDto) _then;

/// Create a copy of StatusDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? confirmed = null,Object? blockHeight = freezed,Object? blockHash = freezed,Object? blockTime = freezed,Object? confirmations = freezed,}) {
  return _then(_self.copyWith(
confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as bool,blockHeight: freezed == blockHeight ? _self.blockHeight : blockHeight // ignore: cast_nullable_to_non_nullable
as int?,blockHash: freezed == blockHash ? _self.blockHash : blockHash // ignore: cast_nullable_to_non_nullable
as String?,blockTime: freezed == blockTime ? _self.blockTime : blockTime // ignore: cast_nullable_to_non_nullable
as int?,confirmations: freezed == confirmations ? _self.confirmations : confirmations // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [StatusDto].
extension StatusDtoPatterns on StatusDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatusDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatusDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatusDto value)  $default,){
final _that = this;
switch (_that) {
case _StatusDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatusDto value)?  $default,){
final _that = this;
switch (_that) {
case _StatusDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool confirmed,  int? blockHeight,  String? blockHash,  int? blockTime,  int? confirmations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatusDto() when $default != null:
return $default(_that.confirmed,_that.blockHeight,_that.blockHash,_that.blockTime,_that.confirmations);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool confirmed,  int? blockHeight,  String? blockHash,  int? blockTime,  int? confirmations)  $default,) {final _that = this;
switch (_that) {
case _StatusDto():
return $default(_that.confirmed,_that.blockHeight,_that.blockHash,_that.blockTime,_that.confirmations);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool confirmed,  int? blockHeight,  String? blockHash,  int? blockTime,  int? confirmations)?  $default,) {final _that = this;
switch (_that) {
case _StatusDto() when $default != null:
return $default(_that.confirmed,_that.blockHeight,_that.blockHash,_that.blockTime,_that.confirmations);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StatusDto implements StatusDto {
  const _StatusDto({required this.confirmed, this.blockHeight, this.blockHash, this.blockTime, this.confirmations});
  factory _StatusDto.fromJson(Map<String, dynamic> json) => _$StatusDtoFromJson(json);

@override final  bool confirmed;
@override final  int? blockHeight;
@override final  String? blockHash;
/// Unix seconds
@override final  int? blockTime;
/// Некоторые индексаторы могут возвращать это поле
@override final  int? confirmations;

/// Create a copy of StatusDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusDtoCopyWith<_StatusDto> get copyWith => __$StatusDtoCopyWithImpl<_StatusDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatusDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatusDto&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.blockHeight, blockHeight) || other.blockHeight == blockHeight)&&(identical(other.blockHash, blockHash) || other.blockHash == blockHash)&&(identical(other.blockTime, blockTime) || other.blockTime == blockTime)&&(identical(other.confirmations, confirmations) || other.confirmations == confirmations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,confirmed,blockHeight,blockHash,blockTime,confirmations);

@override
String toString() {
  return 'StatusDto(confirmed: $confirmed, blockHeight: $blockHeight, blockHash: $blockHash, blockTime: $blockTime, confirmations: $confirmations)';
}


}

/// @nodoc
abstract mixin class _$StatusDtoCopyWith<$Res> implements $StatusDtoCopyWith<$Res> {
  factory _$StatusDtoCopyWith(_StatusDto value, $Res Function(_StatusDto) _then) = __$StatusDtoCopyWithImpl;
@override @useResult
$Res call({
 bool confirmed, int? blockHeight, String? blockHash, int? blockTime, int? confirmations
});




}
/// @nodoc
class __$StatusDtoCopyWithImpl<$Res>
    implements _$StatusDtoCopyWith<$Res> {
  __$StatusDtoCopyWithImpl(this._self, this._then);

  final _StatusDto _self;
  final $Res Function(_StatusDto) _then;

/// Create a copy of StatusDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? confirmed = null,Object? blockHeight = freezed,Object? blockHash = freezed,Object? blockTime = freezed,Object? confirmations = freezed,}) {
  return _then(_StatusDto(
confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as bool,blockHeight: freezed == blockHeight ? _self.blockHeight : blockHeight // ignore: cast_nullable_to_non_nullable
as int?,blockHash: freezed == blockHash ? _self.blockHash : blockHash // ignore: cast_nullable_to_non_nullable
as String?,blockTime: freezed == blockTime ? _self.blockTime : blockTime // ignore: cast_nullable_to_non_nullable
as int?,confirmations: freezed == confirmations ? _self.confirmations : confirmations // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
