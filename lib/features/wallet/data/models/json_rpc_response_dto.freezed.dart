// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_rpc_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JsonRpcResponseDto {

 String? get jsonrpc; dynamic get result; JsonRpcErrorDto? get error; dynamic get id;
/// Create a copy of JsonRpcResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JsonRpcResponseDtoCopyWith<JsonRpcResponseDto> get copyWith => _$JsonRpcResponseDtoCopyWithImpl<JsonRpcResponseDto>(this as JsonRpcResponseDto, _$identity);

  /// Serializes this JsonRpcResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JsonRpcResponseDto&&(identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc)&&const DeepCollectionEquality().equals(other.result, result)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.id, id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jsonrpc,const DeepCollectionEquality().hash(result),error,const DeepCollectionEquality().hash(id));

@override
String toString() {
  return 'JsonRpcResponseDto(jsonrpc: $jsonrpc, result: $result, error: $error, id: $id)';
}


}

/// @nodoc
abstract mixin class $JsonRpcResponseDtoCopyWith<$Res>  {
  factory $JsonRpcResponseDtoCopyWith(JsonRpcResponseDto value, $Res Function(JsonRpcResponseDto) _then) = _$JsonRpcResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? jsonrpc, dynamic result, JsonRpcErrorDto? error, dynamic id
});


$JsonRpcErrorDtoCopyWith<$Res>? get error;

}
/// @nodoc
class _$JsonRpcResponseDtoCopyWithImpl<$Res>
    implements $JsonRpcResponseDtoCopyWith<$Res> {
  _$JsonRpcResponseDtoCopyWithImpl(this._self, this._then);

  final JsonRpcResponseDto _self;
  final $Res Function(JsonRpcResponseDto) _then;

/// Create a copy of JsonRpcResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jsonrpc = freezed,Object? result = freezed,Object? error = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
jsonrpc: freezed == jsonrpc ? _self.jsonrpc : jsonrpc // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as dynamic,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as JsonRpcErrorDto?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of JsonRpcResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JsonRpcErrorDtoCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $JsonRpcErrorDtoCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [JsonRpcResponseDto].
extension JsonRpcResponseDtoPatterns on JsonRpcResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JsonRpcResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JsonRpcResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JsonRpcResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _JsonRpcResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JsonRpcResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _JsonRpcResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? jsonrpc,  dynamic result,  JsonRpcErrorDto? error,  dynamic id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JsonRpcResponseDto() when $default != null:
return $default(_that.jsonrpc,_that.result,_that.error,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? jsonrpc,  dynamic result,  JsonRpcErrorDto? error,  dynamic id)  $default,) {final _that = this;
switch (_that) {
case _JsonRpcResponseDto():
return $default(_that.jsonrpc,_that.result,_that.error,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? jsonrpc,  dynamic result,  JsonRpcErrorDto? error,  dynamic id)?  $default,) {final _that = this;
switch (_that) {
case _JsonRpcResponseDto() when $default != null:
return $default(_that.jsonrpc,_that.result,_that.error,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JsonRpcResponseDto implements JsonRpcResponseDto {
  const _JsonRpcResponseDto({this.jsonrpc, this.result, this.error, this.id});
  factory _JsonRpcResponseDto.fromJson(Map<String, dynamic> json) => _$JsonRpcResponseDtoFromJson(json);

@override final  String? jsonrpc;
@override final  dynamic result;
@override final  JsonRpcErrorDto? error;
@override final  dynamic id;

/// Create a copy of JsonRpcResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JsonRpcResponseDtoCopyWith<_JsonRpcResponseDto> get copyWith => __$JsonRpcResponseDtoCopyWithImpl<_JsonRpcResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JsonRpcResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JsonRpcResponseDto&&(identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc)&&const DeepCollectionEquality().equals(other.result, result)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.id, id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jsonrpc,const DeepCollectionEquality().hash(result),error,const DeepCollectionEquality().hash(id));

@override
String toString() {
  return 'JsonRpcResponseDto(jsonrpc: $jsonrpc, result: $result, error: $error, id: $id)';
}


}

/// @nodoc
abstract mixin class _$JsonRpcResponseDtoCopyWith<$Res> implements $JsonRpcResponseDtoCopyWith<$Res> {
  factory _$JsonRpcResponseDtoCopyWith(_JsonRpcResponseDto value, $Res Function(_JsonRpcResponseDto) _then) = __$JsonRpcResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? jsonrpc, dynamic result, JsonRpcErrorDto? error, dynamic id
});


@override $JsonRpcErrorDtoCopyWith<$Res>? get error;

}
/// @nodoc
class __$JsonRpcResponseDtoCopyWithImpl<$Res>
    implements _$JsonRpcResponseDtoCopyWith<$Res> {
  __$JsonRpcResponseDtoCopyWithImpl(this._self, this._then);

  final _JsonRpcResponseDto _self;
  final $Res Function(_JsonRpcResponseDto) _then;

/// Create a copy of JsonRpcResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jsonrpc = freezed,Object? result = freezed,Object? error = freezed,Object? id = freezed,}) {
  return _then(_JsonRpcResponseDto(
jsonrpc: freezed == jsonrpc ? _self.jsonrpc : jsonrpc // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as dynamic,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as JsonRpcErrorDto?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of JsonRpcResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JsonRpcErrorDtoCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $JsonRpcErrorDtoCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
