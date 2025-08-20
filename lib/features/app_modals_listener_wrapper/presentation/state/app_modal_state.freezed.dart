// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_modal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppModalState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppModalState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppModalState()';
}


}

/// @nodoc
class $AppModalStateCopyWith<$Res>  {
$AppModalStateCopyWith(AppModalState _, $Res Function(AppModalState) __);
}


/// Adds pattern-matching-related methods to [AppModalState].
extension AppModalStatePatterns on AppModalState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppModalHidden value)?  hidden,TResult Function( AppModalShown value)?  shown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppModalHidden() when hidden != null:
return hidden(_that);case AppModalShown() when shown != null:
return shown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppModalHidden value)  hidden,required TResult Function( AppModalShown value)  shown,}){
final _that = this;
switch (_that) {
case AppModalHidden():
return hidden(_that);case AppModalShown():
return shown(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppModalHidden value)?  hidden,TResult? Function( AppModalShown value)?  shown,}){
final _that = this;
switch (_that) {
case AppModalHidden() when hidden != null:
return hidden(_that);case AppModalShown() when shown != null:
return shown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  hidden,TResult Function( dynamic params)?  shown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppModalHidden() when hidden != null:
return hidden();case AppModalShown() when shown != null:
return shown(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  hidden,required TResult Function( dynamic params)  shown,}) {final _that = this;
switch (_that) {
case AppModalHidden():
return hidden();case AppModalShown():
return shown(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  hidden,TResult? Function( dynamic params)?  shown,}) {final _that = this;
switch (_that) {
case AppModalHidden() when hidden != null:
return hidden();case AppModalShown() when shown != null:
return shown(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class AppModalHidden implements AppModalState {
  const AppModalHidden();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppModalHidden);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppModalState.hidden()';
}


}




/// @nodoc


class AppModalShown implements AppModalState {
  const AppModalShown({this.params});
  

 final  dynamic params;

/// Create a copy of AppModalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppModalShownCopyWith<AppModalShown> get copyWith => _$AppModalShownCopyWithImpl<AppModalShown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppModalShown&&const DeepCollectionEquality().equals(other.params, params));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'AppModalState.shown(params: $params)';
}


}

/// @nodoc
abstract mixin class $AppModalShownCopyWith<$Res> implements $AppModalStateCopyWith<$Res> {
  factory $AppModalShownCopyWith(AppModalShown value, $Res Function(AppModalShown) _then) = _$AppModalShownCopyWithImpl;
@useResult
$Res call({
 dynamic params
});




}
/// @nodoc
class _$AppModalShownCopyWithImpl<$Res>
    implements $AppModalShownCopyWith<$Res> {
  _$AppModalShownCopyWithImpl(this._self, this._then);

  final AppModalShown _self;
  final $Res Function(AppModalShown) _then;

/// Create a copy of AppModalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = freezed,}) {
  return _then(AppModalShown(
params: freezed == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
