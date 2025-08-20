// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_blockchain_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBlockchainInfoDto {

 String get chain;// main/test/regtest/signet
 int get blocks; int get headers; double? get verificationprogress; bool? get initialblockdownload; int? get sizeOnDisk; bool? get pruned;
/// Create a copy of GetBlockchainInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBlockchainInfoDtoCopyWith<GetBlockchainInfoDto> get copyWith => _$GetBlockchainInfoDtoCopyWithImpl<GetBlockchainInfoDto>(this as GetBlockchainInfoDto, _$identity);

  /// Serializes this GetBlockchainInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBlockchainInfoDto&&(identical(other.chain, chain) || other.chain == chain)&&(identical(other.blocks, blocks) || other.blocks == blocks)&&(identical(other.headers, headers) || other.headers == headers)&&(identical(other.verificationprogress, verificationprogress) || other.verificationprogress == verificationprogress)&&(identical(other.initialblockdownload, initialblockdownload) || other.initialblockdownload == initialblockdownload)&&(identical(other.sizeOnDisk, sizeOnDisk) || other.sizeOnDisk == sizeOnDisk)&&(identical(other.pruned, pruned) || other.pruned == pruned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chain,blocks,headers,verificationprogress,initialblockdownload,sizeOnDisk,pruned);

@override
String toString() {
  return 'GetBlockchainInfoDto(chain: $chain, blocks: $blocks, headers: $headers, verificationprogress: $verificationprogress, initialblockdownload: $initialblockdownload, sizeOnDisk: $sizeOnDisk, pruned: $pruned)';
}


}

/// @nodoc
abstract mixin class $GetBlockchainInfoDtoCopyWith<$Res>  {
  factory $GetBlockchainInfoDtoCopyWith(GetBlockchainInfoDto value, $Res Function(GetBlockchainInfoDto) _then) = _$GetBlockchainInfoDtoCopyWithImpl;
@useResult
$Res call({
 String chain, int blocks, int headers, double? verificationprogress, bool? initialblockdownload, int? sizeOnDisk, bool? pruned
});




}
/// @nodoc
class _$GetBlockchainInfoDtoCopyWithImpl<$Res>
    implements $GetBlockchainInfoDtoCopyWith<$Res> {
  _$GetBlockchainInfoDtoCopyWithImpl(this._self, this._then);

  final GetBlockchainInfoDto _self;
  final $Res Function(GetBlockchainInfoDto) _then;

/// Create a copy of GetBlockchainInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chain = null,Object? blocks = null,Object? headers = null,Object? verificationprogress = freezed,Object? initialblockdownload = freezed,Object? sizeOnDisk = freezed,Object? pruned = freezed,}) {
  return _then(_self.copyWith(
chain: null == chain ? _self.chain : chain // ignore: cast_nullable_to_non_nullable
as String,blocks: null == blocks ? _self.blocks : blocks // ignore: cast_nullable_to_non_nullable
as int,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as int,verificationprogress: freezed == verificationprogress ? _self.verificationprogress : verificationprogress // ignore: cast_nullable_to_non_nullable
as double?,initialblockdownload: freezed == initialblockdownload ? _self.initialblockdownload : initialblockdownload // ignore: cast_nullable_to_non_nullable
as bool?,sizeOnDisk: freezed == sizeOnDisk ? _self.sizeOnDisk : sizeOnDisk // ignore: cast_nullable_to_non_nullable
as int?,pruned: freezed == pruned ? _self.pruned : pruned // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBlockchainInfoDto].
extension GetBlockchainInfoDtoPatterns on GetBlockchainInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBlockchainInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBlockchainInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBlockchainInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _GetBlockchainInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBlockchainInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _GetBlockchainInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chain,  int blocks,  int headers,  double? verificationprogress,  bool? initialblockdownload,  int? sizeOnDisk,  bool? pruned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBlockchainInfoDto() when $default != null:
return $default(_that.chain,_that.blocks,_that.headers,_that.verificationprogress,_that.initialblockdownload,_that.sizeOnDisk,_that.pruned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chain,  int blocks,  int headers,  double? verificationprogress,  bool? initialblockdownload,  int? sizeOnDisk,  bool? pruned)  $default,) {final _that = this;
switch (_that) {
case _GetBlockchainInfoDto():
return $default(_that.chain,_that.blocks,_that.headers,_that.verificationprogress,_that.initialblockdownload,_that.sizeOnDisk,_that.pruned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chain,  int blocks,  int headers,  double? verificationprogress,  bool? initialblockdownload,  int? sizeOnDisk,  bool? pruned)?  $default,) {final _that = this;
switch (_that) {
case _GetBlockchainInfoDto() when $default != null:
return $default(_that.chain,_that.blocks,_that.headers,_that.verificationprogress,_that.initialblockdownload,_that.sizeOnDisk,_that.pruned);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _GetBlockchainInfoDto implements GetBlockchainInfoDto {
  const _GetBlockchainInfoDto({required this.chain, required this.blocks, required this.headers, this.verificationprogress, this.initialblockdownload, this.sizeOnDisk, this.pruned});
  factory _GetBlockchainInfoDto.fromJson(Map<String, dynamic> json) => _$GetBlockchainInfoDtoFromJson(json);

@override final  String chain;
// main/test/regtest/signet
@override final  int blocks;
@override final  int headers;
@override final  double? verificationprogress;
@override final  bool? initialblockdownload;
@override final  int? sizeOnDisk;
@override final  bool? pruned;

/// Create a copy of GetBlockchainInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBlockchainInfoDtoCopyWith<_GetBlockchainInfoDto> get copyWith => __$GetBlockchainInfoDtoCopyWithImpl<_GetBlockchainInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBlockchainInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBlockchainInfoDto&&(identical(other.chain, chain) || other.chain == chain)&&(identical(other.blocks, blocks) || other.blocks == blocks)&&(identical(other.headers, headers) || other.headers == headers)&&(identical(other.verificationprogress, verificationprogress) || other.verificationprogress == verificationprogress)&&(identical(other.initialblockdownload, initialblockdownload) || other.initialblockdownload == initialblockdownload)&&(identical(other.sizeOnDisk, sizeOnDisk) || other.sizeOnDisk == sizeOnDisk)&&(identical(other.pruned, pruned) || other.pruned == pruned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chain,blocks,headers,verificationprogress,initialblockdownload,sizeOnDisk,pruned);

@override
String toString() {
  return 'GetBlockchainInfoDto(chain: $chain, blocks: $blocks, headers: $headers, verificationprogress: $verificationprogress, initialblockdownload: $initialblockdownload, sizeOnDisk: $sizeOnDisk, pruned: $pruned)';
}


}

/// @nodoc
abstract mixin class _$GetBlockchainInfoDtoCopyWith<$Res> implements $GetBlockchainInfoDtoCopyWith<$Res> {
  factory _$GetBlockchainInfoDtoCopyWith(_GetBlockchainInfoDto value, $Res Function(_GetBlockchainInfoDto) _then) = __$GetBlockchainInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 String chain, int blocks, int headers, double? verificationprogress, bool? initialblockdownload, int? sizeOnDisk, bool? pruned
});




}
/// @nodoc
class __$GetBlockchainInfoDtoCopyWithImpl<$Res>
    implements _$GetBlockchainInfoDtoCopyWith<$Res> {
  __$GetBlockchainInfoDtoCopyWithImpl(this._self, this._then);

  final _GetBlockchainInfoDto _self;
  final $Res Function(_GetBlockchainInfoDto) _then;

/// Create a copy of GetBlockchainInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chain = null,Object? blocks = null,Object? headers = null,Object? verificationprogress = freezed,Object? initialblockdownload = freezed,Object? sizeOnDisk = freezed,Object? pruned = freezed,}) {
  return _then(_GetBlockchainInfoDto(
chain: null == chain ? _self.chain : chain // ignore: cast_nullable_to_non_nullable
as String,blocks: null == blocks ? _self.blocks : blocks // ignore: cast_nullable_to_non_nullable
as int,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as int,verificationprogress: freezed == verificationprogress ? _self.verificationprogress : verificationprogress // ignore: cast_nullable_to_non_nullable
as double?,initialblockdownload: freezed == initialblockdownload ? _self.initialblockdownload : initialblockdownload // ignore: cast_nullable_to_non_nullable
as bool?,sizeOnDisk: freezed == sizeOnDisk ? _self.sizeOnDisk : sizeOnDisk // ignore: cast_nullable_to_non_nullable
as int?,pruned: freezed == pruned ? _self.pruned : pruned // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
