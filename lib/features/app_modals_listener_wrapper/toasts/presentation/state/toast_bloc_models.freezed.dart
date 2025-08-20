// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toast_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ToastEvent {

 ToastData? get toastData;
/// Create a copy of ToastEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToastEventCopyWith<ToastEvent> get copyWith => _$ToastEventCopyWithImpl<ToastEvent>(this as ToastEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToastEvent&&(identical(other.toastData, toastData) || other.toastData == toastData));
}


@override
int get hashCode => Object.hash(runtimeType,toastData);

@override
String toString() {
  return 'ToastEvent(toastData: $toastData)';
}


}

/// @nodoc
abstract mixin class $ToastEventCopyWith<$Res>  {
  factory $ToastEventCopyWith(ToastEvent value, $Res Function(ToastEvent) _then) = _$ToastEventCopyWithImpl;
@useResult
$Res call({
 ToastData? toastData
});




}
/// @nodoc
class _$ToastEventCopyWithImpl<$Res>
    implements $ToastEventCopyWith<$Res> {
  _$ToastEventCopyWithImpl(this._self, this._then);

  final ToastEvent _self;
  final $Res Function(ToastEvent) _then;

/// Create a copy of ToastEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? toastData = freezed,}) {
  return _then(_self.copyWith(
toastData: freezed == toastData ? _self.toastData : toastData // ignore: cast_nullable_to_non_nullable
as ToastData?,
  ));
}

}


/// Adds pattern-matching-related methods to [ToastEvent].
extension ToastEventPatterns on ToastEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ToastDataReceived value)?  toastDataReceived,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ToastDataReceived() when toastDataReceived != null:
return toastDataReceived(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ToastDataReceived value)  toastDataReceived,}){
final _that = this;
switch (_that) {
case ToastDataReceived():
return toastDataReceived(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ToastDataReceived value)?  toastDataReceived,}){
final _that = this;
switch (_that) {
case ToastDataReceived() when toastDataReceived != null:
return toastDataReceived(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ToastData? toastData)?  toastDataReceived,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ToastDataReceived() when toastDataReceived != null:
return toastDataReceived(_that.toastData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ToastData? toastData)  toastDataReceived,}) {final _that = this;
switch (_that) {
case ToastDataReceived():
return toastDataReceived(_that.toastData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ToastData? toastData)?  toastDataReceived,}) {final _that = this;
switch (_that) {
case ToastDataReceived() when toastDataReceived != null:
return toastDataReceived(_that.toastData);case _:
  return null;

}
}

}

/// @nodoc


class ToastDataReceived implements ToastEvent {
  const ToastDataReceived(this.toastData);
  

@override final  ToastData? toastData;

/// Create a copy of ToastEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToastDataReceivedCopyWith<ToastDataReceived> get copyWith => _$ToastDataReceivedCopyWithImpl<ToastDataReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToastDataReceived&&(identical(other.toastData, toastData) || other.toastData == toastData));
}


@override
int get hashCode => Object.hash(runtimeType,toastData);

@override
String toString() {
  return 'ToastEvent.toastDataReceived(toastData: $toastData)';
}


}

/// @nodoc
abstract mixin class $ToastDataReceivedCopyWith<$Res> implements $ToastEventCopyWith<$Res> {
  factory $ToastDataReceivedCopyWith(ToastDataReceived value, $Res Function(ToastDataReceived) _then) = _$ToastDataReceivedCopyWithImpl;
@override @useResult
$Res call({
 ToastData? toastData
});




}
/// @nodoc
class _$ToastDataReceivedCopyWithImpl<$Res>
    implements $ToastDataReceivedCopyWith<$Res> {
  _$ToastDataReceivedCopyWithImpl(this._self, this._then);

  final ToastDataReceived _self;
  final $Res Function(ToastDataReceived) _then;

/// Create a copy of ToastEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? toastData = freezed,}) {
  return _then(ToastDataReceived(
freezed == toastData ? _self.toastData : toastData // ignore: cast_nullable_to_non_nullable
as ToastData?,
  ));
}


}

/// @nodoc
mixin _$ToastState {

 ToastData? get toastData;
/// Create a copy of ToastState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToastStateCopyWith<ToastState> get copyWith => _$ToastStateCopyWithImpl<ToastState>(this as ToastState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToastState&&(identical(other.toastData, toastData) || other.toastData == toastData));
}


@override
int get hashCode => Object.hash(runtimeType,toastData);

@override
String toString() {
  return 'ToastState(toastData: $toastData)';
}


}

/// @nodoc
abstract mixin class $ToastStateCopyWith<$Res>  {
  factory $ToastStateCopyWith(ToastState value, $Res Function(ToastState) _then) = _$ToastStateCopyWithImpl;
@useResult
$Res call({
 ToastData? toastData
});




}
/// @nodoc
class _$ToastStateCopyWithImpl<$Res>
    implements $ToastStateCopyWith<$Res> {
  _$ToastStateCopyWithImpl(this._self, this._then);

  final ToastState _self;
  final $Res Function(ToastState) _then;

/// Create a copy of ToastState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? toastData = freezed,}) {
  return _then(_self.copyWith(
toastData: freezed == toastData ? _self.toastData : toastData // ignore: cast_nullable_to_non_nullable
as ToastData?,
  ));
}

}


/// Adds pattern-matching-related methods to [ToastState].
extension ToastStatePatterns on ToastState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToastState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToastState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToastState value)  $default,){
final _that = this;
switch (_that) {
case _ToastState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToastState value)?  $default,){
final _that = this;
switch (_that) {
case _ToastState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ToastData? toastData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToastState() when $default != null:
return $default(_that.toastData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ToastData? toastData)  $default,) {final _that = this;
switch (_that) {
case _ToastState():
return $default(_that.toastData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ToastData? toastData)?  $default,) {final _that = this;
switch (_that) {
case _ToastState() when $default != null:
return $default(_that.toastData);case _:
  return null;

}
}

}

/// @nodoc


class _ToastState implements ToastState {
  const _ToastState({this.toastData});
  

@override final  ToastData? toastData;

/// Create a copy of ToastState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToastStateCopyWith<_ToastState> get copyWith => __$ToastStateCopyWithImpl<_ToastState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToastState&&(identical(other.toastData, toastData) || other.toastData == toastData));
}


@override
int get hashCode => Object.hash(runtimeType,toastData);

@override
String toString() {
  return 'ToastState(toastData: $toastData)';
}


}

/// @nodoc
abstract mixin class _$ToastStateCopyWith<$Res> implements $ToastStateCopyWith<$Res> {
  factory _$ToastStateCopyWith(_ToastState value, $Res Function(_ToastState) _then) = __$ToastStateCopyWithImpl;
@override @useResult
$Res call({
 ToastData? toastData
});




}
/// @nodoc
class __$ToastStateCopyWithImpl<$Res>
    implements _$ToastStateCopyWith<$Res> {
  __$ToastStateCopyWithImpl(this._self, this._then);

  final _ToastState _self;
  final $Res Function(_ToastState) _then;

/// Create a copy of ToastState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? toastData = freezed,}) {
  return _then(_ToastState(
toastData: freezed == toastData ? _self.toastData : toastData // ignore: cast_nullable_to_non_nullable
as ToastData?,
  ));
}


}

// dart format on
