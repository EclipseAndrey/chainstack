// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_rpc_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JsonRpcErrorDto {

 int? get code; String? get message; dynamic get data;
/// Create a copy of JsonRpcErrorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JsonRpcErrorDtoCopyWith<JsonRpcErrorDto> get copyWith => _$JsonRpcErrorDtoCopyWithImpl<JsonRpcErrorDto>(this as JsonRpcErrorDto, _$identity);

  /// Serializes this JsonRpcErrorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JsonRpcErrorDto&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'JsonRpcErrorDto(code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $JsonRpcErrorDtoCopyWith<$Res>  {
  factory $JsonRpcErrorDtoCopyWith(JsonRpcErrorDto value, $Res Function(JsonRpcErrorDto) _then) = _$JsonRpcErrorDtoCopyWithImpl;
@useResult
$Res call({
 int? code, String? message, dynamic data
});




}
/// @nodoc
class _$JsonRpcErrorDtoCopyWithImpl<$Res>
    implements $JsonRpcErrorDtoCopyWith<$Res> {
  _$JsonRpcErrorDtoCopyWithImpl(this._self, this._then);

  final JsonRpcErrorDto _self;
  final $Res Function(JsonRpcErrorDto) _then;

/// Create a copy of JsonRpcErrorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [JsonRpcErrorDto].
extension JsonRpcErrorDtoPatterns on JsonRpcErrorDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JsonRpcErrorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JsonRpcErrorDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JsonRpcErrorDto value)  $default,){
final _that = this;
switch (_that) {
case _JsonRpcErrorDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JsonRpcErrorDto value)?  $default,){
final _that = this;
switch (_that) {
case _JsonRpcErrorDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? code,  String? message,  dynamic data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JsonRpcErrorDto() when $default != null:
return $default(_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? code,  String? message,  dynamic data)  $default,) {final _that = this;
switch (_that) {
case _JsonRpcErrorDto():
return $default(_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? code,  String? message,  dynamic data)?  $default,) {final _that = this;
switch (_that) {
case _JsonRpcErrorDto() when $default != null:
return $default(_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JsonRpcErrorDto implements JsonRpcErrorDto {
  const _JsonRpcErrorDto({this.code, this.message, this.data});
  factory _JsonRpcErrorDto.fromJson(Map<String, dynamic> json) => _$JsonRpcErrorDtoFromJson(json);

@override final  int? code;
@override final  String? message;
@override final  dynamic data;

/// Create a copy of JsonRpcErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JsonRpcErrorDtoCopyWith<_JsonRpcErrorDto> get copyWith => __$JsonRpcErrorDtoCopyWithImpl<_JsonRpcErrorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JsonRpcErrorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JsonRpcErrorDto&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'JsonRpcErrorDto(code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$JsonRpcErrorDtoCopyWith<$Res> implements $JsonRpcErrorDtoCopyWith<$Res> {
  factory _$JsonRpcErrorDtoCopyWith(_JsonRpcErrorDto value, $Res Function(_JsonRpcErrorDto) _then) = __$JsonRpcErrorDtoCopyWithImpl;
@override @useResult
$Res call({
 int? code, String? message, dynamic data
});




}
/// @nodoc
class __$JsonRpcErrorDtoCopyWithImpl<$Res>
    implements _$JsonRpcErrorDtoCopyWith<$Res> {
  __$JsonRpcErrorDtoCopyWithImpl(this._self, this._then);

  final _JsonRpcErrorDto _self;
  final $Res Function(_JsonRpcErrorDto) _then;

/// Create a copy of JsonRpcErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(_JsonRpcErrorDto(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
