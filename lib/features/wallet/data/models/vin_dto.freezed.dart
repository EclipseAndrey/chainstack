// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VinDto {

 PrevoutDto? get prevout;
/// Create a copy of VinDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VinDtoCopyWith<VinDto> get copyWith => _$VinDtoCopyWithImpl<VinDto>(this as VinDto, _$identity);

  /// Serializes this VinDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VinDto&&(identical(other.prevout, prevout) || other.prevout == prevout));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prevout);

@override
String toString() {
  return 'VinDto(prevout: $prevout)';
}


}

/// @nodoc
abstract mixin class $VinDtoCopyWith<$Res>  {
  factory $VinDtoCopyWith(VinDto value, $Res Function(VinDto) _then) = _$VinDtoCopyWithImpl;
@useResult
$Res call({
 PrevoutDto? prevout
});


$PrevoutDtoCopyWith<$Res>? get prevout;

}
/// @nodoc
class _$VinDtoCopyWithImpl<$Res>
    implements $VinDtoCopyWith<$Res> {
  _$VinDtoCopyWithImpl(this._self, this._then);

  final VinDto _self;
  final $Res Function(VinDto) _then;

/// Create a copy of VinDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prevout = freezed,}) {
  return _then(_self.copyWith(
prevout: freezed == prevout ? _self.prevout : prevout // ignore: cast_nullable_to_non_nullable
as PrevoutDto?,
  ));
}
/// Create a copy of VinDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrevoutDtoCopyWith<$Res>? get prevout {
    if (_self.prevout == null) {
    return null;
  }

  return $PrevoutDtoCopyWith<$Res>(_self.prevout!, (value) {
    return _then(_self.copyWith(prevout: value));
  });
}
}


/// Adds pattern-matching-related methods to [VinDto].
extension VinDtoPatterns on VinDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VinDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VinDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VinDto value)  $default,){
final _that = this;
switch (_that) {
case _VinDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VinDto value)?  $default,){
final _that = this;
switch (_that) {
case _VinDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PrevoutDto? prevout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VinDto() when $default != null:
return $default(_that.prevout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PrevoutDto? prevout)  $default,) {final _that = this;
switch (_that) {
case _VinDto():
return $default(_that.prevout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PrevoutDto? prevout)?  $default,) {final _that = this;
switch (_that) {
case _VinDto() when $default != null:
return $default(_that.prevout);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _VinDto implements VinDto {
  const _VinDto({this.prevout});
  factory _VinDto.fromJson(Map<String, dynamic> json) => _$VinDtoFromJson(json);

@override final  PrevoutDto? prevout;

/// Create a copy of VinDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VinDtoCopyWith<_VinDto> get copyWith => __$VinDtoCopyWithImpl<_VinDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VinDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VinDto&&(identical(other.prevout, prevout) || other.prevout == prevout));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,prevout);

@override
String toString() {
  return 'VinDto(prevout: $prevout)';
}


}

/// @nodoc
abstract mixin class _$VinDtoCopyWith<$Res> implements $VinDtoCopyWith<$Res> {
  factory _$VinDtoCopyWith(_VinDto value, $Res Function(_VinDto) _then) = __$VinDtoCopyWithImpl;
@override @useResult
$Res call({
 PrevoutDto? prevout
});


@override $PrevoutDtoCopyWith<$Res>? get prevout;

}
/// @nodoc
class __$VinDtoCopyWithImpl<$Res>
    implements _$VinDtoCopyWith<$Res> {
  __$VinDtoCopyWithImpl(this._self, this._then);

  final _VinDto _self;
  final $Res Function(_VinDto) _then;

/// Create a copy of VinDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prevout = freezed,}) {
  return _then(_VinDto(
prevout: freezed == prevout ? _self.prevout : prevout // ignore: cast_nullable_to_non_nullable
as PrevoutDto?,
  ));
}

/// Create a copy of VinDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrevoutDtoCopyWith<$Res>? get prevout {
    if (_self.prevout == null) {
    return null;
  }

  return $PrevoutDtoCopyWith<$Res>(_self.prevout!, (value) {
    return _then(_self.copyWith(prevout: value));
  });
}
}

// dart format on
