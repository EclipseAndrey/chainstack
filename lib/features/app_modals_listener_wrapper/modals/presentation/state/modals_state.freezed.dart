// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modals_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ModalEvent {

 XModalData? get modalData;
/// Create a copy of ModalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModalEventCopyWith<ModalEvent> get copyWith => _$ModalEventCopyWithImpl<ModalEvent>(this as ModalEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModalEvent&&(identical(other.modalData, modalData) || other.modalData == modalData));
}


@override
int get hashCode => Object.hash(runtimeType,modalData);

@override
String toString() {
  return 'ModalEvent(modalData: $modalData)';
}


}

/// @nodoc
abstract mixin class $ModalEventCopyWith<$Res>  {
  factory $ModalEventCopyWith(ModalEvent value, $Res Function(ModalEvent) _then) = _$ModalEventCopyWithImpl;
@useResult
$Res call({
 XModalData? modalData
});




}
/// @nodoc
class _$ModalEventCopyWithImpl<$Res>
    implements $ModalEventCopyWith<$Res> {
  _$ModalEventCopyWithImpl(this._self, this._then);

  final ModalEvent _self;
  final $Res Function(ModalEvent) _then;

/// Create a copy of ModalEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? modalData = freezed,}) {
  return _then(_self.copyWith(
modalData: freezed == modalData ? _self.modalData : modalData // ignore: cast_nullable_to_non_nullable
as XModalData?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModalEvent].
extension ModalEventPatterns on ModalEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ModalReceived value)?  modalReceived,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ModalReceived() when modalReceived != null:
return modalReceived(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ModalReceived value)  modalReceived,}){
final _that = this;
switch (_that) {
case ModalReceived():
return modalReceived(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ModalReceived value)?  modalReceived,}){
final _that = this;
switch (_that) {
case ModalReceived() when modalReceived != null:
return modalReceived(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( XModalData? modalData)?  modalReceived,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ModalReceived() when modalReceived != null:
return modalReceived(_that.modalData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( XModalData? modalData)  modalReceived,}) {final _that = this;
switch (_that) {
case ModalReceived():
return modalReceived(_that.modalData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( XModalData? modalData)?  modalReceived,}) {final _that = this;
switch (_that) {
case ModalReceived() when modalReceived != null:
return modalReceived(_that.modalData);case _:
  return null;

}
}

}

/// @nodoc


class ModalReceived implements ModalEvent {
  const ModalReceived(this.modalData);
  

@override final  XModalData? modalData;

/// Create a copy of ModalEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModalReceivedCopyWith<ModalReceived> get copyWith => _$ModalReceivedCopyWithImpl<ModalReceived>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModalReceived&&(identical(other.modalData, modalData) || other.modalData == modalData));
}


@override
int get hashCode => Object.hash(runtimeType,modalData);

@override
String toString() {
  return 'ModalEvent.modalReceived(modalData: $modalData)';
}


}

/// @nodoc
abstract mixin class $ModalReceivedCopyWith<$Res> implements $ModalEventCopyWith<$Res> {
  factory $ModalReceivedCopyWith(ModalReceived value, $Res Function(ModalReceived) _then) = _$ModalReceivedCopyWithImpl;
@override @useResult
$Res call({
 XModalData? modalData
});




}
/// @nodoc
class _$ModalReceivedCopyWithImpl<$Res>
    implements $ModalReceivedCopyWith<$Res> {
  _$ModalReceivedCopyWithImpl(this._self, this._then);

  final ModalReceived _self;
  final $Res Function(ModalReceived) _then;

/// Create a copy of ModalEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? modalData = freezed,}) {
  return _then(ModalReceived(
freezed == modalData ? _self.modalData : modalData // ignore: cast_nullable_to_non_nullable
as XModalData?,
  ));
}


}

/// @nodoc
mixin _$ModalState {

 XModalData? get modalData;
/// Create a copy of ModalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ModalStateCopyWith<ModalState> get copyWith => _$ModalStateCopyWithImpl<ModalState>(this as ModalState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ModalState&&(identical(other.modalData, modalData) || other.modalData == modalData));
}


@override
int get hashCode => Object.hash(runtimeType,modalData);

@override
String toString() {
  return 'ModalState(modalData: $modalData)';
}


}

/// @nodoc
abstract mixin class $ModalStateCopyWith<$Res>  {
  factory $ModalStateCopyWith(ModalState value, $Res Function(ModalState) _then) = _$ModalStateCopyWithImpl;
@useResult
$Res call({
 XModalData? modalData
});




}
/// @nodoc
class _$ModalStateCopyWithImpl<$Res>
    implements $ModalStateCopyWith<$Res> {
  _$ModalStateCopyWithImpl(this._self, this._then);

  final ModalState _self;
  final $Res Function(ModalState) _then;

/// Create a copy of ModalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? modalData = freezed,}) {
  return _then(_self.copyWith(
modalData: freezed == modalData ? _self.modalData : modalData // ignore: cast_nullable_to_non_nullable
as XModalData?,
  ));
}

}


/// Adds pattern-matching-related methods to [ModalState].
extension ModalStatePatterns on ModalState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ModalState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ModalState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModalState value)  $default,){
final _that = this;
switch (_that) {
case _ModalState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModalState value)?  $default,){
final _that = this;
switch (_that) {
case _ModalState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( XModalData? modalData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ModalState() when $default != null:
return $default(_that.modalData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( XModalData? modalData)  $default,) {final _that = this;
switch (_that) {
case _ModalState():
return $default(_that.modalData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( XModalData? modalData)?  $default,) {final _that = this;
switch (_that) {
case _ModalState() when $default != null:
return $default(_that.modalData);case _:
  return null;

}
}

}

/// @nodoc


class _ModalState implements ModalState {
  const _ModalState({this.modalData});
  

@override final  XModalData? modalData;

/// Create a copy of ModalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModalStateCopyWith<_ModalState> get copyWith => __$ModalStateCopyWithImpl<_ModalState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ModalState&&(identical(other.modalData, modalData) || other.modalData == modalData));
}


@override
int get hashCode => Object.hash(runtimeType,modalData);

@override
String toString() {
  return 'ModalState(modalData: $modalData)';
}


}

/// @nodoc
abstract mixin class _$ModalStateCopyWith<$Res> implements $ModalStateCopyWith<$Res> {
  factory _$ModalStateCopyWith(_ModalState value, $Res Function(_ModalState) _then) = __$ModalStateCopyWithImpl;
@override @useResult
$Res call({
 XModalData? modalData
});




}
/// @nodoc
class __$ModalStateCopyWithImpl<$Res>
    implements _$ModalStateCopyWith<$Res> {
  __$ModalStateCopyWithImpl(this._self, this._then);

  final _ModalState _self;
  final $Res Function(_ModalState) _then;

/// Create a copy of ModalState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? modalData = freezed,}) {
  return _then(_ModalState(
modalData: freezed == modalData ? _self.modalData : modalData // ignore: cast_nullable_to_non_nullable
as XModalData?,
  ));
}


}

// dart format on
