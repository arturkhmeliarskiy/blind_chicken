// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isBlocked) switchBlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isBlocked)? switchBlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isBlocked)? switchBlocked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBottomNavigationEvent value) init,
    required TResult Function(SwitchBlockedBottomNavigationEvent value)
        switchBlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBottomNavigationEvent value)? init,
    TResult? Function(SwitchBlockedBottomNavigationEvent value)? switchBlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBottomNavigationEvent value)? init,
    TResult Function(SwitchBlockedBottomNavigationEvent value)? switchBlocked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res, BottomNavigationEvent>;
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res,
        $Val extends BottomNavigationEvent>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitBottomNavigationEventImplCopyWith<$Res> {
  factory _$$InitBottomNavigationEventImplCopyWith(
          _$InitBottomNavigationEventImpl value,
          $Res Function(_$InitBottomNavigationEventImpl) then) =
      __$$InitBottomNavigationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitBottomNavigationEventImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res,
        _$InitBottomNavigationEventImpl>
    implements _$$InitBottomNavigationEventImplCopyWith<$Res> {
  __$$InitBottomNavigationEventImplCopyWithImpl(
      _$InitBottomNavigationEventImpl _value,
      $Res Function(_$InitBottomNavigationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitBottomNavigationEventImpl implements InitBottomNavigationEvent {
  const _$InitBottomNavigationEventImpl();

  @override
  String toString() {
    return 'BottomNavigationEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitBottomNavigationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isBlocked) switchBlocked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isBlocked)? switchBlocked,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isBlocked)? switchBlocked,
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
    required TResult Function(InitBottomNavigationEvent value) init,
    required TResult Function(SwitchBlockedBottomNavigationEvent value)
        switchBlocked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBottomNavigationEvent value)? init,
    TResult? Function(SwitchBlockedBottomNavigationEvent value)? switchBlocked,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBottomNavigationEvent value)? init,
    TResult Function(SwitchBlockedBottomNavigationEvent value)? switchBlocked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitBottomNavigationEvent implements BottomNavigationEvent {
  const factory InitBottomNavigationEvent() = _$InitBottomNavigationEventImpl;
}

/// @nodoc
abstract class _$$SwitchBlockedBottomNavigationEventImplCopyWith<$Res> {
  factory _$$SwitchBlockedBottomNavigationEventImplCopyWith(
          _$SwitchBlockedBottomNavigationEventImpl value,
          $Res Function(_$SwitchBlockedBottomNavigationEventImpl) then) =
      __$$SwitchBlockedBottomNavigationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isBlocked});
}

/// @nodoc
class __$$SwitchBlockedBottomNavigationEventImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res,
        _$SwitchBlockedBottomNavigationEventImpl>
    implements _$$SwitchBlockedBottomNavigationEventImplCopyWith<$Res> {
  __$$SwitchBlockedBottomNavigationEventImplCopyWithImpl(
      _$SwitchBlockedBottomNavigationEventImpl _value,
      $Res Function(_$SwitchBlockedBottomNavigationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBlocked = null,
  }) {
    return _then(_$SwitchBlockedBottomNavigationEventImpl(
      isBlocked: null == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SwitchBlockedBottomNavigationEventImpl
    implements SwitchBlockedBottomNavigationEvent {
  const _$SwitchBlockedBottomNavigationEventImpl({required this.isBlocked});

  @override
  final bool isBlocked;

  @override
  String toString() {
    return 'BottomNavigationEvent.switchBlocked(isBlocked: $isBlocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchBlockedBottomNavigationEventImpl &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBlocked);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchBlockedBottomNavigationEventImplCopyWith<
          _$SwitchBlockedBottomNavigationEventImpl>
      get copyWith => __$$SwitchBlockedBottomNavigationEventImplCopyWithImpl<
          _$SwitchBlockedBottomNavigationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool isBlocked) switchBlocked,
  }) {
    return switchBlocked(isBlocked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool isBlocked)? switchBlocked,
  }) {
    return switchBlocked?.call(isBlocked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool isBlocked)? switchBlocked,
    required TResult orElse(),
  }) {
    if (switchBlocked != null) {
      return switchBlocked(isBlocked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBottomNavigationEvent value) init,
    required TResult Function(SwitchBlockedBottomNavigationEvent value)
        switchBlocked,
  }) {
    return switchBlocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBottomNavigationEvent value)? init,
    TResult? Function(SwitchBlockedBottomNavigationEvent value)? switchBlocked,
  }) {
    return switchBlocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBottomNavigationEvent value)? init,
    TResult Function(SwitchBlockedBottomNavigationEvent value)? switchBlocked,
    required TResult orElse(),
  }) {
    if (switchBlocked != null) {
      return switchBlocked(this);
    }
    return orElse();
  }
}

abstract class SwitchBlockedBottomNavigationEvent
    implements BottomNavigationEvent {
  const factory SwitchBlockedBottomNavigationEvent(
          {required final bool isBlocked}) =
      _$SwitchBlockedBottomNavigationEventImpl;

  bool get isBlocked;

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchBlockedBottomNavigationEventImplCopyWith<
          _$SwitchBlockedBottomNavigationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottomNavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool absorbing) preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool absorbing)? preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool absorbing)? preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBottomNavigationState value) init,
    required TResult Function(PreloadDataCompletedBottomNavigationState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBottomNavigationState value)? init,
    TResult? Function(PreloadDataCompletedBottomNavigationState value)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBottomNavigationState value)? init,
    TResult Function(PreloadDataCompletedBottomNavigationState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res, BottomNavigationState>;
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res,
        $Val extends BottomNavigationState>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitBottomNavigationStateImplCopyWith<$Res> {
  factory _$$InitBottomNavigationStateImplCopyWith(
          _$InitBottomNavigationStateImpl value,
          $Res Function(_$InitBottomNavigationStateImpl) then) =
      __$$InitBottomNavigationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitBottomNavigationStateImplCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res,
        _$InitBottomNavigationStateImpl>
    implements _$$InitBottomNavigationStateImplCopyWith<$Res> {
  __$$InitBottomNavigationStateImplCopyWithImpl(
      _$InitBottomNavigationStateImpl _value,
      $Res Function(_$InitBottomNavigationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitBottomNavigationStateImpl implements InitBottomNavigationState {
  const _$InitBottomNavigationStateImpl();

  @override
  String toString() {
    return 'BottomNavigationState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitBottomNavigationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool absorbing) preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool absorbing)? preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool absorbing)? preloadDataCompleted,
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
    required TResult Function(InitBottomNavigationState value) init,
    required TResult Function(PreloadDataCompletedBottomNavigationState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBottomNavigationState value)? init,
    TResult? Function(PreloadDataCompletedBottomNavigationState value)?
        preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBottomNavigationState value)? init,
    TResult Function(PreloadDataCompletedBottomNavigationState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitBottomNavigationState implements BottomNavigationState {
  const factory InitBottomNavigationState() = _$InitBottomNavigationStateImpl;
}

/// @nodoc
abstract class _$$PreloadDataCompletedBottomNavigationStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedBottomNavigationStateImplCopyWith(
          _$PreloadDataCompletedBottomNavigationStateImpl value,
          $Res Function(_$PreloadDataCompletedBottomNavigationStateImpl) then) =
      __$$PreloadDataCompletedBottomNavigationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool absorbing});
}

/// @nodoc
class __$$PreloadDataCompletedBottomNavigationStateImplCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res,
        _$PreloadDataCompletedBottomNavigationStateImpl>
    implements _$$PreloadDataCompletedBottomNavigationStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedBottomNavigationStateImplCopyWithImpl(
      _$PreloadDataCompletedBottomNavigationStateImpl _value,
      $Res Function(_$PreloadDataCompletedBottomNavigationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? absorbing = null,
  }) {
    return _then(_$PreloadDataCompletedBottomNavigationStateImpl(
      absorbing: null == absorbing
          ? _value.absorbing
          : absorbing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PreloadDataCompletedBottomNavigationStateImpl
    implements PreloadDataCompletedBottomNavigationState {
  const _$PreloadDataCompletedBottomNavigationStateImpl(
      {required this.absorbing});

  @override
  final bool absorbing;

  @override
  String toString() {
    return 'BottomNavigationState.preloadDataCompleted(absorbing: $absorbing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedBottomNavigationStateImpl &&
            (identical(other.absorbing, absorbing) ||
                other.absorbing == absorbing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, absorbing);

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedBottomNavigationStateImplCopyWith<
          _$PreloadDataCompletedBottomNavigationStateImpl>
      get copyWith =>
          __$$PreloadDataCompletedBottomNavigationStateImplCopyWithImpl<
                  _$PreloadDataCompletedBottomNavigationStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(bool absorbing) preloadDataCompleted,
  }) {
    return preloadDataCompleted(absorbing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(bool absorbing)? preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(absorbing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(bool absorbing)? preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(absorbing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBottomNavigationState value) init,
    required TResult Function(PreloadDataCompletedBottomNavigationState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBottomNavigationState value)? init,
    TResult? Function(PreloadDataCompletedBottomNavigationState value)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBottomNavigationState value)? init,
    TResult Function(PreloadDataCompletedBottomNavigationState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedBottomNavigationState
    implements BottomNavigationState {
  const factory PreloadDataCompletedBottomNavigationState(
          {required final bool absorbing}) =
      _$PreloadDataCompletedBottomNavigationStateImpl;

  bool get absorbing;

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreloadDataCompletedBottomNavigationStateImplCopyWith<
          _$PreloadDataCompletedBottomNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
