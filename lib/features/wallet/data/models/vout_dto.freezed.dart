// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vout_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VoutDto {

 int get value;// satoshis
 String? get scriptpubkey; String? get scriptpubkeyAsm; String? get scriptpubkeyType; String? get scriptpubkeyAddress;
/// Create a copy of VoutDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoutDtoCopyWith<VoutDto> get copyWith => _$VoutDtoCopyWithImpl<VoutDto>(this as VoutDto, _$identity);

  /// Serializes this VoutDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoutDto&&(identical(other.value, value) || other.value == value)&&(identical(other.scriptpubkey, scriptpubkey) || other.scriptpubkey == scriptpubkey)&&(identical(other.scriptpubkeyAsm, scriptpubkeyAsm) || other.scriptpubkeyAsm == scriptpubkeyAsm)&&(identical(other.scriptpubkeyType, scriptpubkeyType) || other.scriptpubkeyType == scriptpubkeyType)&&(identical(other.scriptpubkeyAddress, scriptpubkeyAddress) || other.scriptpubkeyAddress == scriptpubkeyAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,scriptpubkey,scriptpubkeyAsm,scriptpubkeyType,scriptpubkeyAddress);

@override
String toString() {
  return 'VoutDto(value: $value, scriptpubkey: $scriptpubkey, scriptpubkeyAsm: $scriptpubkeyAsm, scriptpubkeyType: $scriptpubkeyType, scriptpubkeyAddress: $scriptpubkeyAddress)';
}


}

/// @nodoc
abstract mixin class $VoutDtoCopyWith<$Res>  {
  factory $VoutDtoCopyWith(VoutDto value, $Res Function(VoutDto) _then) = _$VoutDtoCopyWithImpl;
@useResult
$Res call({
 int value, String? scriptpubkey, String? scriptpubkeyAsm, String? scriptpubkeyType, String? scriptpubkeyAddress
});




}
/// @nodoc
class _$VoutDtoCopyWithImpl<$Res>
    implements $VoutDtoCopyWith<$Res> {
  _$VoutDtoCopyWithImpl(this._self, this._then);

  final VoutDto _self;
  final $Res Function(VoutDto) _then;

/// Create a copy of VoutDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,Object? scriptpubkey = freezed,Object? scriptpubkeyAsm = freezed,Object? scriptpubkeyType = freezed,Object? scriptpubkeyAddress = freezed,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,scriptpubkey: freezed == scriptpubkey ? _self.scriptpubkey : scriptpubkey // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyAsm: freezed == scriptpubkeyAsm ? _self.scriptpubkeyAsm : scriptpubkeyAsm // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyType: freezed == scriptpubkeyType ? _self.scriptpubkeyType : scriptpubkeyType // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyAddress: freezed == scriptpubkeyAddress ? _self.scriptpubkeyAddress : scriptpubkeyAddress // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VoutDto].
extension VoutDtoPatterns on VoutDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VoutDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VoutDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VoutDto value)  $default,){
final _that = this;
switch (_that) {
case _VoutDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VoutDto value)?  $default,){
final _that = this;
switch (_that) {
case _VoutDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int value,  String? scriptpubkey,  String? scriptpubkeyAsm,  String? scriptpubkeyType,  String? scriptpubkeyAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoutDto() when $default != null:
return $default(_that.value,_that.scriptpubkey,_that.scriptpubkeyAsm,_that.scriptpubkeyType,_that.scriptpubkeyAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int value,  String? scriptpubkey,  String? scriptpubkeyAsm,  String? scriptpubkeyType,  String? scriptpubkeyAddress)  $default,) {final _that = this;
switch (_that) {
case _VoutDto():
return $default(_that.value,_that.scriptpubkey,_that.scriptpubkeyAsm,_that.scriptpubkeyType,_that.scriptpubkeyAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int value,  String? scriptpubkey,  String? scriptpubkeyAsm,  String? scriptpubkeyType,  String? scriptpubkeyAddress)?  $default,) {final _that = this;
switch (_that) {
case _VoutDto() when $default != null:
return $default(_that.value,_that.scriptpubkey,_that.scriptpubkeyAsm,_that.scriptpubkeyType,_that.scriptpubkeyAddress);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _VoutDto implements VoutDto {
  const _VoutDto({required this.value, this.scriptpubkey, this.scriptpubkeyAsm, this.scriptpubkeyType, this.scriptpubkeyAddress});
  factory _VoutDto.fromJson(Map<String, dynamic> json) => _$VoutDtoFromJson(json);

@override final  int value;
// satoshis
@override final  String? scriptpubkey;
@override final  String? scriptpubkeyAsm;
@override final  String? scriptpubkeyType;
@override final  String? scriptpubkeyAddress;

/// Create a copy of VoutDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoutDtoCopyWith<_VoutDto> get copyWith => __$VoutDtoCopyWithImpl<_VoutDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VoutDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoutDto&&(identical(other.value, value) || other.value == value)&&(identical(other.scriptpubkey, scriptpubkey) || other.scriptpubkey == scriptpubkey)&&(identical(other.scriptpubkeyAsm, scriptpubkeyAsm) || other.scriptpubkeyAsm == scriptpubkeyAsm)&&(identical(other.scriptpubkeyType, scriptpubkeyType) || other.scriptpubkeyType == scriptpubkeyType)&&(identical(other.scriptpubkeyAddress, scriptpubkeyAddress) || other.scriptpubkeyAddress == scriptpubkeyAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,scriptpubkey,scriptpubkeyAsm,scriptpubkeyType,scriptpubkeyAddress);

@override
String toString() {
  return 'VoutDto(value: $value, scriptpubkey: $scriptpubkey, scriptpubkeyAsm: $scriptpubkeyAsm, scriptpubkeyType: $scriptpubkeyType, scriptpubkeyAddress: $scriptpubkeyAddress)';
}


}

/// @nodoc
abstract mixin class _$VoutDtoCopyWith<$Res> implements $VoutDtoCopyWith<$Res> {
  factory _$VoutDtoCopyWith(_VoutDto value, $Res Function(_VoutDto) _then) = __$VoutDtoCopyWithImpl;
@override @useResult
$Res call({
 int value, String? scriptpubkey, String? scriptpubkeyAsm, String? scriptpubkeyType, String? scriptpubkeyAddress
});




}
/// @nodoc
class __$VoutDtoCopyWithImpl<$Res>
    implements _$VoutDtoCopyWith<$Res> {
  __$VoutDtoCopyWithImpl(this._self, this._then);

  final _VoutDto _self;
  final $Res Function(_VoutDto) _then;

/// Create a copy of VoutDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? scriptpubkey = freezed,Object? scriptpubkeyAsm = freezed,Object? scriptpubkeyType = freezed,Object? scriptpubkeyAddress = freezed,}) {
  return _then(_VoutDto(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,scriptpubkey: freezed == scriptpubkey ? _self.scriptpubkey : scriptpubkey // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyAsm: freezed == scriptpubkeyAsm ? _self.scriptpubkeyAsm : scriptpubkeyAsm // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyType: freezed == scriptpubkeyType ? _self.scriptpubkeyType : scriptpubkeyType // ignore: cast_nullable_to_non_nullable
as String?,scriptpubkeyAddress: freezed == scriptpubkeyAddress ? _self.scriptpubkeyAddress : scriptpubkeyAddress // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
