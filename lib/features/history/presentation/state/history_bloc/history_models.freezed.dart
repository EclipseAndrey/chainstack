// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent()';
}


}

/// @nodoc
class $HistoryEventCopyWith<$Res>  {
$HistoryEventCopyWith(HistoryEvent _, $Res Function(HistoryEvent) __);
}


/// Adds pattern-matching-related methods to [HistoryEvent].
extension HistoryEventPatterns on HistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HistoryRefreshEvent value)?  refresh,TResult Function( HistoryLoadMoreEvent value)?  loadMore,TResult Function( HistoryUpdatedEvent value)?  updated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HistoryRefreshEvent() when refresh != null:
return refresh(_that);case HistoryLoadMoreEvent() when loadMore != null:
return loadMore(_that);case HistoryUpdatedEvent() when updated != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HistoryRefreshEvent value)  refresh,required TResult Function( HistoryLoadMoreEvent value)  loadMore,required TResult Function( HistoryUpdatedEvent value)  updated,}){
final _that = this;
switch (_that) {
case HistoryRefreshEvent():
return refresh(_that);case HistoryLoadMoreEvent():
return loadMore(_that);case HistoryUpdatedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HistoryRefreshEvent value)?  refresh,TResult? Function( HistoryLoadMoreEvent value)?  loadMore,TResult? Function( HistoryUpdatedEvent value)?  updated,}){
final _that = this;
switch (_that) {
case HistoryRefreshEvent() when refresh != null:
return refresh(_that);case HistoryLoadMoreEvent() when loadMore != null:
return loadMore(_that);case HistoryUpdatedEvent() when updated != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int limit)?  refresh,TResult Function( int pageLimit)?  loadMore,TResult Function( Either<XError, List<AddressTxDto>?> data)?  updated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HistoryRefreshEvent() when refresh != null:
return refresh(_that.limit);case HistoryLoadMoreEvent() when loadMore != null:
return loadMore(_that.pageLimit);case HistoryUpdatedEvent() when updated != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int limit)  refresh,required TResult Function( int pageLimit)  loadMore,required TResult Function( Either<XError, List<AddressTxDto>?> data)  updated,}) {final _that = this;
switch (_that) {
case HistoryRefreshEvent():
return refresh(_that.limit);case HistoryLoadMoreEvent():
return loadMore(_that.pageLimit);case HistoryUpdatedEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int limit)?  refresh,TResult? Function( int pageLimit)?  loadMore,TResult? Function( Either<XError, List<AddressTxDto>?> data)?  updated,}) {final _that = this;
switch (_that) {
case HistoryRefreshEvent() when refresh != null:
return refresh(_that.limit);case HistoryLoadMoreEvent() when loadMore != null:
return loadMore(_that.pageLimit);case HistoryUpdatedEvent() when updated != null:
return updated(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class HistoryRefreshEvent implements HistoryEvent {
  const HistoryRefreshEvent({this.limit = 30});
  

@JsonKey() final  int limit;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryRefreshEventCopyWith<HistoryRefreshEvent> get copyWith => _$HistoryRefreshEventCopyWithImpl<HistoryRefreshEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryRefreshEvent&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,limit);

@override
String toString() {
  return 'HistoryEvent.refresh(limit: $limit)';
}


}

/// @nodoc
abstract mixin class $HistoryRefreshEventCopyWith<$Res> implements $HistoryEventCopyWith<$Res> {
  factory $HistoryRefreshEventCopyWith(HistoryRefreshEvent value, $Res Function(HistoryRefreshEvent) _then) = _$HistoryRefreshEventCopyWithImpl;
@useResult
$Res call({
 int limit
});




}
/// @nodoc
class _$HistoryRefreshEventCopyWithImpl<$Res>
    implements $HistoryRefreshEventCopyWith<$Res> {
  _$HistoryRefreshEventCopyWithImpl(this._self, this._then);

  final HistoryRefreshEvent _self;
  final $Res Function(HistoryRefreshEvent) _then;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? limit = null,}) {
  return _then(HistoryRefreshEvent(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class HistoryLoadMoreEvent implements HistoryEvent {
  const HistoryLoadMoreEvent({this.pageLimit = 30});
  

@JsonKey() final  int pageLimit;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryLoadMoreEventCopyWith<HistoryLoadMoreEvent> get copyWith => _$HistoryLoadMoreEventCopyWithImpl<HistoryLoadMoreEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryLoadMoreEvent&&(identical(other.pageLimit, pageLimit) || other.pageLimit == pageLimit));
}


@override
int get hashCode => Object.hash(runtimeType,pageLimit);

@override
String toString() {
  return 'HistoryEvent.loadMore(pageLimit: $pageLimit)';
}


}

/// @nodoc
abstract mixin class $HistoryLoadMoreEventCopyWith<$Res> implements $HistoryEventCopyWith<$Res> {
  factory $HistoryLoadMoreEventCopyWith(HistoryLoadMoreEvent value, $Res Function(HistoryLoadMoreEvent) _then) = _$HistoryLoadMoreEventCopyWithImpl;
@useResult
$Res call({
 int pageLimit
});




}
/// @nodoc
class _$HistoryLoadMoreEventCopyWithImpl<$Res>
    implements $HistoryLoadMoreEventCopyWith<$Res> {
  _$HistoryLoadMoreEventCopyWithImpl(this._self, this._then);

  final HistoryLoadMoreEvent _self;
  final $Res Function(HistoryLoadMoreEvent) _then;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pageLimit = null,}) {
  return _then(HistoryLoadMoreEvent(
pageLimit: null == pageLimit ? _self.pageLimit : pageLimit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class HistoryUpdatedEvent implements HistoryEvent {
  const HistoryUpdatedEvent(this.data);
  

 final  Either<XError, List<AddressTxDto>?> data;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryUpdatedEventCopyWith<HistoryUpdatedEvent> get copyWith => _$HistoryUpdatedEventCopyWithImpl<HistoryUpdatedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryUpdatedEvent&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HistoryEvent.updated(data: $data)';
}


}

/// @nodoc
abstract mixin class $HistoryUpdatedEventCopyWith<$Res> implements $HistoryEventCopyWith<$Res> {
  factory $HistoryUpdatedEventCopyWith(HistoryUpdatedEvent value, $Res Function(HistoryUpdatedEvent) _then) = _$HistoryUpdatedEventCopyWithImpl;
@useResult
$Res call({
 Either<XError, List<AddressTxDto>?> data
});


$EitherCopyWith<XError, List<AddressTxDto>?, $Res> get data;

}
/// @nodoc
class _$HistoryUpdatedEventCopyWithImpl<$Res>
    implements $HistoryUpdatedEventCopyWith<$Res> {
  _$HistoryUpdatedEventCopyWithImpl(this._self, this._then);

  final HistoryUpdatedEvent _self;
  final $Res Function(HistoryUpdatedEvent) _then;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(HistoryUpdatedEvent(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Either<XError, List<AddressTxDto>?>,
  ));
}

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EitherCopyWith<XError, List<AddressTxDto>?, $Res> get data {
  
  return $EitherCopyWith<XError, List<AddressTxDto>?, $Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$HistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState()';
}


}

/// @nodoc
class $HistoryStateCopyWith<$Res>  {
$HistoryStateCopyWith(HistoryState _, $Res Function(HistoryState) __);
}


/// Adds pattern-matching-related methods to [HistoryState].
extension HistoryStatePatterns on HistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HistoryLoadingState value)?  loading,TResult Function( HistoryLoadedState value)?  loaded,TResult Function( HistoryErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HistoryLoadingState() when loading != null:
return loading(_that);case HistoryLoadedState() when loaded != null:
return loaded(_that);case HistoryErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HistoryLoadingState value)  loading,required TResult Function( HistoryLoadedState value)  loaded,required TResult Function( HistoryErrorState value)  error,}){
final _that = this;
switch (_that) {
case HistoryLoadingState():
return loading(_that);case HistoryLoadedState():
return loaded(_that);case HistoryErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HistoryLoadingState value)?  loading,TResult? Function( HistoryLoadedState value)?  loaded,TResult? Function( HistoryErrorState value)?  error,}){
final _that = this;
switch (_that) {
case HistoryLoadingState() when loading != null:
return loading(_that);case HistoryLoadedState() when loaded != null:
return loaded(_that);case HistoryErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<AddressTxDto> items,  String? lastSeenTxid,  bool paging,  bool refreshing,  bool canLoadMore,  XError? error)?  loaded,TResult Function( XError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HistoryLoadingState() when loading != null:
return loading();case HistoryLoadedState() when loaded != null:
return loaded(_that.items,_that.lastSeenTxid,_that.paging,_that.refreshing,_that.canLoadMore,_that.error);case HistoryErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<AddressTxDto> items,  String? lastSeenTxid,  bool paging,  bool refreshing,  bool canLoadMore,  XError? error)  loaded,required TResult Function( XError error)  error,}) {final _that = this;
switch (_that) {
case HistoryLoadingState():
return loading();case HistoryLoadedState():
return loaded(_that.items,_that.lastSeenTxid,_that.paging,_that.refreshing,_that.canLoadMore,_that.error);case HistoryErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<AddressTxDto> items,  String? lastSeenTxid,  bool paging,  bool refreshing,  bool canLoadMore,  XError? error)?  loaded,TResult? Function( XError error)?  error,}) {final _that = this;
switch (_that) {
case HistoryLoadingState() when loading != null:
return loading();case HistoryLoadedState() when loaded != null:
return loaded(_that.items,_that.lastSeenTxid,_that.paging,_that.refreshing,_that.canLoadMore,_that.error);case HistoryErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class HistoryLoadingState implements HistoryState {
  const HistoryLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.loading()';
}


}




/// @nodoc


class HistoryLoadedState implements HistoryState {
  const HistoryLoadedState({final  List<AddressTxDto> items = const <AddressTxDto>[], this.lastSeenTxid, this.paging = false, this.refreshing = false, this.canLoadMore = true, this.error}): _items = items;
  

 final  List<AddressTxDto> _items;
@JsonKey() List<AddressTxDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  String? lastSeenTxid;
@JsonKey() final  bool paging;
@JsonKey() final  bool refreshing;
@JsonKey() final  bool canLoadMore;
 final  XError? error;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryLoadedStateCopyWith<HistoryLoadedState> get copyWith => _$HistoryLoadedStateCopyWithImpl<HistoryLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryLoadedState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.lastSeenTxid, lastSeenTxid) || other.lastSeenTxid == lastSeenTxid)&&(identical(other.paging, paging) || other.paging == paging)&&(identical(other.refreshing, refreshing) || other.refreshing == refreshing)&&(identical(other.canLoadMore, canLoadMore) || other.canLoadMore == canLoadMore)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),lastSeenTxid,paging,refreshing,canLoadMore,error);

@override
String toString() {
  return 'HistoryState.loaded(items: $items, lastSeenTxid: $lastSeenTxid, paging: $paging, refreshing: $refreshing, canLoadMore: $canLoadMore, error: $error)';
}


}

/// @nodoc
abstract mixin class $HistoryLoadedStateCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $HistoryLoadedStateCopyWith(HistoryLoadedState value, $Res Function(HistoryLoadedState) _then) = _$HistoryLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<AddressTxDto> items, String? lastSeenTxid, bool paging, bool refreshing, bool canLoadMore, XError? error
});


$XErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$HistoryLoadedStateCopyWithImpl<$Res>
    implements $HistoryLoadedStateCopyWith<$Res> {
  _$HistoryLoadedStateCopyWithImpl(this._self, this._then);

  final HistoryLoadedState _self;
  final $Res Function(HistoryLoadedState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? lastSeenTxid = freezed,Object? paging = null,Object? refreshing = null,Object? canLoadMore = null,Object? error = freezed,}) {
  return _then(HistoryLoadedState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AddressTxDto>,lastSeenTxid: freezed == lastSeenTxid ? _self.lastSeenTxid : lastSeenTxid // ignore: cast_nullable_to_non_nullable
as String?,paging: null == paging ? _self.paging : paging // ignore: cast_nullable_to_non_nullable
as bool,refreshing: null == refreshing ? _self.refreshing : refreshing // ignore: cast_nullable_to_non_nullable
as bool,canLoadMore: null == canLoadMore ? _self.canLoadMore : canLoadMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as XError?,
  ));
}

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $XErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class HistoryErrorState implements HistoryState {
  const HistoryErrorState(this.error);
  

 final  XError error;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryErrorStateCopyWith<HistoryErrorState> get copyWith => _$HistoryErrorStateCopyWithImpl<HistoryErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryErrorState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HistoryState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $HistoryErrorStateCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $HistoryErrorStateCopyWith(HistoryErrorState value, $Res Function(HistoryErrorState) _then) = _$HistoryErrorStateCopyWithImpl;
@useResult
$Res call({
 XError error
});


$XErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$HistoryErrorStateCopyWithImpl<$Res>
    implements $HistoryErrorStateCopyWith<$Res> {
  _$HistoryErrorStateCopyWithImpl(this._self, this._then);

  final HistoryErrorState _self;
  final $Res Function(HistoryErrorState) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(HistoryErrorState(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as XError,
  ));
}

/// Create a copy of HistoryState
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
