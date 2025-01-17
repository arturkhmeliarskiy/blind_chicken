// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_banner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopBannerEvent {
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
    required TResult Function(PreloadDataTopBannerEvent value) preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreloadDataTopBannerEvent value)? preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreloadDataTopBannerEvent value)? preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBannerEventCopyWith<$Res> {
  factory $TopBannerEventCopyWith(
          TopBannerEvent value, $Res Function(TopBannerEvent) then) =
      _$TopBannerEventCopyWithImpl<$Res, TopBannerEvent>;
}

/// @nodoc
class _$TopBannerEventCopyWithImpl<$Res, $Val extends TopBannerEvent>
    implements $TopBannerEventCopyWith<$Res> {
  _$TopBannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopBannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PreloadDataTopBannerEventImplCopyWith<$Res> {
  factory _$$PreloadDataTopBannerEventImplCopyWith(
          _$PreloadDataTopBannerEventImpl value,
          $Res Function(_$PreloadDataTopBannerEventImpl) then) =
      __$$PreloadDataTopBannerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreloadDataTopBannerEventImplCopyWithImpl<$Res>
    extends _$TopBannerEventCopyWithImpl<$Res, _$PreloadDataTopBannerEventImpl>
    implements _$$PreloadDataTopBannerEventImplCopyWith<$Res> {
  __$$PreloadDataTopBannerEventImplCopyWithImpl(
      _$PreloadDataTopBannerEventImpl _value,
      $Res Function(_$PreloadDataTopBannerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopBannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreloadDataTopBannerEventImpl implements PreloadDataTopBannerEvent {
  const _$PreloadDataTopBannerEventImpl();

  @override
  String toString() {
    return 'TopBannerEvent.preloadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataTopBannerEventImpl);
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
    required TResult Function(PreloadDataTopBannerEvent value) preloadData,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreloadDataTopBannerEvent value)? preloadData,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreloadDataTopBannerEvent value)? preloadData,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class PreloadDataTopBannerEvent implements TopBannerEvent {
  const factory PreloadDataTopBannerEvent() = _$PreloadDataTopBannerEventImpl;
}

/// @nodoc
mixin _$TopBannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(TopBannerDataModel info) preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(TopBannerDataModel info)? preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(TopBannerDataModel info)? preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTopBannerState value) init,
    required TResult Function(LoadingTopBannerState value) load,
    required TResult Function(ErrorTopBannerState value) error,
    required TResult Function(PreloadDataCompletedTopBannerState value)
        preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTopBannerState value)? init,
    TResult? Function(LoadingTopBannerState value)? load,
    TResult? Function(ErrorTopBannerState value)? error,
    TResult? Function(PreloadDataCompletedTopBannerState value)? preloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTopBannerState value)? init,
    TResult Function(LoadingTopBannerState value)? load,
    TResult Function(ErrorTopBannerState value)? error,
    TResult Function(PreloadDataCompletedTopBannerState value)? preloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBannerStateCopyWith<$Res> {
  factory $TopBannerStateCopyWith(
          TopBannerState value, $Res Function(TopBannerState) then) =
      _$TopBannerStateCopyWithImpl<$Res, TopBannerState>;
}

/// @nodoc
class _$TopBannerStateCopyWithImpl<$Res, $Val extends TopBannerState>
    implements $TopBannerStateCopyWith<$Res> {
  _$TopBannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitTopBannerStateImplCopyWith<$Res> {
  factory _$$InitTopBannerStateImplCopyWith(_$InitTopBannerStateImpl value,
          $Res Function(_$InitTopBannerStateImpl) then) =
      __$$InitTopBannerStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitTopBannerStateImplCopyWithImpl<$Res>
    extends _$TopBannerStateCopyWithImpl<$Res, _$InitTopBannerStateImpl>
    implements _$$InitTopBannerStateImplCopyWith<$Res> {
  __$$InitTopBannerStateImplCopyWithImpl(_$InitTopBannerStateImpl _value,
      $Res Function(_$InitTopBannerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitTopBannerStateImpl implements InitTopBannerState {
  const _$InitTopBannerStateImpl();

  @override
  String toString() {
    return 'TopBannerState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitTopBannerStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(TopBannerDataModel info) preloadData,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(TopBannerDataModel info)? preloadData,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(TopBannerDataModel info)? preloadData,
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
    required TResult Function(InitTopBannerState value) init,
    required TResult Function(LoadingTopBannerState value) load,
    required TResult Function(ErrorTopBannerState value) error,
    required TResult Function(PreloadDataCompletedTopBannerState value)
        preloadData,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTopBannerState value)? init,
    TResult? Function(LoadingTopBannerState value)? load,
    TResult? Function(ErrorTopBannerState value)? error,
    TResult? Function(PreloadDataCompletedTopBannerState value)? preloadData,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTopBannerState value)? init,
    TResult Function(LoadingTopBannerState value)? load,
    TResult Function(ErrorTopBannerState value)? error,
    TResult Function(PreloadDataCompletedTopBannerState value)? preloadData,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitTopBannerState implements TopBannerState {
  const factory InitTopBannerState() = _$InitTopBannerStateImpl;
}

/// @nodoc
abstract class _$$LoadingTopBannerStateImplCopyWith<$Res> {
  factory _$$LoadingTopBannerStateImplCopyWith(
          _$LoadingTopBannerStateImpl value,
          $Res Function(_$LoadingTopBannerStateImpl) then) =
      __$$LoadingTopBannerStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingTopBannerStateImplCopyWithImpl<$Res>
    extends _$TopBannerStateCopyWithImpl<$Res, _$LoadingTopBannerStateImpl>
    implements _$$LoadingTopBannerStateImplCopyWith<$Res> {
  __$$LoadingTopBannerStateImplCopyWithImpl(_$LoadingTopBannerStateImpl _value,
      $Res Function(_$LoadingTopBannerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingTopBannerStateImpl implements LoadingTopBannerState {
  const _$LoadingTopBannerStateImpl();

  @override
  String toString() {
    return 'TopBannerState.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTopBannerStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(TopBannerDataModel info) preloadData,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(TopBannerDataModel info)? preloadData,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(TopBannerDataModel info)? preloadData,
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
    required TResult Function(InitTopBannerState value) init,
    required TResult Function(LoadingTopBannerState value) load,
    required TResult Function(ErrorTopBannerState value) error,
    required TResult Function(PreloadDataCompletedTopBannerState value)
        preloadData,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTopBannerState value)? init,
    TResult? Function(LoadingTopBannerState value)? load,
    TResult? Function(ErrorTopBannerState value)? error,
    TResult? Function(PreloadDataCompletedTopBannerState value)? preloadData,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTopBannerState value)? init,
    TResult Function(LoadingTopBannerState value)? load,
    TResult Function(ErrorTopBannerState value)? error,
    TResult Function(PreloadDataCompletedTopBannerState value)? preloadData,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingTopBannerState implements TopBannerState {
  const factory LoadingTopBannerState() = _$LoadingTopBannerStateImpl;
}

/// @nodoc
abstract class _$$ErrorTopBannerStateImplCopyWith<$Res> {
  factory _$$ErrorTopBannerStateImplCopyWith(_$ErrorTopBannerStateImpl value,
          $Res Function(_$ErrorTopBannerStateImpl) then) =
      __$$ErrorTopBannerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorTopBannerStateImplCopyWithImpl<$Res>
    extends _$TopBannerStateCopyWithImpl<$Res, _$ErrorTopBannerStateImpl>
    implements _$$ErrorTopBannerStateImplCopyWith<$Res> {
  __$$ErrorTopBannerStateImplCopyWithImpl(_$ErrorTopBannerStateImpl _value,
      $Res Function(_$ErrorTopBannerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorTopBannerStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorTopBannerStateImpl implements ErrorTopBannerState {
  const _$ErrorTopBannerStateImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TopBannerState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTopBannerStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTopBannerStateImplCopyWith<_$ErrorTopBannerStateImpl> get copyWith =>
      __$$ErrorTopBannerStateImplCopyWithImpl<_$ErrorTopBannerStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(TopBannerDataModel info) preloadData,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(TopBannerDataModel info)? preloadData,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(TopBannerDataModel info)? preloadData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTopBannerState value) init,
    required TResult Function(LoadingTopBannerState value) load,
    required TResult Function(ErrorTopBannerState value) error,
    required TResult Function(PreloadDataCompletedTopBannerState value)
        preloadData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTopBannerState value)? init,
    TResult? Function(LoadingTopBannerState value)? load,
    TResult? Function(ErrorTopBannerState value)? error,
    TResult? Function(PreloadDataCompletedTopBannerState value)? preloadData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTopBannerState value)? init,
    TResult Function(LoadingTopBannerState value)? load,
    TResult Function(ErrorTopBannerState value)? error,
    TResult Function(PreloadDataCompletedTopBannerState value)? preloadData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorTopBannerState implements TopBannerState {
  const factory ErrorTopBannerState({required final String errorMessage}) =
      _$ErrorTopBannerStateImpl;

  String get errorMessage;

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorTopBannerStateImplCopyWith<_$ErrorTopBannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreloadDataCompletedTopBannerStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedTopBannerStateImplCopyWith(
          _$PreloadDataCompletedTopBannerStateImpl value,
          $Res Function(_$PreloadDataCompletedTopBannerStateImpl) then) =
      __$$PreloadDataCompletedTopBannerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TopBannerDataModel info});

  $TopBannerDataModelCopyWith<$Res> get info;
}

/// @nodoc
class __$$PreloadDataCompletedTopBannerStateImplCopyWithImpl<$Res>
    extends _$TopBannerStateCopyWithImpl<$Res,
        _$PreloadDataCompletedTopBannerStateImpl>
    implements _$$PreloadDataCompletedTopBannerStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedTopBannerStateImplCopyWithImpl(
      _$PreloadDataCompletedTopBannerStateImpl _value,
      $Res Function(_$PreloadDataCompletedTopBannerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$PreloadDataCompletedTopBannerStateImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TopBannerDataModel,
    ));
  }

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopBannerDataModelCopyWith<$Res> get info {
    return $TopBannerDataModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc

class _$PreloadDataCompletedTopBannerStateImpl
    implements PreloadDataCompletedTopBannerState {
  const _$PreloadDataCompletedTopBannerStateImpl({required this.info});

  @override
  final TopBannerDataModel info;

  @override
  String toString() {
    return 'TopBannerState.preloadData(info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedTopBannerStateImpl &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedTopBannerStateImplCopyWith<
          _$PreloadDataCompletedTopBannerStateImpl>
      get copyWith => __$$PreloadDataCompletedTopBannerStateImplCopyWithImpl<
          _$PreloadDataCompletedTopBannerStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String errorMessage) error,
    required TResult Function(TopBannerDataModel info) preloadData,
  }) {
    return preloadData(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String errorMessage)? error,
    TResult? Function(TopBannerDataModel info)? preloadData,
  }) {
    return preloadData?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String errorMessage)? error,
    TResult Function(TopBannerDataModel info)? preloadData,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitTopBannerState value) init,
    required TResult Function(LoadingTopBannerState value) load,
    required TResult Function(ErrorTopBannerState value) error,
    required TResult Function(PreloadDataCompletedTopBannerState value)
        preloadData,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitTopBannerState value)? init,
    TResult? Function(LoadingTopBannerState value)? load,
    TResult? Function(ErrorTopBannerState value)? error,
    TResult? Function(PreloadDataCompletedTopBannerState value)? preloadData,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitTopBannerState value)? init,
    TResult Function(LoadingTopBannerState value)? load,
    TResult Function(ErrorTopBannerState value)? error,
    TResult Function(PreloadDataCompletedTopBannerState value)? preloadData,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedTopBannerState implements TopBannerState {
  const factory PreloadDataCompletedTopBannerState(
          {required final TopBannerDataModel info}) =
      _$PreloadDataCompletedTopBannerStateImpl;

  TopBannerDataModel get info;

  /// Create a copy of TopBannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreloadDataCompletedTopBannerStateImplCopyWith<
          _$PreloadDataCompletedTopBannerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
