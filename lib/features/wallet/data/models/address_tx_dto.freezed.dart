// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_tx_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressTxDto {

 String get txid; int get version; int? get size; int? get weight; int? get locktime; StatusDto? get status; List<VinDto>? get vin; List<VoutDto>? get vout;
/// Create a copy of AddressTxDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressTxDtoCopyWith<AddressTxDto> get copyWith => _$AddressTxDtoCopyWithImpl<AddressTxDto>(this as AddressTxDto, _$identity);

  /// Serializes this AddressTxDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressTxDto&&(identical(other.txid, txid) || other.txid == txid)&&(identical(other.version, version) || other.version == version)&&(identical(other.size, size) || other.size == size)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.locktime, locktime) || other.locktime == locktime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.vin, vin)&&const DeepCollectionEquality().equals(other.vout, vout));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txid,version,size,weight,locktime,status,const DeepCollectionEquality().hash(vin),const DeepCollectionEquality().hash(vout));

@override
String toString() {
  return 'AddressTxDto(txid: $txid, version: $version, size: $size, weight: $weight, locktime: $locktime, status: $status, vin: $vin, vout: $vout)';
}


}

/// @nodoc
abstract mixin class $AddressTxDtoCopyWith<$Res>  {
  factory $AddressTxDtoCopyWith(AddressTxDto value, $Res Function(AddressTxDto) _then) = _$AddressTxDtoCopyWithImpl;
@useResult
$Res call({
 String txid, int version, int? size, int? weight, int? locktime, StatusDto? status, List<VinDto>? vin, List<VoutDto>? vout
});


$StatusDtoCopyWith<$Res>? get status;

}
/// @nodoc
class _$AddressTxDtoCopyWithImpl<$Res>
    implements $AddressTxDtoCopyWith<$Res> {
  _$AddressTxDtoCopyWithImpl(this._self, this._then);

  final AddressTxDto _self;
  final $Res Function(AddressTxDto) _then;

/// Create a copy of AddressTxDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? txid = null,Object? version = null,Object? size = freezed,Object? weight = freezed,Object? locktime = freezed,Object? status = freezed,Object? vin = freezed,Object? vout = freezed,}) {
  return _then(_self.copyWith(
txid: null == txid ? _self.txid : txid // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,locktime: freezed == locktime ? _self.locktime : locktime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusDto?,vin: freezed == vin ? _self.vin : vin // ignore: cast_nullable_to_non_nullable
as List<VinDto>?,vout: freezed == vout ? _self.vout : vout // ignore: cast_nullable_to_non_nullable
as List<VoutDto>?,
  ));
}
/// Create a copy of AddressTxDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusDtoCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $StatusDtoCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddressTxDto].
extension AddressTxDtoPatterns on AddressTxDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressTxDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressTxDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressTxDto value)  $default,){
final _that = this;
switch (_that) {
case _AddressTxDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressTxDto value)?  $default,){
final _that = this;
switch (_that) {
case _AddressTxDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String txid,  int version,  int? size,  int? weight,  int? locktime,  StatusDto? status,  List<VinDto>? vin,  List<VoutDto>? vout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressTxDto() when $default != null:
return $default(_that.txid,_that.version,_that.size,_that.weight,_that.locktime,_that.status,_that.vin,_that.vout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String txid,  int version,  int? size,  int? weight,  int? locktime,  StatusDto? status,  List<VinDto>? vin,  List<VoutDto>? vout)  $default,) {final _that = this;
switch (_that) {
case _AddressTxDto():
return $default(_that.txid,_that.version,_that.size,_that.weight,_that.locktime,_that.status,_that.vin,_that.vout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String txid,  int version,  int? size,  int? weight,  int? locktime,  StatusDto? status,  List<VinDto>? vin,  List<VoutDto>? vout)?  $default,) {final _that = this;
switch (_that) {
case _AddressTxDto() when $default != null:
return $default(_that.txid,_that.version,_that.size,_that.weight,_that.locktime,_that.status,_that.vin,_that.vout);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _AddressTxDto implements AddressTxDto {
  const _AddressTxDto({required this.txid, required this.version, this.size, this.weight, this.locktime, this.status, final  List<VinDto>? vin, final  List<VoutDto>? vout}): _vin = vin,_vout = vout;
  factory _AddressTxDto.fromJson(Map<String, dynamic> json) => _$AddressTxDtoFromJson(json);

@override final  String txid;
@override final  int version;
@override final  int? size;
@override final  int? weight;
@override final  int? locktime;
@override final  StatusDto? status;
 final  List<VinDto>? _vin;
@override List<VinDto>? get vin {
  final value = _vin;
  if (value == null) return null;
  if (_vin is EqualUnmodifiableListView) return _vin;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<VoutDto>? _vout;
@override List<VoutDto>? get vout {
  final value = _vout;
  if (value == null) return null;
  if (_vout is EqualUnmodifiableListView) return _vout;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AddressTxDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressTxDtoCopyWith<_AddressTxDto> get copyWith => __$AddressTxDtoCopyWithImpl<_AddressTxDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressTxDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressTxDto&&(identical(other.txid, txid) || other.txid == txid)&&(identical(other.version, version) || other.version == version)&&(identical(other.size, size) || other.size == size)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.locktime, locktime) || other.locktime == locktime)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._vin, _vin)&&const DeepCollectionEquality().equals(other._vout, _vout));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,txid,version,size,weight,locktime,status,const DeepCollectionEquality().hash(_vin),const DeepCollectionEquality().hash(_vout));

@override
String toString() {
  return 'AddressTxDto(txid: $txid, version: $version, size: $size, weight: $weight, locktime: $locktime, status: $status, vin: $vin, vout: $vout)';
}


}

/// @nodoc
abstract mixin class _$AddressTxDtoCopyWith<$Res> implements $AddressTxDtoCopyWith<$Res> {
  factory _$AddressTxDtoCopyWith(_AddressTxDto value, $Res Function(_AddressTxDto) _then) = __$AddressTxDtoCopyWithImpl;
@override @useResult
$Res call({
 String txid, int version, int? size, int? weight, int? locktime, StatusDto? status, List<VinDto>? vin, List<VoutDto>? vout
});


@override $StatusDtoCopyWith<$Res>? get status;

}
/// @nodoc
class __$AddressTxDtoCopyWithImpl<$Res>
    implements _$AddressTxDtoCopyWith<$Res> {
  __$AddressTxDtoCopyWithImpl(this._self, this._then);

  final _AddressTxDto _self;
  final $Res Function(_AddressTxDto) _then;

/// Create a copy of AddressTxDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? txid = null,Object? version = null,Object? size = freezed,Object? weight = freezed,Object? locktime = freezed,Object? status = freezed,Object? vin = freezed,Object? vout = freezed,}) {
  return _then(_AddressTxDto(
txid: null == txid ? _self.txid : txid // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,locktime: freezed == locktime ? _self.locktime : locktime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StatusDto?,vin: freezed == vin ? _self._vin : vin // ignore: cast_nullable_to_non_nullable
as List<VinDto>?,vout: freezed == vout ? _self._vout : vout // ignore: cast_nullable_to_non_nullable
as List<VoutDto>?,
  ));
}

/// Create a copy of AddressTxDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusDtoCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $StatusDtoCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
