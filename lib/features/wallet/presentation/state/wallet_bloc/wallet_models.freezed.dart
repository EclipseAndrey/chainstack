// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletEvent()';
}


}

/// @nodoc
class $WalletEventCopyWith<$Res>  {
$WalletEventCopyWith(WalletEvent _, $Res Function(WalletEvent) __);
}


/// Adds pattern-matching-related methods to [WalletEvent].
extension WalletEventPatterns on WalletEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WalletUpdateEvent value)?  update,TResult Function( WalletUpdatedEvent value)?  updated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WalletUpdateEvent() when update != null:
return update(_that);case WalletUpdatedEvent() when updated != null:
return updated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WalletUpdateEvent value)  update,required TResult Function( WalletUpdatedEvent value)  updated,}){
final _that = this;
switch (_that) {
case WalletUpdateEvent():
return update(_that);case WalletUpdatedEvent():
return updated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WalletUpdateEvent value)?  update,TResult? Function( WalletUpdatedEvent value)?  updated,}){
final _that = this;
switch (_that) {
case WalletUpdateEvent() when update != null:
return update(_that);case WalletUpdatedEvent() when updated != null:
return updated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? address)?  update,TResult Function( Either<XError, int?> data)?  updated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WalletUpdateEvent() when update != null:
return update(_that.address);case WalletUpdatedEvent() when updated != null:
return updated(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? address)  update,required TResult Function( Either<XError, int?> data)  updated,}) {final _that = this;
switch (_that) {
case WalletUpdateEvent():
return update(_that.address);case WalletUpdatedEvent():
return updated(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? address)?  update,TResult? Function( Either<XError, int?> data)?  updated,}) {final _that = this;
switch (_that) {
case WalletUpdateEvent() when update != null:
return update(_that.address);case WalletUpdatedEvent() when updated != null:
return updated(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class WalletUpdateEvent implements WalletEvent {
  const WalletUpdateEvent({this.address});
  

 final  String? address;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletUpdateEventCopyWith<WalletUpdateEvent> get copyWith => _$WalletUpdateEventCopyWithImpl<WalletUpdateEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletUpdateEvent&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'WalletEvent.update(address: $address)';
}


}

/// @nodoc
abstract mixin class $WalletUpdateEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $WalletUpdateEventCopyWith(WalletUpdateEvent value, $Res Function(WalletUpdateEvent) _then) = _$WalletUpdateEventCopyWithImpl;
@useResult
$Res call({
 String? address
});




}
/// @nodoc
class _$WalletUpdateEventCopyWithImpl<$Res>
    implements $WalletUpdateEventCopyWith<$Res> {
  _$WalletUpdateEventCopyWithImpl(this._self, this._then);

  final WalletUpdateEvent _self;
  final $Res Function(WalletUpdateEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = freezed,}) {
  return _then(WalletUpdateEvent(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class WalletUpdatedEvent implements WalletEvent {
  const WalletUpdatedEvent(this.data);
  

 final  Either<XError, int?> data;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletUpdatedEventCopyWith<WalletUpdatedEvent> get copyWith => _$WalletUpdatedEventCopyWithImpl<WalletUpdatedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletUpdatedEvent&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'WalletEvent.updated(data: $data)';
}


}

/// @nodoc
abstract mixin class $WalletUpdatedEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $WalletUpdatedEventCopyWith(WalletUpdatedEvent value, $Res Function(WalletUpdatedEvent) _then) = _$WalletUpdatedEventCopyWithImpl;
@useResult
$Res call({
 Either<XError, int?> data
});


$EitherCopyWith<XError, int?, $Res> get data;

}
/// @nodoc
class _$WalletUpdatedEventCopyWithImpl<$Res>
    implements $WalletUpdatedEventCopyWith<$Res> {
  _$WalletUpdatedEventCopyWithImpl(this._self, this._then);

  final WalletUpdatedEvent _self;
  final $Res Function(WalletUpdatedEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(WalletUpdatedEvent(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Either<XError, int?>,
  ));
}

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EitherCopyWith<XError, int?, $Res> get data {
  
  return $EitherCopyWith<XError, int?, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$WalletState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletState()';
}


}

/// @nodoc
class $WalletStateCopyWith<$Res>  {
$WalletStateCopyWith(WalletState _, $Res Function(WalletState) __);
}


/// Adds pattern-matching-related methods to [WalletState].
extension WalletStatePatterns on WalletState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WalletLoadingState value)?  loading,TResult Function( WalletLoadedState value)?  loaded,TResult Function( WalletErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WalletLoadingState() when loading != null:
return loading(_that);case WalletLoadedState() when loaded != null:
return loaded(_that);case WalletErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WalletLoadingState value)  loading,required TResult Function( WalletLoadedState value)  loaded,required TResult Function( WalletErrorState value)  error,}){
final _that = this;
switch (_that) {
case WalletLoadingState():
return loading(_that);case WalletLoadedState():
return loaded(_that);case WalletErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WalletLoadingState value)?  loading,TResult? Function( WalletLoadedState value)?  loaded,TResult? Function( WalletErrorState value)?  error,}){
final _that = this;
switch (_that) {
case WalletLoadingState() when loading != null:
return loading(_that);case WalletLoadedState() when loaded != null:
return loaded(_that);case WalletErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( String? address,  int? balanceSats,  bool isLoading)?  loaded,TResult Function( XError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WalletLoadingState() when loading != null:
return loading();case WalletLoadedState() when loaded != null:
return loaded(_that.address,_that.balanceSats,_that.isLoading);case WalletErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( String? address,  int? balanceSats,  bool isLoading)  loaded,required TResult Function( XError error)  error,}) {final _that = this;
switch (_that) {
case WalletLoadingState():
return loading();case WalletLoadedState():
return loaded(_that.address,_that.balanceSats,_that.isLoading);case WalletErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( String? address,  int? balanceSats,  bool isLoading)?  loaded,TResult? Function( XError error)?  error,}) {final _that = this;
switch (_that) {
case WalletLoadingState() when loading != null:
return loading();case WalletLoadedState() when loaded != null:
return loaded(_that.address,_that.balanceSats,_that.isLoading);case WalletErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class WalletLoadingState implements WalletState {
  const WalletLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletState.loading()';
}


}




/// @nodoc


class WalletLoadedState implements WalletState {
  const WalletLoadedState({this.address, this.balanceSats, this.isLoading = false});
  

 final  String? address;
 final  int? balanceSats;
@JsonKey() final  bool isLoading;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletLoadedStateCopyWith<WalletLoadedState> get copyWith => _$WalletLoadedStateCopyWithImpl<WalletLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletLoadedState&&(identical(other.address, address) || other.address == address)&&(identical(other.balanceSats, balanceSats) || other.balanceSats == balanceSats)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,address,balanceSats,isLoading);

@override
String toString() {
  return 'WalletState.loaded(address: $address, balanceSats: $balanceSats, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $WalletLoadedStateCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory $WalletLoadedStateCopyWith(WalletLoadedState value, $Res Function(WalletLoadedState) _then) = _$WalletLoadedStateCopyWithImpl;
@useResult
$Res call({
 String? address, int? balanceSats, bool isLoading
});




}
/// @nodoc
class _$WalletLoadedStateCopyWithImpl<$Res>
    implements $WalletLoadedStateCopyWith<$Res> {
  _$WalletLoadedStateCopyWithImpl(this._self, this._then);

  final WalletLoadedState _self;
  final $Res Function(WalletLoadedState) _then;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? balanceSats = freezed,Object? isLoading = null,}) {
  return _then(WalletLoadedState(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,balanceSats: freezed == balanceSats ? _self.balanceSats : balanceSats // ignore: cast_nullable_to_non_nullable
as int?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class WalletErrorState implements WalletState {
  const WalletErrorState(this.error);
  

 final  XError error;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletErrorStateCopyWith<WalletErrorState> get copyWith => _$WalletErrorStateCopyWithImpl<WalletErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletErrorState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'WalletState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $WalletErrorStateCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory $WalletErrorStateCopyWith(WalletErrorState value, $Res Function(WalletErrorState) _then) = _$WalletErrorStateCopyWithImpl;
@useResult
$Res call({
 XError error
});


$XErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$WalletErrorStateCopyWithImpl<$Res>
    implements $WalletErrorStateCopyWith<$Res> {
  _$WalletErrorStateCopyWithImpl(this._self, this._then);

  final WalletErrorState _self;
  final $Res Function(WalletErrorState) _then;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(WalletErrorState(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as XError,
  ));
}

/// Create a copy of WalletState
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
