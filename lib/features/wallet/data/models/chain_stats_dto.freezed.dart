// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_stats_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChainStatsDto {

/// Сумма входящих (funded) и исходящих (spent) в сатоши
 int get fundedTxoSum; int get spentTxoSum;/// Кол-во UTXO/tx (не используем)
 int? get fundedTxoCount; int? get spentTxoCount; int? get txCount;
/// Create a copy of ChainStatsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChainStatsDtoCopyWith<ChainStatsDto> get copyWith => _$ChainStatsDtoCopyWithImpl<ChainStatsDto>(this as ChainStatsDto, _$identity);

  /// Serializes this ChainStatsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChainStatsDto&&(identical(other.fundedTxoSum, fundedTxoSum) || other.fundedTxoSum == fundedTxoSum)&&(identical(other.spentTxoSum, spentTxoSum) || other.spentTxoSum == spentTxoSum)&&(identical(other.fundedTxoCount, fundedTxoCount) || other.fundedTxoCount == fundedTxoCount)&&(identical(other.spentTxoCount, spentTxoCount) || other.spentTxoCount == spentTxoCount)&&(identical(other.txCount, txCount) || other.txCount == txCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fundedTxoSum,spentTxoSum,fundedTxoCount,spentTxoCount,txCount);

@override
String toString() {
  return 'ChainStatsDto(fundedTxoSum: $fundedTxoSum, spentTxoSum: $spentTxoSum, fundedTxoCount: $fundedTxoCount, spentTxoCount: $spentTxoCount, txCount: $txCount)';
}


}

/// @nodoc
abstract mixin class $ChainStatsDtoCopyWith<$Res>  {
  factory $ChainStatsDtoCopyWith(ChainStatsDto value, $Res Function(ChainStatsDto) _then) = _$ChainStatsDtoCopyWithImpl;
@useResult
$Res call({
 int fundedTxoSum, int spentTxoSum, int? fundedTxoCount, int? spentTxoCount, int? txCount
});




}
/// @nodoc
class _$ChainStatsDtoCopyWithImpl<$Res>
    implements $ChainStatsDtoCopyWith<$Res> {
  _$ChainStatsDtoCopyWithImpl(this._self, this._then);

  final ChainStatsDto _self;
  final $Res Function(ChainStatsDto) _then;

/// Create a copy of ChainStatsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fundedTxoSum = null,Object? spentTxoSum = null,Object? fundedTxoCount = freezed,Object? spentTxoCount = freezed,Object? txCount = freezed,}) {
  return _then(_self.copyWith(
fundedTxoSum: null == fundedTxoSum ? _self.fundedTxoSum : fundedTxoSum // ignore: cast_nullable_to_non_nullable
as int,spentTxoSum: null == spentTxoSum ? _self.spentTxoSum : spentTxoSum // ignore: cast_nullable_to_non_nullable
as int,fundedTxoCount: freezed == fundedTxoCount ? _self.fundedTxoCount : fundedTxoCount // ignore: cast_nullable_to_non_nullable
as int?,spentTxoCount: freezed == spentTxoCount ? _self.spentTxoCount : spentTxoCount // ignore: cast_nullable_to_non_nullable
as int?,txCount: freezed == txCount ? _self.txCount : txCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChainStatsDto].
extension ChainStatsDtoPatterns on ChainStatsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChainStatsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChainStatsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChainStatsDto value)  $default,){
final _that = this;
switch (_that) {
case _ChainStatsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChainStatsDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChainStatsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fundedTxoSum,  int spentTxoSum,  int? fundedTxoCount,  int? spentTxoCount,  int? txCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChainStatsDto() when $default != null:
return $default(_that.fundedTxoSum,_that.spentTxoSum,_that.fundedTxoCount,_that.spentTxoCount,_that.txCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fundedTxoSum,  int spentTxoSum,  int? fundedTxoCount,  int? spentTxoCount,  int? txCount)  $default,) {final _that = this;
switch (_that) {
case _ChainStatsDto():
return $default(_that.fundedTxoSum,_that.spentTxoSum,_that.fundedTxoCount,_that.spentTxoCount,_that.txCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fundedTxoSum,  int spentTxoSum,  int? fundedTxoCount,  int? spentTxoCount,  int? txCount)?  $default,) {final _that = this;
switch (_that) {
case _ChainStatsDto() when $default != null:
return $default(_that.fundedTxoSum,_that.spentTxoSum,_that.fundedTxoCount,_that.spentTxoCount,_that.txCount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ChainStatsDto implements ChainStatsDto {
  const _ChainStatsDto({required this.fundedTxoSum, required this.spentTxoSum, this.fundedTxoCount, this.spentTxoCount, this.txCount});
  factory _ChainStatsDto.fromJson(Map<String, dynamic> json) => _$ChainStatsDtoFromJson(json);

/// Сумма входящих (funded) и исходящих (spent) в сатоши
@override final  int fundedTxoSum;
@override final  int spentTxoSum;
/// Кол-во UTXO/tx (не используем)
@override final  int? fundedTxoCount;
@override final  int? spentTxoCount;
@override final  int? txCount;

/// Create a copy of ChainStatsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainStatsDtoCopyWith<_ChainStatsDto> get copyWith => __$ChainStatsDtoCopyWithImpl<_ChainStatsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChainStatsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainStatsDto&&(identical(other.fundedTxoSum, fundedTxoSum) || other.fundedTxoSum == fundedTxoSum)&&(identical(other.spentTxoSum, spentTxoSum) || other.spentTxoSum == spentTxoSum)&&(identical(other.fundedTxoCount, fundedTxoCount) || other.fundedTxoCount == fundedTxoCount)&&(identical(other.spentTxoCount, spentTxoCount) || other.spentTxoCount == spentTxoCount)&&(identical(other.txCount, txCount) || other.txCount == txCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fundedTxoSum,spentTxoSum,fundedTxoCount,spentTxoCount,txCount);

@override
String toString() {
  return 'ChainStatsDto(fundedTxoSum: $fundedTxoSum, spentTxoSum: $spentTxoSum, fundedTxoCount: $fundedTxoCount, spentTxoCount: $spentTxoCount, txCount: $txCount)';
}


}

/// @nodoc
abstract mixin class _$ChainStatsDtoCopyWith<$Res> implements $ChainStatsDtoCopyWith<$Res> {
  factory _$ChainStatsDtoCopyWith(_ChainStatsDto value, $Res Function(_ChainStatsDto) _then) = __$ChainStatsDtoCopyWithImpl;
@override @useResult
$Res call({
 int fundedTxoSum, int spentTxoSum, int? fundedTxoCount, int? spentTxoCount, int? txCount
});




}
/// @nodoc
class __$ChainStatsDtoCopyWithImpl<$Res>
    implements _$ChainStatsDtoCopyWith<$Res> {
  __$ChainStatsDtoCopyWithImpl(this._self, this._then);

  final _ChainStatsDto _self;
  final $Res Function(_ChainStatsDto) _then;

/// Create a copy of ChainStatsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fundedTxoSum = null,Object? spentTxoSum = null,Object? fundedTxoCount = freezed,Object? spentTxoCount = freezed,Object? txCount = freezed,}) {
  return _then(_ChainStatsDto(
fundedTxoSum: null == fundedTxoSum ? _self.fundedTxoSum : fundedTxoSum // ignore: cast_nullable_to_non_nullable
as int,spentTxoSum: null == spentTxoSum ? _self.spentTxoSum : spentTxoSum // ignore: cast_nullable_to_non_nullable
as int,fundedTxoCount: freezed == fundedTxoCount ? _self.fundedTxoCount : fundedTxoCount // ignore: cast_nullable_to_non_nullable
as int?,spentTxoCount: freezed == spentTxoCount ? _self.spentTxoCount : spentTxoCount // ignore: cast_nullable_to_non_nullable
as int?,txCount: freezed == txCount ? _self.txCount : txCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
