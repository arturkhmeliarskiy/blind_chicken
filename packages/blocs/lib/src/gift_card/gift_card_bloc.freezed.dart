// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GiftCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(String search) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(String search)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(String search)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(SearchGiftCardEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(SearchGiftCardEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(SearchGiftCardEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardEventCopyWith<$Res> {
  factory $GiftCardEventCopyWith(
          GiftCardEvent value, $Res Function(GiftCardEvent) then) =
      _$GiftCardEventCopyWithImpl<$Res, GiftCardEvent>;
}

/// @nodoc
class _$GiftCardEventCopyWithImpl<$Res, $Val extends GiftCardEvent>
    implements $GiftCardEventCopyWith<$Res> {
  _$GiftCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitGiftCardEventImplCopyWith<$Res> {
  factory _$$InitGiftCardEventImplCopyWith(_$InitGiftCardEventImpl value,
          $Res Function(_$InitGiftCardEventImpl) then) =
      __$$InitGiftCardEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res, _$InitGiftCardEventImpl>
    implements _$$InitGiftCardEventImplCopyWith<$Res> {
  __$$InitGiftCardEventImplCopyWithImpl(_$InitGiftCardEventImpl _value,
      $Res Function(_$InitGiftCardEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitGiftCardEventImpl implements InitGiftCardEvent {
  const _$InitGiftCardEventImpl();

  @override
  String toString() {
    return 'GiftCardEvent.preloadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitGiftCardEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(String search) search,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(String search)? search,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(String search)? search,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(SearchGiftCardEvent value) search,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(SearchGiftCardEvent value)? search,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(SearchGiftCardEvent value)? search,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitGiftCardEvent implements GiftCardEvent {
  const factory InitGiftCardEvent() = _$InitGiftCardEventImpl;
}

/// @nodoc
abstract class _$$SearchGiftCardEventImplCopyWith<$Res> {
  factory _$$SearchGiftCardEventImplCopyWith(_$SearchGiftCardEventImpl value,
          $Res Function(_$SearchGiftCardEventImpl) then) =
      __$$SearchGiftCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SearchGiftCardEventImplCopyWithImpl<$Res>
    extends _$GiftCardEventCopyWithImpl<$Res, _$SearchGiftCardEventImpl>
    implements _$$SearchGiftCardEventImplCopyWith<$Res> {
  __$$SearchGiftCardEventImplCopyWithImpl(_$SearchGiftCardEventImpl _value,
      $Res Function(_$SearchGiftCardEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SearchGiftCardEventImpl(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchGiftCardEventImpl implements SearchGiftCardEvent {
  const _$SearchGiftCardEventImpl(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'GiftCardEvent.search(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchGiftCardEventImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchGiftCardEventImplCopyWith<_$SearchGiftCardEventImpl> get copyWith =>
      __$$SearchGiftCardEventImplCopyWithImpl<_$SearchGiftCardEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(String search) search,
  }) {
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(String search)? search,
  }) {
    return search?.call(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(String search)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this.search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardEvent value) preloadData,
    required TResult Function(SearchGiftCardEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardEvent value)? preloadData,
    TResult? Function(SearchGiftCardEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardEvent value)? preloadData,
    TResult Function(SearchGiftCardEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchGiftCardEvent implements GiftCardEvent {
  const factory SearchGiftCardEvent(final String search) =
      _$SearchGiftCardEventImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$SearchGiftCardEventImplCopyWith<_$SearchGiftCardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GiftCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(List<String> searchResult) preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(List<String> searchResult)? preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(List<String> searchResult)? preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardStateCopyWith<$Res> {
  factory $GiftCardStateCopyWith(
          GiftCardState value, $Res Function(GiftCardState) then) =
      _$GiftCardStateCopyWithImpl<$Res, GiftCardState>;
}

/// @nodoc
class _$GiftCardStateCopyWithImpl<$Res, $Val extends GiftCardState>
    implements $GiftCardStateCopyWith<$Res> {
  _$GiftCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitGiftCardStateImplCopyWith<$Res> {
  factory _$$InitGiftCardStateImplCopyWith(_$InitGiftCardStateImpl value,
          $Res Function(_$InitGiftCardStateImpl) then) =
      __$$InitGiftCardStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res, _$InitGiftCardStateImpl>
    implements _$$InitGiftCardStateImplCopyWith<$Res> {
  __$$InitGiftCardStateImplCopyWithImpl(_$InitGiftCardStateImpl _value,
      $Res Function(_$InitGiftCardStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitGiftCardStateImpl implements InitGiftCardState {
  const _$InitGiftCardStateImpl();

  @override
  String toString() {
    return 'GiftCardState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitGiftCardStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(List<String> searchResult) preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(List<String> searchResult)? preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(List<String> searchResult)? preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitGiftCardState implements GiftCardState {
  const factory InitGiftCardState() = _$InitGiftCardStateImpl;
}

/// @nodoc
abstract class _$$LoadingGiftCardStateImplCopyWith<$Res> {
  factory _$$LoadingGiftCardStateImplCopyWith(_$LoadingGiftCardStateImpl value,
          $Res Function(_$LoadingGiftCardStateImpl) then) =
      __$$LoadingGiftCardStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res, _$LoadingGiftCardStateImpl>
    implements _$$LoadingGiftCardStateImplCopyWith<$Res> {
  __$$LoadingGiftCardStateImplCopyWithImpl(_$LoadingGiftCardStateImpl _value,
      $Res Function(_$LoadingGiftCardStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingGiftCardStateImpl implements LoadingGiftCardState {
  const _$LoadingGiftCardStateImpl();

  @override
  String toString() {
    return 'GiftCardState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingGiftCardStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(List<String> searchResult) preloadDataCompleted,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(List<String> searchResult)? preloadDataCompleted,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(List<String> searchResult)? preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingGiftCardState implements GiftCardState {
  const factory LoadingGiftCardState() = _$LoadingGiftCardStateImpl;
}

/// @nodoc
abstract class _$$PreloadDataGiftCardStateImplCopyWith<$Res> {
  factory _$$PreloadDataGiftCardStateImplCopyWith(
          _$PreloadDataGiftCardStateImpl value,
          $Res Function(_$PreloadDataGiftCardStateImpl) then) =
      __$$PreloadDataGiftCardStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> searchResult});
}

/// @nodoc
class __$$PreloadDataGiftCardStateImplCopyWithImpl<$Res>
    extends _$GiftCardStateCopyWithImpl<$Res, _$PreloadDataGiftCardStateImpl>
    implements _$$PreloadDataGiftCardStateImplCopyWith<$Res> {
  __$$PreloadDataGiftCardStateImplCopyWithImpl(
      _$PreloadDataGiftCardStateImpl _value,
      $Res Function(_$PreloadDataGiftCardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
  }) {
    return _then(_$PreloadDataGiftCardStateImpl(
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PreloadDataGiftCardStateImpl implements PreloadDataGiftCardState {
  const _$PreloadDataGiftCardStateImpl(
      {required final List<String> searchResult})
      : _searchResult = searchResult;

  final List<String> _searchResult;
  @override
  List<String> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'GiftCardState.preloadDataCompleted(searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataGiftCardStateImpl &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataGiftCardStateImplCopyWith<_$PreloadDataGiftCardStateImpl>
      get copyWith => __$$PreloadDataGiftCardStateImplCopyWithImpl<
          _$PreloadDataGiftCardStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(List<String> searchResult) preloadDataCompleted,
  }) {
    return preloadDataCompleted(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(List<String> searchResult)? preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(searchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(List<String> searchResult)? preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(searchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitGiftCardState value) init,
    required TResult Function(LoadingGiftCardState value) load,
    required TResult Function(PreloadDataGiftCardState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitGiftCardState value)? init,
    TResult? Function(LoadingGiftCardState value)? load,
    TResult? Function(PreloadDataGiftCardState value)? preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitGiftCardState value)? init,
    TResult Function(LoadingGiftCardState value)? load,
    TResult Function(PreloadDataGiftCardState value)? preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataGiftCardState implements GiftCardState {
  const factory PreloadDataGiftCardState(
          {required final List<String> searchResult}) =
      _$PreloadDataGiftCardStateImpl;

  List<String> get searchResult;
  @JsonKey(ignore: true)
  _$$PreloadDataGiftCardStateImplCopyWith<_$PreloadDataGiftCardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
