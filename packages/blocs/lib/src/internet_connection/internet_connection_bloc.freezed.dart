// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InternetConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(ConnectivityResult status)
        checkInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(ConnectivityResult status)? checkInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(ConnectivityResult status)? checkInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitInternetConnectionEvent value) init,
    required TResult Function(PreloadDataInternetConnectionEvent value)
        preloadData,
    required TResult Function(CheckInitInternetConnectionEvent value)
        checkInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitInternetConnectionEvent value)? init,
    TResult? Function(PreloadDataInternetConnectionEvent value)? preloadData,
    TResult? Function(CheckInitInternetConnectionEvent value)?
        checkInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitInternetConnectionEvent value)? init,
    TResult Function(PreloadDataInternetConnectionEvent value)? preloadData,
    TResult Function(CheckInitInternetConnectionEvent value)?
        checkInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionEventCopyWith<$Res> {
  factory $InternetConnectionEventCopyWith(InternetConnectionEvent value,
          $Res Function(InternetConnectionEvent) then) =
      _$InternetConnectionEventCopyWithImpl<$Res, InternetConnectionEvent>;
}

/// @nodoc
class _$InternetConnectionEventCopyWithImpl<$Res,
        $Val extends InternetConnectionEvent>
    implements $InternetConnectionEventCopyWith<$Res> {
  _$InternetConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitInternetConnectionEventImplCopyWith<$Res> {
  factory _$$InitInternetConnectionEventImplCopyWith(
          _$InitInternetConnectionEventImpl value,
          $Res Function(_$InitInternetConnectionEventImpl) then) =
      __$$InitInternetConnectionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitInternetConnectionEventImplCopyWithImpl<$Res>
    extends _$InternetConnectionEventCopyWithImpl<$Res,
        _$InitInternetConnectionEventImpl>
    implements _$$InitInternetConnectionEventImplCopyWith<$Res> {
  __$$InitInternetConnectionEventImplCopyWithImpl(
      _$InitInternetConnectionEventImpl _value,
      $Res Function(_$InitInternetConnectionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitInternetConnectionEventImpl implements InitInternetConnectionEvent {
  const _$InitInternetConnectionEventImpl();

  @override
  String toString() {
    return 'InternetConnectionEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitInternetConnectionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(ConnectivityResult status)
        checkInternetConnection,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(ConnectivityResult status)? checkInternetConnection,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(ConnectivityResult status)? checkInternetConnection,
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
    required TResult Function(InitInternetConnectionEvent value) init,
    required TResult Function(PreloadDataInternetConnectionEvent value)
        preloadData,
    required TResult Function(CheckInitInternetConnectionEvent value)
        checkInternetConnection,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitInternetConnectionEvent value)? init,
    TResult? Function(PreloadDataInternetConnectionEvent value)? preloadData,
    TResult? Function(CheckInitInternetConnectionEvent value)?
        checkInternetConnection,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitInternetConnectionEvent value)? init,
    TResult Function(PreloadDataInternetConnectionEvent value)? preloadData,
    TResult Function(CheckInitInternetConnectionEvent value)?
        checkInternetConnection,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitInternetConnectionEvent implements InternetConnectionEvent {
  const factory InitInternetConnectionEvent() =
      _$InitInternetConnectionEventImpl;
}

/// @nodoc
abstract class _$$PreloadDataInternetConnectionEventImplCopyWith<$Res> {
  factory _$$PreloadDataInternetConnectionEventImplCopyWith(
          _$PreloadDataInternetConnectionEventImpl value,
          $Res Function(_$PreloadDataInternetConnectionEventImpl) then) =
      __$$PreloadDataInternetConnectionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreloadDataInternetConnectionEventImplCopyWithImpl<$Res>
    extends _$InternetConnectionEventCopyWithImpl<$Res,
        _$PreloadDataInternetConnectionEventImpl>
    implements _$$PreloadDataInternetConnectionEventImplCopyWith<$Res> {
  __$$PreloadDataInternetConnectionEventImplCopyWithImpl(
      _$PreloadDataInternetConnectionEventImpl _value,
      $Res Function(_$PreloadDataInternetConnectionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PreloadDataInternetConnectionEventImpl
    implements PreloadDataInternetConnectionEvent {
  const _$PreloadDataInternetConnectionEventImpl();

  @override
  String toString() {
    return 'InternetConnectionEvent.preloadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataInternetConnectionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(ConnectivityResult status)
        checkInternetConnection,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(ConnectivityResult status)? checkInternetConnection,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(ConnectivityResult status)? checkInternetConnection,
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
    required TResult Function(InitInternetConnectionEvent value) init,
    required TResult Function(PreloadDataInternetConnectionEvent value)
        preloadData,
    required TResult Function(CheckInitInternetConnectionEvent value)
        checkInternetConnection,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitInternetConnectionEvent value)? init,
    TResult? Function(PreloadDataInternetConnectionEvent value)? preloadData,
    TResult? Function(CheckInitInternetConnectionEvent value)?
        checkInternetConnection,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitInternetConnectionEvent value)? init,
    TResult Function(PreloadDataInternetConnectionEvent value)? preloadData,
    TResult Function(CheckInitInternetConnectionEvent value)?
        checkInternetConnection,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class PreloadDataInternetConnectionEvent
    implements InternetConnectionEvent {
  const factory PreloadDataInternetConnectionEvent() =
      _$PreloadDataInternetConnectionEventImpl;
}

/// @nodoc
abstract class _$$CheckInitInternetConnectionEventImplCopyWith<$Res> {
  factory _$$CheckInitInternetConnectionEventImplCopyWith(
          _$CheckInitInternetConnectionEventImpl value,
          $Res Function(_$CheckInitInternetConnectionEventImpl) then) =
      __$$CheckInitInternetConnectionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult status});
}

/// @nodoc
class __$$CheckInitInternetConnectionEventImplCopyWithImpl<$Res>
    extends _$InternetConnectionEventCopyWithImpl<$Res,
        _$CheckInitInternetConnectionEventImpl>
    implements _$$CheckInitInternetConnectionEventImplCopyWith<$Res> {
  __$$CheckInitInternetConnectionEventImplCopyWithImpl(
      _$CheckInitInternetConnectionEventImpl _value,
      $Res Function(_$CheckInitInternetConnectionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$CheckInitInternetConnectionEventImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$CheckInitInternetConnectionEventImpl
    implements CheckInitInternetConnectionEvent {
  const _$CheckInitInternetConnectionEventImpl({required this.status});

// required InternetStatus status,
  @override
  final ConnectivityResult status;

  @override
  String toString() {
    return 'InternetConnectionEvent.checkInternetConnection(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInitInternetConnectionEventImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInitInternetConnectionEventImplCopyWith<
          _$CheckInitInternetConnectionEventImpl>
      get copyWith => __$$CheckInitInternetConnectionEventImplCopyWithImpl<
          _$CheckInitInternetConnectionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() preloadData,
    required TResult Function(ConnectivityResult status)
        checkInternetConnection,
  }) {
    return checkInternetConnection(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? preloadData,
    TResult? Function(ConnectivityResult status)? checkInternetConnection,
  }) {
    return checkInternetConnection?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? preloadData,
    TResult Function(ConnectivityResult status)? checkInternetConnection,
    required TResult orElse(),
  }) {
    if (checkInternetConnection != null) {
      return checkInternetConnection(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitInternetConnectionEvent value) init,
    required TResult Function(PreloadDataInternetConnectionEvent value)
        preloadData,
    required TResult Function(CheckInitInternetConnectionEvent value)
        checkInternetConnection,
  }) {
    return checkInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitInternetConnectionEvent value)? init,
    TResult? Function(PreloadDataInternetConnectionEvent value)? preloadData,
    TResult? Function(CheckInitInternetConnectionEvent value)?
        checkInternetConnection,
  }) {
    return checkInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitInternetConnectionEvent value)? init,
    TResult Function(PreloadDataInternetConnectionEvent value)? preloadData,
    TResult Function(CheckInitInternetConnectionEvent value)?
        checkInternetConnection,
    required TResult orElse(),
  }) {
    if (checkInternetConnection != null) {
      return checkInternetConnection(this);
    }
    return orElse();
  }
}

abstract class CheckInitInternetConnectionEvent
    implements InternetConnectionEvent {
  const factory CheckInitInternetConnectionEvent(
          {required final ConnectivityResult status}) =
      _$CheckInitInternetConnectionEventImpl;

// required InternetStatus status,
  ConnectivityResult get status;
  @JsonKey(ignore: true)
  _$$CheckInitInternetConnectionEventImplCopyWith<
          _$CheckInitInternetConnectionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternetConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function() active,
    required TResult Function() notActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function()? active,
    TResult? Function()? notActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function()? active,
    TResult Function()? notActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInternetConnectionState value) load,
    required TResult Function(InitInternetConnectionState value) init,
    required TResult Function(ActiveInternetConnectionState value) active,
    required TResult Function(NotActiveInternetConnectionState value) notActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInternetConnectionState value)? load,
    TResult? Function(InitInternetConnectionState value)? init,
    TResult? Function(ActiveInternetConnectionState value)? active,
    TResult? Function(NotActiveInternetConnectionState value)? notActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetConnectionState value)? load,
    TResult Function(InitInternetConnectionState value)? init,
    TResult Function(ActiveInternetConnectionState value)? active,
    TResult Function(NotActiveInternetConnectionState value)? notActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionStateCopyWith<$Res> {
  factory $InternetConnectionStateCopyWith(InternetConnectionState value,
          $Res Function(InternetConnectionState) then) =
      _$InternetConnectionStateCopyWithImpl<$Res, InternetConnectionState>;
}

/// @nodoc
class _$InternetConnectionStateCopyWithImpl<$Res,
        $Val extends InternetConnectionState>
    implements $InternetConnectionStateCopyWith<$Res> {
  _$InternetConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingInternetConnectionStateImplCopyWith<$Res> {
  factory _$$LoadingInternetConnectionStateImplCopyWith(
          _$LoadingInternetConnectionStateImpl value,
          $Res Function(_$LoadingInternetConnectionStateImpl) then) =
      __$$LoadingInternetConnectionStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingInternetConnectionStateImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res,
        _$LoadingInternetConnectionStateImpl>
    implements _$$LoadingInternetConnectionStateImplCopyWith<$Res> {
  __$$LoadingInternetConnectionStateImplCopyWithImpl(
      _$LoadingInternetConnectionStateImpl _value,
      $Res Function(_$LoadingInternetConnectionStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingInternetConnectionStateImpl
    implements LoadingInternetConnectionState {
  const _$LoadingInternetConnectionStateImpl();

  @override
  String toString() {
    return 'InternetConnectionState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingInternetConnectionStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function() active,
    required TResult Function() notActive,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function()? active,
    TResult? Function()? notActive,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function()? active,
    TResult Function()? notActive,
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
    required TResult Function(LoadingInternetConnectionState value) load,
    required TResult Function(InitInternetConnectionState value) init,
    required TResult Function(ActiveInternetConnectionState value) active,
    required TResult Function(NotActiveInternetConnectionState value) notActive,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInternetConnectionState value)? load,
    TResult? Function(InitInternetConnectionState value)? init,
    TResult? Function(ActiveInternetConnectionState value)? active,
    TResult? Function(NotActiveInternetConnectionState value)? notActive,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetConnectionState value)? load,
    TResult Function(InitInternetConnectionState value)? init,
    TResult Function(ActiveInternetConnectionState value)? active,
    TResult Function(NotActiveInternetConnectionState value)? notActive,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingInternetConnectionState
    implements InternetConnectionState {
  const factory LoadingInternetConnectionState() =
      _$LoadingInternetConnectionStateImpl;
}

/// @nodoc
abstract class _$$InitInternetConnectionStateImplCopyWith<$Res> {
  factory _$$InitInternetConnectionStateImplCopyWith(
          _$InitInternetConnectionStateImpl value,
          $Res Function(_$InitInternetConnectionStateImpl) then) =
      __$$InitInternetConnectionStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitInternetConnectionStateImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res,
        _$InitInternetConnectionStateImpl>
    implements _$$InitInternetConnectionStateImplCopyWith<$Res> {
  __$$InitInternetConnectionStateImplCopyWithImpl(
      _$InitInternetConnectionStateImpl _value,
      $Res Function(_$InitInternetConnectionStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitInternetConnectionStateImpl implements InitInternetConnectionState {
  const _$InitInternetConnectionStateImpl();

  @override
  String toString() {
    return 'InternetConnectionState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitInternetConnectionStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function() active,
    required TResult Function() notActive,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function()? active,
    TResult? Function()? notActive,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function()? active,
    TResult Function()? notActive,
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
    required TResult Function(LoadingInternetConnectionState value) load,
    required TResult Function(InitInternetConnectionState value) init,
    required TResult Function(ActiveInternetConnectionState value) active,
    required TResult Function(NotActiveInternetConnectionState value) notActive,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInternetConnectionState value)? load,
    TResult? Function(InitInternetConnectionState value)? init,
    TResult? Function(ActiveInternetConnectionState value)? active,
    TResult? Function(NotActiveInternetConnectionState value)? notActive,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetConnectionState value)? load,
    TResult Function(InitInternetConnectionState value)? init,
    TResult Function(ActiveInternetConnectionState value)? active,
    TResult Function(NotActiveInternetConnectionState value)? notActive,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitInternetConnectionState implements InternetConnectionState {
  const factory InitInternetConnectionState() =
      _$InitInternetConnectionStateImpl;
}

/// @nodoc
abstract class _$$ActiveInternetConnectionStateImplCopyWith<$Res> {
  factory _$$ActiveInternetConnectionStateImplCopyWith(
          _$ActiveInternetConnectionStateImpl value,
          $Res Function(_$ActiveInternetConnectionStateImpl) then) =
      __$$ActiveInternetConnectionStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveInternetConnectionStateImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res,
        _$ActiveInternetConnectionStateImpl>
    implements _$$ActiveInternetConnectionStateImplCopyWith<$Res> {
  __$$ActiveInternetConnectionStateImplCopyWithImpl(
      _$ActiveInternetConnectionStateImpl _value,
      $Res Function(_$ActiveInternetConnectionStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActiveInternetConnectionStateImpl
    implements ActiveInternetConnectionState {
  const _$ActiveInternetConnectionStateImpl();

  @override
  String toString() {
    return 'InternetConnectionState.active()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveInternetConnectionStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function() active,
    required TResult Function() notActive,
  }) {
    return active();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function()? active,
    TResult? Function()? notActive,
  }) {
    return active?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function()? active,
    TResult Function()? notActive,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInternetConnectionState value) load,
    required TResult Function(InitInternetConnectionState value) init,
    required TResult Function(ActiveInternetConnectionState value) active,
    required TResult Function(NotActiveInternetConnectionState value) notActive,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInternetConnectionState value)? load,
    TResult? Function(InitInternetConnectionState value)? init,
    TResult? Function(ActiveInternetConnectionState value)? active,
    TResult? Function(NotActiveInternetConnectionState value)? notActive,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetConnectionState value)? load,
    TResult Function(InitInternetConnectionState value)? init,
    TResult Function(ActiveInternetConnectionState value)? active,
    TResult Function(NotActiveInternetConnectionState value)? notActive,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class ActiveInternetConnectionState
    implements InternetConnectionState {
  const factory ActiveInternetConnectionState() =
      _$ActiveInternetConnectionStateImpl;
}

/// @nodoc
abstract class _$$NotActiveInternetConnectionStateImplCopyWith<$Res> {
  factory _$$NotActiveInternetConnectionStateImplCopyWith(
          _$NotActiveInternetConnectionStateImpl value,
          $Res Function(_$NotActiveInternetConnectionStateImpl) then) =
      __$$NotActiveInternetConnectionStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotActiveInternetConnectionStateImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res,
        _$NotActiveInternetConnectionStateImpl>
    implements _$$NotActiveInternetConnectionStateImplCopyWith<$Res> {
  __$$NotActiveInternetConnectionStateImplCopyWithImpl(
      _$NotActiveInternetConnectionStateImpl _value,
      $Res Function(_$NotActiveInternetConnectionStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotActiveInternetConnectionStateImpl
    implements NotActiveInternetConnectionState {
  const _$NotActiveInternetConnectionStateImpl();

  @override
  String toString() {
    return 'InternetConnectionState.notActive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotActiveInternetConnectionStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function() active,
    required TResult Function() notActive,
  }) {
    return notActive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function()? active,
    TResult? Function()? notActive,
  }) {
    return notActive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function()? active,
    TResult Function()? notActive,
    required TResult orElse(),
  }) {
    if (notActive != null) {
      return notActive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInternetConnectionState value) load,
    required TResult Function(InitInternetConnectionState value) init,
    required TResult Function(ActiveInternetConnectionState value) active,
    required TResult Function(NotActiveInternetConnectionState value) notActive,
  }) {
    return notActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInternetConnectionState value)? load,
    TResult? Function(InitInternetConnectionState value)? init,
    TResult? Function(ActiveInternetConnectionState value)? active,
    TResult? Function(NotActiveInternetConnectionState value)? notActive,
  }) {
    return notActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInternetConnectionState value)? load,
    TResult Function(InitInternetConnectionState value)? init,
    TResult Function(ActiveInternetConnectionState value)? active,
    TResult Function(NotActiveInternetConnectionState value)? notActive,
    required TResult orElse(),
  }) {
    if (notActive != null) {
      return notActive(this);
    }
    return orElse();
  }
}

abstract class NotActiveInternetConnectionState
    implements InternetConnectionState {
  const factory NotActiveInternetConnectionState() =
      _$NotActiveInternetConnectionStateImpl;
}
