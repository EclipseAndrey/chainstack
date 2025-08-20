// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prevout_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrevoutDto {

 String? get scriptpubkey; String? get scriptpubkeyAsm; String? get scriptpubkeyType; String? get scriptpubkeyAddress; int? get value;
/// Create a copy of PrevoutDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrevoutDtoCopyWith<PrevoutDto> get copyWith => _$PrevoutDtoCopyWithImpl<PrevoutDto>(this as PrevoutDto, _$identity);

  /// Serializes this PrevoutDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrevoutDto&&(identical(other.scriptpubkey, scriptpubkey) || other.scriptpubkey == scriptpubkey)&&(identical(other.scriptpubkeyAsm, scriptpubkeyAsm) || other.scriptpubkeyAsm == scriptpubkeyAsm)&&(identical(other.scriptpubkeyType, scriptpubkeyType) || other.scriptpubkeyType == scriptpubkeyType)&&(identical(other.scriptpubkeyAddress, scriptpubkeyAddress) || other.scriptpubkeyAddress == scriptpubkeyAddress)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scriptpubkey,scriptpubkeyAsm,scriptpubkeyType,scriptpubkeyAddress,value);

@override
String toString() {
  return 'PrevoutDto(scriptpubkey: $scriptpubkey, scriptpubkeyAsm: $scriptpubkeyAsm, scriptpubkeyType: $scriptpubkeyType, scriptpubkeyAddress: $scriptpubkeyAddress, value: $value)';
}


}

/// @nodoc
abstract mixin class $PrevoutDtoCopyWith<$Res>  {
  factory $PrevoutDtoCopyWith(PrevoutDto value, $Res Function(PrevoutDto) _then) = _$PrevoutDtoCopyWithImpl;
@useResult
$Res call({
 String? scriptpubkey, String? scriptpubkeyAsm, String? scriptpubkeyType, String? scriptpubkeyAddress, int? value
});




}
/// @nodoc
class _$PrevoutDtoCopyWithImpl<$Res>
    implements $PrevoutDtoCopyWith<$Res> {
  _$PrevoutDtoCopyWithImpl(this._self, this._then);

  final PrevoutDto _self;
  final $Res Function(PrevoutDto) _then;

/// Create a copy of PrevoutDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scriptpubkey = freezed,Object? scriptpubkeyAsm = freezed,Object? scriptpubkeyType = freezed,Object? scriptpubkeyAddress = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
scriptpubkey: freezed == scriptpubkey ? _self.scriptpubkey : scriptpubkey // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyAsm: freezed == scriptpubkeyAsm ? _self.scriptpubkeyAsm : scriptpubkeyAsm // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyType: freezed == scriptpubkeyType ? _self.scriptpubkeyType : scriptpubkeyType // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyAddress: freezed == scriptpubkeyAddress ? _self.scriptpubkeyAddress : scriptpubkeyAddress // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PrevoutDto].
extension PrevoutDtoPatterns on PrevoutDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrevoutDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrevoutDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrevoutDto value)  $default,){
final _that = this;
switch (_that) {
case _PrevoutDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrevoutDto value)?  $default,){
final _that = this;
switch (_that) {
case _PrevoutDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? scriptpubkey,  String? scriptpubkeyAsm,  String? scriptpubkeyType,  String? scriptpubkeyAddress,  int? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrevoutDto() when $default != null:
return $default(_that.scriptpubkey,_that.scriptpubkeyAsm,_that.scriptpubkeyType,_that.scriptpubkeyAddress,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? scriptpubkey,  String? scriptpubkeyAsm,  String? scriptpubkeyType,  String? scriptpubkeyAddress,  int? value)  $default,) {final _that = this;
switch (_that) {
case _PrevoutDto():
return $default(_that.scriptpubkey,_that.scriptpubkeyAsm,_that.scriptpubkeyType,_that.scriptpubkeyAddress,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? scriptpubkey,  String? scriptpubkeyAsm,  String? scriptpubkeyType,  String? scriptpubkeyAddress,  int? value)?  $default,) {final _that = this;
switch (_that) {
case _PrevoutDto() when $default != null:
return $default(_that.scriptpubkey,_that.scriptpubkeyAsm,_that.scriptpubkeyType,_that.scriptpubkeyAddress,_that.value);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PrevoutDto implements PrevoutDto {
  const _PrevoutDto({this.scriptpubkey, this.scriptpubkeyAsm, this.scriptpubkeyType, this.scriptpubkeyAddress, this.value});
  factory _PrevoutDto.fromJson(Map<String, dynamic> json) => _$PrevoutDtoFromJson(json);

@override final  String? scriptpubkey;
@override final  String? scriptpubkeyAsm;
@override final  String? scriptpubkeyType;
@override final  String? scriptpubkeyAddress;
@override final  int? value;

/// Create a copy of PrevoutDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrevoutDtoCopyWith<_PrevoutDto> get copyWith => __$PrevoutDtoCopyWithImpl<_PrevoutDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrevoutDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrevoutDto&&(identical(other.scriptpubkey, scriptpubkey) || other.scriptpubkey == scriptpubkey)&&(identical(other.scriptpubkeyAsm, scriptpubkeyAsm) || other.scriptpubkeyAsm == scriptpubkeyAsm)&&(identical(other.scriptpubkeyType, scriptpubkeyType) || other.scriptpubkeyType == scriptpubkeyType)&&(identical(other.scriptpubkeyAddress, scriptpubkeyAddress) || other.scriptpubkeyAddress == scriptpubkeyAddress)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scriptpubkey,scriptpubkeyAsm,scriptpubkeyType,scriptpubkeyAddress,value);

@override
String toString() {
  return 'PrevoutDto(scriptpubkey: $scriptpubkey, scriptpubkeyAsm: $scriptpubkeyAsm, scriptpubkeyType: $scriptpubkeyType, scriptpubkeyAddress: $scriptpubkeyAddress, value: $value)';
}


}

/// @nodoc
abstract mixin class _$PrevoutDtoCopyWith<$Res> implements $PrevoutDtoCopyWith<$Res> {
  factory _$PrevoutDtoCopyWith(_PrevoutDto value, $Res Function(_PrevoutDto) _then) = __$PrevoutDtoCopyWithImpl;
@override @useResult
$Res call({
 String? scriptpubkey, String? scriptpubkeyAsm, String? scriptpubkeyType, String? scriptpubkeyAddress, int? value
});




}
/// @nodoc
class __$PrevoutDtoCopyWithImpl<$Res>
    implements _$PrevoutDtoCopyWith<$Res> {
  __$PrevoutDtoCopyWithImpl(this._self, this._then);

  final _PrevoutDto _self;
  final $Res Function(_PrevoutDto) _then;

/// Create a copy of PrevoutDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scriptpubkey = freezed,Object? scriptpubkeyAsm = freezed,Object? scriptpubkeyType = freezed,Object? scriptpubkeyAddress = freezed,Object? value = freezed,}) {
  return _then(_PrevoutDto(
scriptpubkey: freezed == scriptpubkey ? _self.scriptpubkey : scriptpubkey // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyAsm: freezed == scriptpubkeyAsm ? _self.scriptpubkeyAsm : scriptpubkeyAsm // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyType: freezed == scriptpubkeyType ? _self.scriptpubkeyType : scriptpubkeyType // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyAddress: freezed == scriptpubkeyAddress ? _self.scriptpubkeyAddress : scriptpubkeyAddress // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
