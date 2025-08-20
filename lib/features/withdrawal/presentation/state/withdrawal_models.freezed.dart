// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WithdrawalEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WithdrawalEvent()';
}


}

/// @nodoc
class $WithdrawalEventCopyWith<$Res>  {
$WithdrawalEventCopyWith(WithdrawalEvent _, $Res Function(WithdrawalEvent) __);
}


/// Adds pattern-matching-related methods to [WithdrawalEvent].
extension WithdrawalEventPatterns on WithdrawalEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WithdrawalSendEvent value)?  send,TResult Function( WithdrawalResetEvent value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WithdrawalSendEvent() when send != null:
return send(_that);case WithdrawalResetEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WithdrawalSendEvent value)  send,required TResult Function( WithdrawalResetEvent value)  reset,}){
final _that = this;
switch (_that) {
case WithdrawalSendEvent():
return send(_that);case WithdrawalResetEvent():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WithdrawalSendEvent value)?  send,TResult? Function( WithdrawalResetEvent value)?  reset,}){
final _that = this;
switch (_that) {
case WithdrawalSendEvent() when send != null:
return send(_that);case WithdrawalResetEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String toAddress,  double amountBtc)?  send,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WithdrawalSendEvent() when send != null:
return send(_that.toAddress,_that.amountBtc);case WithdrawalResetEvent() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String toAddress,  double amountBtc)  send,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case WithdrawalSendEvent():
return send(_that.toAddress,_that.amountBtc);case WithdrawalResetEvent():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String toAddress,  double amountBtc)?  send,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case WithdrawalSendEvent() when send != null:
return send(_that.toAddress,_that.amountBtc);case WithdrawalResetEvent() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class WithdrawalSendEvent implements WithdrawalEvent {
  const WithdrawalSendEvent({required this.toAddress, required this.amountBtc});
  

 final  String toAddress;
 final  double amountBtc;

/// Create a copy of WithdrawalEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalSendEventCopyWith<WithdrawalSendEvent> get copyWith => _$WithdrawalSendEventCopyWithImpl<WithdrawalSendEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalSendEvent&&(identical(other.toAddress, toAddress) || other.toAddress == toAddress)&&(identical(other.amountBtc, amountBtc) || other.amountBtc == amountBtc));
}


@override
int get hashCode => Object.hash(runtimeType,toAddress,amountBtc);

@override
String toString() {
  return 'WithdrawalEvent.send(toAddress: $toAddress, amountBtc: $amountBtc)';
}


}

/// @nodoc
abstract mixin class $WithdrawalSendEventCopyWith<$Res> implements $WithdrawalEventCopyWith<$Res> {
  factory $WithdrawalSendEventCopyWith(WithdrawalSendEvent value, $Res Function(WithdrawalSendEvent) _then) = _$WithdrawalSendEventCopyWithImpl;
@useResult
$Res call({
 String toAddress, double amountBtc
});




}
/// @nodoc
class _$WithdrawalSendEventCopyWithImpl<$Res>
    implements $WithdrawalSendEventCopyWith<$Res> {
  _$WithdrawalSendEventCopyWithImpl(this._self, this._then);

  final WithdrawalSendEvent _self;
  final $Res Function(WithdrawalSendEvent) _then;

/// Create a copy of WithdrawalEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? toAddress = null,Object? amountBtc = null,}) {
  return _then(WithdrawalSendEvent(
toAddress: null == toAddress ? _self.toAddress : toAddress // ignore: cast_nullable_to_non_nullable
as String,amountBtc: null == amountBtc ? _self.amountBtc : amountBtc // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class WithdrawalResetEvent implements WithdrawalEvent {
  const WithdrawalResetEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalResetEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WithdrawalEvent.reset()';
}


}




/// @nodoc
mixin _$WithdrawalState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WithdrawalState()';
}


}

/// @nodoc
class $WithdrawalStateCopyWith<$Res>  {
$WithdrawalStateCopyWith(WithdrawalState _, $Res Function(WithdrawalState) __);
}


/// Adds pattern-matching-related methods to [WithdrawalState].
extension WithdrawalStatePatterns on WithdrawalState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WithdrawalIdleState value)?  idle,TResult Function( WithdrawalSendingState value)?  sending,TResult Function( WithdrawalSuccessState value)?  success,TResult Function( WithdrawalErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WithdrawalIdleState() when idle != null:
return idle(_that);case WithdrawalSendingState() when sending != null:
return sending(_that);case WithdrawalSuccessState() when success != null:
return success(_that);case WithdrawalErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WithdrawalIdleState value)  idle,required TResult Function( WithdrawalSendingState value)  sending,required TResult Function( WithdrawalSuccessState value)  success,required TResult Function( WithdrawalErrorState value)  error,}){
final _that = this;
switch (_that) {
case WithdrawalIdleState():
return idle(_that);case WithdrawalSendingState():
return sending(_that);case WithdrawalSuccessState():
return success(_that);case WithdrawalErrorState():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WithdrawalIdleState value)?  idle,TResult? Function( WithdrawalSendingState value)?  sending,TResult? Function( WithdrawalSuccessState value)?  success,TResult? Function( WithdrawalErrorState value)?  error,}){
final _that = this;
switch (_that) {
case WithdrawalIdleState() when idle != null:
return idle(_that);case WithdrawalSendingState() when sending != null:
return sending(_that);case WithdrawalSuccessState() when success != null:
return success(_that);case WithdrawalErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  sending,TResult Function()?  success,TResult Function( XError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WithdrawalIdleState() when idle != null:
return idle();case WithdrawalSendingState() when sending != null:
return sending();case WithdrawalSuccessState() when success != null:
return success();case WithdrawalErrorState() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  sending,required TResult Function()  success,required TResult Function( XError error)  error,}) {final _that = this;
switch (_that) {
case WithdrawalIdleState():
return idle();case WithdrawalSendingState():
return sending();case WithdrawalSuccessState():
return success();case WithdrawalErrorState():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  sending,TResult? Function()?  success,TResult? Function( XError error)?  error,}) {final _that = this;
switch (_that) {
case WithdrawalIdleState() when idle != null:
return idle();case WithdrawalSendingState() when sending != null:
return sending();case WithdrawalSuccessState() when success != null:
return success();case WithdrawalErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class WithdrawalIdleState implements WithdrawalState {
  const WithdrawalIdleState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalIdleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WithdrawalState.idle()';
}


}




/// @nodoc


class WithdrawalSendingState implements WithdrawalState {
  const WithdrawalSendingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalSendingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WithdrawalState.sending()';
}


}




/// @nodoc


class WithdrawalSuccessState implements WithdrawalState {
  const WithdrawalSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WithdrawalState.success()';
}


}




/// @nodoc


class WithdrawalErrorState implements WithdrawalState {
  const WithdrawalErrorState(this.error);
  

 final  XError error;

/// Create a copy of WithdrawalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalErrorStateCopyWith<WithdrawalErrorState> get copyWith => _$WithdrawalErrorStateCopyWithImpl<WithdrawalErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalErrorState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'WithdrawalState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $WithdrawalErrorStateCopyWith<$Res> implements $WithdrawalStateCopyWith<$Res> {
  factory $WithdrawalErrorStateCopyWith(WithdrawalErrorState value, $Res Function(WithdrawalErrorState) _then) = _$WithdrawalErrorStateCopyWithImpl;
@useResult
$Res call({
 XError error
});


$XErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$WithdrawalErrorStateCopyWithImpl<$Res>
    implements $WithdrawalErrorStateCopyWith<$Res> {
  _$WithdrawalErrorStateCopyWithImpl(this._self, this._then);

  final WithdrawalErrorState _self;
  final $Res Function(WithdrawalErrorState) _then;

/// Create a copy of WithdrawalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(WithdrawalErrorState(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as XError,
  ));
}

/// Create a copy of WithdrawalState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XErrorCopyWith<$Res> get error {
  
  return $XErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
