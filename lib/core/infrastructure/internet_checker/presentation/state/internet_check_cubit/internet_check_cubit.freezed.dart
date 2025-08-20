// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_check_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InternetCheckState {

 bool get isConnectedToNetwork; bool get hasRealInternet;
/// Create a copy of InternetCheckState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternetCheckStateCopyWith<InternetCheckState> get copyWith => _$InternetCheckStateCopyWithImpl<InternetCheckState>(this as InternetCheckState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetCheckState&&(identical(other.isConnectedToNetwork, isConnectedToNetwork) || other.isConnectedToNetwork == isConnectedToNetwork)&&(identical(other.hasRealInternet, hasRealInternet) || other.hasRealInternet == hasRealInternet));
}


@override
int get hashCode => Object.hash(runtimeType,isConnectedToNetwork,hasRealInternet);

@override
String toString() {
  return 'InternetCheckState(isConnectedToNetwork: $isConnectedToNetwork, hasRealInternet: $hasRealInternet)';
}


}

/// @nodoc
abstract mixin class $InternetCheckStateCopyWith<$Res>  {
  factory $InternetCheckStateCopyWith(InternetCheckState value, $Res Function(InternetCheckState) _then) = _$InternetCheckStateCopyWithImpl;
@useResult
$Res call({
 bool isConnectedToNetwork, bool hasRealInternet
});




}
/// @nodoc
class _$InternetCheckStateCopyWithImpl<$Res>
    implements $InternetCheckStateCopyWith<$Res> {
  _$InternetCheckStateCopyWithImpl(this._self, this._then);

  final InternetCheckState _self;
  final $Res Function(InternetCheckState) _then;

/// Create a copy of InternetCheckState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isConnectedToNetwork = null,Object? hasRealInternet = null,}) {
  return _then(_self.copyWith(
isConnectedToNetwork: null == isConnectedToNetwork ? _self.isConnectedToNetwork : isConnectedToNetwork // ignore: cast_nullable_to_non_nullable
as bool,hasRealInternet: null == hasRealInternet ? _self.hasRealInternet : hasRealInternet // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InternetCheckState].
extension InternetCheckStatePatterns on InternetCheckState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InternetCheckState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InternetCheckState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InternetCheckState value)  $default,){
final _that = this;
switch (_that) {
case _InternetCheckState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InternetCheckState value)?  $default,){
final _that = this;
switch (_that) {
case _InternetCheckState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isConnectedToNetwork,  bool hasRealInternet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InternetCheckState() when $default != null:
return $default(_that.isConnectedToNetwork,_that.hasRealInternet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isConnectedToNetwork,  bool hasRealInternet)  $default,) {final _that = this;
switch (_that) {
case _InternetCheckState():
return $default(_that.isConnectedToNetwork,_that.hasRealInternet);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isConnectedToNetwork,  bool hasRealInternet)?  $default,) {final _that = this;
switch (_that) {
case _InternetCheckState() when $default != null:
return $default(_that.isConnectedToNetwork,_that.hasRealInternet);case _:
  return null;

}
}

}

/// @nodoc


class _InternetCheckState implements InternetCheckState {
  const _InternetCheckState({required this.isConnectedToNetwork, required this.hasRealInternet});
  

@override final  bool isConnectedToNetwork;
@override final  bool hasRealInternet;

/// Create a copy of InternetCheckState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InternetCheckStateCopyWith<_InternetCheckState> get copyWith => __$InternetCheckStateCopyWithImpl<_InternetCheckState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InternetCheckState&&(identical(other.isConnectedToNetwork, isConnectedToNetwork) || other.isConnectedToNetwork == isConnectedToNetwork)&&(identical(other.hasRealInternet, hasRealInternet) || other.hasRealInternet == hasRealInternet));
}


@override
int get hashCode => Object.hash(runtimeType,isConnectedToNetwork,hasRealInternet);

@override
String toString() {
  return 'InternetCheckState(isConnectedToNetwork: $isConnectedToNetwork, hasRealInternet: $hasRealInternet)';
}


}

/// @nodoc
abstract mixin class _$InternetCheckStateCopyWith<$Res> implements $InternetCheckStateCopyWith<$Res> {
  factory _$InternetCheckStateCopyWith(_InternetCheckState value, $Res Function(_InternetCheckState) _then) = __$InternetCheckStateCopyWithImpl;
@override @useResult
$Res call({
 bool isConnectedToNetwork, bool hasRealInternet
});




}
/// @nodoc
class __$InternetCheckStateCopyWithImpl<$Res>
    implements _$InternetCheckStateCopyWith<$Res> {
  __$InternetCheckStateCopyWithImpl(this._self, this._then);

  final _InternetCheckState _self;
  final $Res Function(_InternetCheckState) _then;

/// Create a copy of InternetCheckState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isConnectedToNetwork = null,Object? hasRealInternet = null,}) {
  return _then(_InternetCheckState(
isConnectedToNetwork: null == isConnectedToNetwork ? _self.isConnectedToNetwork : isConnectedToNetwork // ignore: cast_nullable_to_non_nullable
as bool,hasRealInternet: null == hasRealInternet ? _self.hasRealInternet : hasRealInternet // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
