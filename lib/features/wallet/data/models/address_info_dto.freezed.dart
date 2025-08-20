// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressInfoDto {

 String get address; ChainStatsDto get chainStats; ChainStatsDto? get mempoolStats;
/// Create a copy of AddressInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressInfoDtoCopyWith<AddressInfoDto> get copyWith => _$AddressInfoDtoCopyWithImpl<AddressInfoDto>(this as AddressInfoDto, _$identity);

  /// Serializes this AddressInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressInfoDto&&(identical(other.address, address) || other.address == address)&&(identical(other.chainStats, chainStats) || other.chainStats == chainStats)&&(identical(other.mempoolStats, mempoolStats) || other.mempoolStats == mempoolStats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,chainStats,mempoolStats);

@override
String toString() {
  return 'AddressInfoDto(address: $address, chainStats: $chainStats, mempoolStats: $mempoolStats)';
}


}

/// @nodoc
abstract mixin class $AddressInfoDtoCopyWith<$Res>  {
  factory $AddressInfoDtoCopyWith(AddressInfoDto value, $Res Function(AddressInfoDto) _then) = _$AddressInfoDtoCopyWithImpl;
@useResult
$Res call({
 String address, ChainStatsDto chainStats, ChainStatsDto? mempoolStats
});


$ChainStatsDtoCopyWith<$Res> get chainStats;$ChainStatsDtoCopyWith<$Res>? get mempoolStats;

}
/// @nodoc
class _$AddressInfoDtoCopyWithImpl<$Res>
    implements $AddressInfoDtoCopyWith<$Res> {
  _$AddressInfoDtoCopyWithImpl(this._self, this._then);

  final AddressInfoDto _self;
  final $Res Function(AddressInfoDto) _then;

/// Create a copy of AddressInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? chainStats = null,Object? mempoolStats = freezed,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,chainStats: null == chainStats ? _self.chainStats : chainStats // ignore: cast_nullable_to_non_nullable
as ChainStatsDto,mempoolStats: freezed == mempoolStats ? _self.mempoolStats : mempoolStats // ignore: cast_nullable_to_non_nullable
as ChainStatsDto?,
  ));
}
/// Create a copy of AddressInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainStatsDtoCopyWith<$Res> get chainStats {
  
  return $ChainStatsDtoCopyWith<$Res>(_self.chainStats, (value) {
    return _then(_self.copyWith(chainStats: value));
  });
}/// Create a copy of AddressInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainStatsDtoCopyWith<$Res>? get mempoolStats {
    if (_self.mempoolStats == null) {
    return null;
  }

  return $ChainStatsDtoCopyWith<$Res>(_self.mempoolStats!, (value) {
    return _then(_self.copyWith(mempoolStats: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressInfoDto].
extension AddressInfoDtoPatterns on AddressInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _AddressInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddressInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  ChainStatsDto chainStats,  ChainStatsDto? mempoolStats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressInfoDto() when $default != null:
return $default(_that.address,_that.chainStats,_that.mempoolStats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  ChainStatsDto chainStats,  ChainStatsDto? mempoolStats)  $default,) {final _that = this;
switch (_that) {
case _AddressInfoDto():
return $default(_that.address,_that.chainStats,_that.mempoolStats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  ChainStatsDto chainStats,  ChainStatsDto? mempoolStats)?  $default,) {final _that = this;
switch (_that) {
case _AddressInfoDto() when $default != null:
return $default(_that.address,_that.chainStats,_that.mempoolStats);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AddressInfoDto implements AddressInfoDto {
  const _AddressInfoDto({required this.address, required this.chainStats, this.mempoolStats});
  factory _AddressInfoDto.fromJson(Map<String, dynamic> json) => _$AddressInfoDtoFromJson(json);

@override final  String address;
@override final  ChainStatsDto chainStats;
@override final  ChainStatsDto? mempoolStats;

/// Create a copy of AddressInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressInfoDtoCopyWith<_AddressInfoDto> get copyWith => __$AddressInfoDtoCopyWithImpl<_AddressInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressInfoDto&&(identical(other.address, address) || other.address == address)&&(identical(other.chainStats, chainStats) || other.chainStats == chainStats)&&(identical(other.mempoolStats, mempoolStats) || other.mempoolStats == mempoolStats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,chainStats,mempoolStats);

@override
String toString() {
  return 'AddressInfoDto(address: $address, chainStats: $chainStats, mempoolStats: $mempoolStats)';
}


}

/// @nodoc
abstract mixin class _$AddressInfoDtoCopyWith<$Res> implements $AddressInfoDtoCopyWith<$Res> {
  factory _$AddressInfoDtoCopyWith(_AddressInfoDto value, $Res Function(_AddressInfoDto) _then) = __$AddressInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 String address, ChainStatsDto chainStats, ChainStatsDto? mempoolStats
});


@override $ChainStatsDtoCopyWith<$Res> get chainStats;@override $ChainStatsDtoCopyWith<$Res>? get mempoolStats;

}
/// @nodoc
class __$AddressInfoDtoCopyWithImpl<$Res>
    implements _$AddressInfoDtoCopyWith<$Res> {
  __$AddressInfoDtoCopyWithImpl(this._self, this._then);

  final _AddressInfoDto _self;
  final $Res Function(_AddressInfoDto) _then;

/// Create a copy of AddressInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? chainStats = null,Object? mempoolStats = freezed,}) {
  return _then(_AddressInfoDto(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,chainStats: null == chainStats ? _self.chainStats : chainStats // ignore: cast_nullable_to_non_nullable
as ChainStatsDto,mempoolStats: freezed == mempoolStats ? _self.mempoolStats : mempoolStats // ignore: cast_nullable_to_non_nullable
as ChainStatsDto?,
  ));
}

/// Create a copy of AddressInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainStatsDtoCopyWith<$Res> get chainStats {
  
  return $ChainStatsDtoCopyWith<$Res>(_self.chainStats, (value) {
    return _then(_self.copyWith(chainStats: value));
  });
}/// Create a copy of AddressInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainStatsDtoCopyWith<$Res>? get mempoolStats {
    if (_self.mempoolStats == null) {
    return null;
  }

  return $ChainStatsDtoCopyWith<$Res>(_self.mempoolStats!, (value) {
    return _then(_self.copyWith(mempoolStats: value));
  });
}
}

// dart format on
