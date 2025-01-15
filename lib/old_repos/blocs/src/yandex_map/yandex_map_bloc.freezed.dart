// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yandex_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YandexMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitYandexMapEvent value) preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitYandexMapEvent value)? preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitYandexMapEvent value)? preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexMapEventCopyWith<$Res> {
  factory $YandexMapEventCopyWith(
          YandexMapEvent value, $Res Function(YandexMapEvent) then) =
      _$YandexMapEventCopyWithImpl<$Res, YandexMapEvent>;
}

/// @nodoc
class _$YandexMapEventCopyWithImpl<$Res, $Val extends YandexMapEvent>
    implements $YandexMapEventCopyWith<$Res> {
  _$YandexMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YandexMapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitYandexMapEventImplCopyWith<$Res> {
  factory _$$InitYandexMapEventImplCopyWith(_$InitYandexMapEventImpl value,
          $Res Function(_$InitYandexMapEventImpl) then) =
      __$$InitYandexMapEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitYandexMapEventImplCopyWithImpl<$Res>
    extends _$YandexMapEventCopyWithImpl<$Res, _$InitYandexMapEventImpl>
    implements _$$InitYandexMapEventImplCopyWith<$Res> {
  __$$InitYandexMapEventImplCopyWithImpl(_$InitYandexMapEventImpl _value,
      $Res Function(_$InitYandexMapEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of YandexMapEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitYandexMapEventImpl implements InitYandexMapEvent {
  const _$InitYandexMapEventImpl();

  @override
  String toString() {
    return 'YandexMapEvent.preloadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitYandexMapEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
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
    required TResult Function(InitYandexMapEvent value) preloadData,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitYandexMapEvent value)? preloadData,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitYandexMapEvent value)? preloadData,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitYandexMapEvent implements YandexMapEvent {
  const factory InitYandexMapEvent() = _$InitYandexMapEventImpl;
}

/// @nodoc
mixin _$YandexMapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingYandexMapState value) load,
    required TResult Function(InitYandexMapState value) init,
    required TResult Function(PreloadDataCompletedYandexMapState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingYandexMapState value)? load,
    TResult? Function(InitYandexMapState value)? init,
    TResult? Function(PreloadDataCompletedYandexMapState value)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingYandexMapState value)? load,
    TResult Function(InitYandexMapState value)? init,
    TResult Function(PreloadDataCompletedYandexMapState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YandexMapStateCopyWith<$Res> {
  factory $YandexMapStateCopyWith(
          YandexMapState value, $Res Function(YandexMapState) then) =
      _$YandexMapStateCopyWithImpl<$Res, YandexMapState>;
}

/// @nodoc
class _$YandexMapStateCopyWithImpl<$Res, $Val extends YandexMapState>
    implements $YandexMapStateCopyWith<$Res> {
  _$YandexMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YandexMapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingYandexMapStateImplCopyWith<$Res> {
  factory _$$LoadingYandexMapStateImplCopyWith(
          _$LoadingYandexMapStateImpl value,
          $Res Function(_$LoadingYandexMapStateImpl) then) =
      __$$LoadingYandexMapStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingYandexMapStateImplCopyWithImpl<$Res>
    extends _$YandexMapStateCopyWithImpl<$Res, _$LoadingYandexMapStateImpl>
    implements _$$LoadingYandexMapStateImplCopyWith<$Res> {
  __$$LoadingYandexMapStateImplCopyWithImpl(_$LoadingYandexMapStateImpl _value,
      $Res Function(_$LoadingYandexMapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of YandexMapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingYandexMapStateImpl implements LoadingYandexMapState {
  const _$LoadingYandexMapStateImpl();

  @override
  String toString() {
    return 'YandexMapState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingYandexMapStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)
        preloadDataCompleted,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)?
        preloadDataCompleted,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)?
        preloadDataCompleted,
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
    required TResult Function(LoadingYandexMapState value) load,
    required TResult Function(InitYandexMapState value) init,
    required TResult Function(PreloadDataCompletedYandexMapState value)
        preloadDataCompleted,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingYandexMapState value)? load,
    TResult? Function(InitYandexMapState value)? init,
    TResult? Function(PreloadDataCompletedYandexMapState value)?
        preloadDataCompleted,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingYandexMapState value)? load,
    TResult Function(InitYandexMapState value)? init,
    TResult Function(PreloadDataCompletedYandexMapState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingYandexMapState implements YandexMapState {
  const factory LoadingYandexMapState() = _$LoadingYandexMapStateImpl;
}

/// @nodoc
abstract class _$$InitYandexMapStateImplCopyWith<$Res> {
  factory _$$InitYandexMapStateImplCopyWith(_$InitYandexMapStateImpl value,
          $Res Function(_$InitYandexMapStateImpl) then) =
      __$$InitYandexMapStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitYandexMapStateImplCopyWithImpl<$Res>
    extends _$YandexMapStateCopyWithImpl<$Res, _$InitYandexMapStateImpl>
    implements _$$InitYandexMapStateImplCopyWith<$Res> {
  __$$InitYandexMapStateImplCopyWithImpl(_$InitYandexMapStateImpl _value,
      $Res Function(_$InitYandexMapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of YandexMapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitYandexMapStateImpl implements InitYandexMapState {
  const _$InitYandexMapStateImpl();

  @override
  String toString() {
    return 'YandexMapState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitYandexMapStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)
        preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)?
        preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)?
        preloadDataCompleted,
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
    required TResult Function(LoadingYandexMapState value) load,
    required TResult Function(InitYandexMapState value) init,
    required TResult Function(PreloadDataCompletedYandexMapState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingYandexMapState value)? load,
    TResult? Function(InitYandexMapState value)? init,
    TResult? Function(PreloadDataCompletedYandexMapState value)?
        preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingYandexMapState value)? load,
    TResult Function(InitYandexMapState value)? init,
    TResult Function(PreloadDataCompletedYandexMapState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitYandexMapState implements YandexMapState {
  const factory InitYandexMapState() = _$InitYandexMapStateImpl;
}

/// @nodoc
abstract class _$$PreloadDataCompletedYandexMapStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedYandexMapStateImplCopyWith(
          _$PreloadDataCompletedYandexMapStateImpl value,
          $Res Function(_$PreloadDataCompletedYandexMapStateImpl) then) =
      __$$PreloadDataCompletedYandexMapStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ClusterizedPlacemarkCollection collection,
      List<PlacemarkMapObject> listMapObject});
}

/// @nodoc
class __$$PreloadDataCompletedYandexMapStateImplCopyWithImpl<$Res>
    extends _$YandexMapStateCopyWithImpl<$Res,
        _$PreloadDataCompletedYandexMapStateImpl>
    implements _$$PreloadDataCompletedYandexMapStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedYandexMapStateImplCopyWithImpl(
      _$PreloadDataCompletedYandexMapStateImpl _value,
      $Res Function(_$PreloadDataCompletedYandexMapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of YandexMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? listMapObject = null,
  }) {
    return _then(_$PreloadDataCompletedYandexMapStateImpl(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as ClusterizedPlacemarkCollection,
      listMapObject: null == listMapObject
          ? _value._listMapObject
          : listMapObject // ignore: cast_nullable_to_non_nullable
              as List<PlacemarkMapObject>,
    ));
  }
}

/// @nodoc

class _$PreloadDataCompletedYandexMapStateImpl
    implements PreloadDataCompletedYandexMapState {
  const _$PreloadDataCompletedYandexMapStateImpl(
      {required this.collection,
      required final List<PlacemarkMapObject> listMapObject})
      : _listMapObject = listMapObject;

  @override
  final ClusterizedPlacemarkCollection collection;
  final List<PlacemarkMapObject> _listMapObject;
  @override
  List<PlacemarkMapObject> get listMapObject {
    if (_listMapObject is EqualUnmodifiableListView) return _listMapObject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMapObject);
  }

  @override
  String toString() {
    return 'YandexMapState.preloadDataCompleted(collection: $collection, listMapObject: $listMapObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedYandexMapStateImpl &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            const DeepCollectionEquality()
                .equals(other._listMapObject, _listMapObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collection,
      const DeepCollectionEquality().hash(_listMapObject));

  /// Create a copy of YandexMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedYandexMapStateImplCopyWith<
          _$PreloadDataCompletedYandexMapStateImpl>
      get copyWith => __$$PreloadDataCompletedYandexMapStateImplCopyWithImpl<
          _$PreloadDataCompletedYandexMapStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(collection, listMapObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(collection, listMapObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function(ClusterizedPlacemarkCollection collection,
            List<PlacemarkMapObject> listMapObject)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(collection, listMapObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingYandexMapState value) load,
    required TResult Function(InitYandexMapState value) init,
    required TResult Function(PreloadDataCompletedYandexMapState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingYandexMapState value)? load,
    TResult? Function(InitYandexMapState value)? init,
    TResult? Function(PreloadDataCompletedYandexMapState value)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingYandexMapState value)? load,
    TResult Function(InitYandexMapState value)? init,
    TResult Function(PreloadDataCompletedYandexMapState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedYandexMapState implements YandexMapState {
  const factory PreloadDataCompletedYandexMapState(
          {required final ClusterizedPlacemarkCollection collection,
          required final List<PlacemarkMapObject> listMapObject}) =
      _$PreloadDataCompletedYandexMapStateImpl;

  ClusterizedPlacemarkCollection get collection;
  List<PlacemarkMapObject> get listMapObject;

  /// Create a copy of YandexMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreloadDataCompletedYandexMapStateImplCopyWith<
          _$PreloadDataCompletedYandexMapStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
