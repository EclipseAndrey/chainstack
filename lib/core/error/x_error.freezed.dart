// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'x_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$XError {

 String? get message;
/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XErrorCopyWith<XError> get copyWith => _$XErrorCopyWithImpl<XError>(this as XError, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'XError(message: $message)';
}


}

/// @nodoc
abstract mixin class $XErrorCopyWith<$Res>  {
  factory $XErrorCopyWith(XError value, $Res Function(XError) _then) = _$XErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$XErrorCopyWithImpl<$Res>
    implements $XErrorCopyWith<$Res> {
  _$XErrorCopyWithImpl(this._self, this._then);

  final XError _self;
  final $Res Function(XError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message! : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [XError].
extension XErrorPatterns on XError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( XApiError value)?  api,TResult Function( XInternalError value)?  internal,TResult Function( XNetworkError value)?  network,TResult Function( XUnexpectedError value)?  unexpected,TResult Function( XUnauthorized value)?  unauthorized,TResult Function( XValidationError value)?  validation,TResult Function( XConflictError value)?  conflict,TResult Function( XNotFoundError value)?  notFound,TResult Function( XForbiddenError value)?  forbidden,required TResult orElse(),}){
final _that = this;
switch (_that) {
case XApiError() when api != null:
return api(_that);case XInternalError() when internal != null:
return internal(_that);case XNetworkError() when network != null:
return network(_that);case XUnexpectedError() when unexpected != null:
return unexpected(_that);case XUnauthorized() when unauthorized != null:
return unauthorized(_that);case XValidationError() when validation != null:
return validation(_that);case XConflictError() when conflict != null:
return conflict(_that);case XNotFoundError() when notFound != null:
return notFound(_that);case XForbiddenError() when forbidden != null:
return forbidden(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( XApiError value)  api,required TResult Function( XInternalError value)  internal,required TResult Function( XNetworkError value)  network,required TResult Function( XUnexpectedError value)  unexpected,required TResult Function( XUnauthorized value)  unauthorized,required TResult Function( XValidationError value)  validation,required TResult Function( XConflictError value)  conflict,required TResult Function( XNotFoundError value)  notFound,required TResult Function( XForbiddenError value)  forbidden,}){
final _that = this;
switch (_that) {
case XApiError():
return api(_that);case XInternalError():
return internal(_that);case XNetworkError():
return network(_that);case XUnexpectedError():
return unexpected(_that);case XUnauthorized():
return unauthorized(_that);case XValidationError():
return validation(_that);case XConflictError():
return conflict(_that);case XNotFoundError():
return notFound(_that);case XForbiddenError():
return forbidden(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( XApiError value)?  api,TResult? Function( XInternalError value)?  internal,TResult? Function( XNetworkError value)?  network,TResult? Function( XUnexpectedError value)?  unexpected,TResult? Function( XUnauthorized value)?  unauthorized,TResult? Function( XValidationError value)?  validation,TResult? Function( XConflictError value)?  conflict,TResult? Function( XNotFoundError value)?  notFound,TResult? Function( XForbiddenError value)?  forbidden,}){
final _that = this;
switch (_that) {
case XApiError() when api != null:
return api(_that);case XInternalError() when internal != null:
return internal(_that);case XNetworkError() when network != null:
return network(_that);case XUnexpectedError() when unexpected != null:
return unexpected(_that);case XUnauthorized() when unauthorized != null:
return unauthorized(_that);case XValidationError() when validation != null:
return validation(_that);case XConflictError() when conflict != null:
return conflict(_that);case XNotFoundError() when notFound != null:
return notFound(_that);case XForbiddenError() when forbidden != null:
return forbidden(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? statusCode,  String? message,  Map<String, dynamic>? data)?  api,TResult Function( String message)?  internal,TResult Function( String message)?  network,TResult Function( String message)?  unexpected,TResult Function( String? message)?  unauthorized,TResult Function( Map<String, dynamic> errors,  String? message)?  validation,TResult Function( String? message)?  conflict,TResult Function( String? message)?  notFound,TResult Function( String? message)?  forbidden,required TResult orElse(),}) {final _that = this;
switch (_that) {
case XApiError() when api != null:
return api(_that.statusCode,_that.message,_that.data);case XInternalError() when internal != null:
return internal(_that.message);case XNetworkError() when network != null:
return network(_that.message);case XUnexpectedError() when unexpected != null:
return unexpected(_that.message);case XUnauthorized() when unauthorized != null:
return unauthorized(_that.message);case XValidationError() when validation != null:
return validation(_that.errors,_that.message);case XConflictError() when conflict != null:
return conflict(_that.message);case XNotFoundError() when notFound != null:
return notFound(_that.message);case XForbiddenError() when forbidden != null:
return forbidden(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? statusCode,  String? message,  Map<String, dynamic>? data)  api,required TResult Function( String message)  internal,required TResult Function( String message)  network,required TResult Function( String message)  unexpected,required TResult Function( String? message)  unauthorized,required TResult Function( Map<String, dynamic> errors,  String? message)  validation,required TResult Function( String? message)  conflict,required TResult Function( String? message)  notFound,required TResult Function( String? message)  forbidden,}) {final _that = this;
switch (_that) {
case XApiError():
return api(_that.statusCode,_that.message,_that.data);case XInternalError():
return internal(_that.message);case XNetworkError():
return network(_that.message);case XUnexpectedError():
return unexpected(_that.message);case XUnauthorized():
return unauthorized(_that.message);case XValidationError():
return validation(_that.errors,_that.message);case XConflictError():
return conflict(_that.message);case XNotFoundError():
return notFound(_that.message);case XForbiddenError():
return forbidden(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? statusCode,  String? message,  Map<String, dynamic>? data)?  api,TResult? Function( String message)?  internal,TResult? Function( String message)?  network,TResult? Function( String message)?  unexpected,TResult? Function( String? message)?  unauthorized,TResult? Function( Map<String, dynamic> errors,  String? message)?  validation,TResult? Function( String? message)?  conflict,TResult? Function( String? message)?  notFound,TResult? Function( String? message)?  forbidden,}) {final _that = this;
switch (_that) {
case XApiError() when api != null:
return api(_that.statusCode,_that.message,_that.data);case XInternalError() when internal != null:
return internal(_that.message);case XNetworkError() when network != null:
return network(_that.message);case XUnexpectedError() when unexpected != null:
return unexpected(_that.message);case XUnauthorized() when unauthorized != null:
return unauthorized(_that.message);case XValidationError() when validation != null:
return validation(_that.errors,_that.message);case XConflictError() when conflict != null:
return conflict(_that.message);case XNotFoundError() when notFound != null:
return notFound(_that.message);case XForbiddenError() when forbidden != null:
return forbidden(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class XApiError implements XError {
  const XApiError({required this.statusCode, required this.message, final  Map<String, dynamic>? data}): _data = data;
  

 final  int? statusCode;
@override final  String? message;
 final  Map<String, dynamic>? _data;
 Map<String, dynamic>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XApiErrorCopyWith<XApiError> get copyWith => _$XApiErrorCopyWithImpl<XApiError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XApiError&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,statusCode,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'XError.api(statusCode: $statusCode, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $XApiErrorCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XApiErrorCopyWith(XApiError value, $Res Function(XApiError) _then) = _$XApiErrorCopyWithImpl;
@override @useResult
$Res call({
 int? statusCode, String? message, Map<String, dynamic>? data
});




}
/// @nodoc
class _$XApiErrorCopyWithImpl<$Res>
    implements $XApiErrorCopyWith<$Res> {
  _$XApiErrorCopyWithImpl(this._self, this._then);

  final XApiError _self;
  final $Res Function(XApiError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? message = freezed,Object? data = freezed,}) {
  return _then(XApiError(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc


class XInternalError implements XError {
  const XInternalError(this.message);
  

@override final  String message;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XInternalErrorCopyWith<XInternalError> get copyWith => _$XInternalErrorCopyWithImpl<XInternalError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XInternalError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'XError.internal(message: $message)';
}


}

/// @nodoc
abstract mixin class $XInternalErrorCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XInternalErrorCopyWith(XInternalError value, $Res Function(XInternalError) _then) = _$XInternalErrorCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$XInternalErrorCopyWithImpl<$Res>
    implements $XInternalErrorCopyWith<$Res> {
  _$XInternalErrorCopyWithImpl(this._self, this._then);

  final XInternalError _self;
  final $Res Function(XInternalError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(XInternalError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class XNetworkError implements XError {
  const XNetworkError(this.message);
  

@override final  String message;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XNetworkErrorCopyWith<XNetworkError> get copyWith => _$XNetworkErrorCopyWithImpl<XNetworkError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XNetworkError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'XError.network(message: $message)';
}


}

/// @nodoc
abstract mixin class $XNetworkErrorCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XNetworkErrorCopyWith(XNetworkError value, $Res Function(XNetworkError) _then) = _$XNetworkErrorCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$XNetworkErrorCopyWithImpl<$Res>
    implements $XNetworkErrorCopyWith<$Res> {
  _$XNetworkErrorCopyWithImpl(this._self, this._then);

  final XNetworkError _self;
  final $Res Function(XNetworkError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(XNetworkError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class XUnexpectedError implements XError {
  const XUnexpectedError(this.message);
  

@override final  String message;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XUnexpectedErrorCopyWith<XUnexpectedError> get copyWith => _$XUnexpectedErrorCopyWithImpl<XUnexpectedError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XUnexpectedError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'XError.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $XUnexpectedErrorCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XUnexpectedErrorCopyWith(XUnexpectedError value, $Res Function(XUnexpectedError) _then) = _$XUnexpectedErrorCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$XUnexpectedErrorCopyWithImpl<$Res>
    implements $XUnexpectedErrorCopyWith<$Res> {
  _$XUnexpectedErrorCopyWithImpl(this._self, this._then);

  final XUnexpectedError _self;
  final $Res Function(XUnexpectedError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(XUnexpectedError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class XUnauthorized implements XError {
  const XUnauthorized([this.message]);
  

@override final  String? message;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XUnauthorizedCopyWith<XUnauthorized> get copyWith => _$XUnauthorizedCopyWithImpl<XUnauthorized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XUnauthorized&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'XError.unauthorized(message: $message)';
}


}

/// @nodoc
abstract mixin class $XUnauthorizedCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XUnauthorizedCopyWith(XUnauthorized value, $Res Function(XUnauthorized) _then) = _$XUnauthorizedCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$XUnauthorizedCopyWithImpl<$Res>
    implements $XUnauthorizedCopyWith<$Res> {
  _$XUnauthorizedCopyWithImpl(this._self, this._then);

  final XUnauthorized _self;
  final $Res Function(XUnauthorized) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(XUnauthorized(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class XValidationError implements XError {
  const XValidationError({required final  Map<String, dynamic> errors, this.message}): _errors = errors;
  

 final  Map<String, dynamic> _errors;
 Map<String, dynamic> get errors {
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errors);
}

@override final  String? message;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XValidationErrorCopyWith<XValidationError> get copyWith => _$XValidationErrorCopyWithImpl<XValidationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XValidationError&&const DeepCollectionEquality().equals(other._errors, _errors)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors),message);

@override
String toString() {
  return 'XError.validation(errors: $errors, message: $message)';
}


}

/// @nodoc
abstract mixin class $XValidationErrorCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XValidationErrorCopyWith(XValidationError value, $Res Function(XValidationError) _then) = _$XValidationErrorCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic> errors, String? message
});




}
/// @nodoc
class _$XValidationErrorCopyWithImpl<$Res>
    implements $XValidationErrorCopyWith<$Res> {
  _$XValidationErrorCopyWithImpl(this._self, this._then);

  final XValidationError _self;
  final $Res Function(XValidationError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errors = null,Object? message = freezed,}) {
  return _then(XValidationError(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class XConflictError implements XError {
  const XConflictError([this.message]);
  

@override final  String? message;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XConflictErrorCopyWith<XConflictError> get copyWith => _$XConflictErrorCopyWithImpl<XConflictError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XConflictError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'XError.conflict(message: $message)';
}


}

/// @nodoc
abstract mixin class $XConflictErrorCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XConflictErrorCopyWith(XConflictError value, $Res Function(XConflictError) _then) = _$XConflictErrorCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$XConflictErrorCopyWithImpl<$Res>
    implements $XConflictErrorCopyWith<$Res> {
  _$XConflictErrorCopyWithImpl(this._self, this._then);

  final XConflictError _self;
  final $Res Function(XConflictError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(XConflictError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class XNotFoundError implements XError {
  const XNotFoundError([this.message]);
  

@override final  String? message;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XNotFoundErrorCopyWith<XNotFoundError> get copyWith => _$XNotFoundErrorCopyWithImpl<XNotFoundError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XNotFoundError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'XError.notFound(message: $message)';
}


}

/// @nodoc
abstract mixin class $XNotFoundErrorCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XNotFoundErrorCopyWith(XNotFoundError value, $Res Function(XNotFoundError) _then) = _$XNotFoundErrorCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$XNotFoundErrorCopyWithImpl<$Res>
    implements $XNotFoundErrorCopyWith<$Res> {
  _$XNotFoundErrorCopyWithImpl(this._self, this._then);

  final XNotFoundError _self;
  final $Res Function(XNotFoundError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(XNotFoundError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class XForbiddenError implements XError {
  const XForbiddenError([this.message]);
  

@override final  String? message;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XForbiddenErrorCopyWith<XForbiddenError> get copyWith => _$XForbiddenErrorCopyWithImpl<XForbiddenError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XForbiddenError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'XError.forbidden(message: $message)';
}


}

/// @nodoc
abstract mixin class $XForbiddenErrorCopyWith<$Res> implements $XErrorCopyWith<$Res> {
  factory $XForbiddenErrorCopyWith(XForbiddenError value, $Res Function(XForbiddenError) _then) = _$XForbiddenErrorCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$XForbiddenErrorCopyWithImpl<$Res>
    implements $XForbiddenErrorCopyWith<$Res> {
  _$XForbiddenErrorCopyWithImpl(this._self, this._then);

  final XForbiddenError _self;
  final $Res Function(XForbiddenError) _then;

/// Create a copy of XError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(XForbiddenError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
