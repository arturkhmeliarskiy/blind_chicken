// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  String? get phone => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountEventCopyWith<AccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
  @useResult
  $Res call({String? phone, String? name, String? email});
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitAccountEventImplCopyWith<$Res>
    implements $AccountEventCopyWith<$Res> {
  factory _$$InitAccountEventImplCopyWith(_$InitAccountEventImpl value,
          $Res Function(_$InitAccountEventImpl) then) =
      __$$InitAccountEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, String? name, String? email});
}

/// @nodoc
class __$$InitAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$InitAccountEventImpl>
    implements _$$InitAccountEventImplCopyWith<$Res> {
  __$$InitAccountEventImplCopyWithImpl(_$InitAccountEventImpl _value,
      $Res Function(_$InitAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$InitAccountEventImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitAccountEventImpl implements InitAccountEvent {
  const _$InitAccountEventImpl({this.phone, this.name, this.email});

  @override
  final String? phone;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'AccountEvent.preloadData(phone: $phone, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitAccountEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitAccountEventImplCopyWith<_$InitAccountEventImpl> get copyWith =>
      __$$InitAccountEventImplCopyWithImpl<_$InitAccountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
  }) {
    return preloadData(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
  }) {
    return preloadData?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(phone, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitAccountEvent implements AccountEvent {
  const factory InitAccountEvent(
      {final String? phone,
      final String? name,
      final String? email}) = _$InitAccountEventImpl;

  @override
  String? get phone;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$InitAccountEventImplCopyWith<_$InitAccountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInfoAccountEventImplCopyWith<$Res>
    implements $AccountEventCopyWith<$Res> {
  factory _$$UpdateInfoAccountEventImplCopyWith(
          _$UpdateInfoAccountEventImpl value,
          $Res Function(_$UpdateInfoAccountEventImpl) then) =
      __$$UpdateInfoAccountEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, String? name, String? email});
}

/// @nodoc
class __$$UpdateInfoAccountEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$UpdateInfoAccountEventImpl>
    implements _$$UpdateInfoAccountEventImplCopyWith<$Res> {
  __$$UpdateInfoAccountEventImplCopyWithImpl(
      _$UpdateInfoAccountEventImpl _value,
      $Res Function(_$UpdateInfoAccountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UpdateInfoAccountEventImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateInfoAccountEventImpl implements UpdateInfoAccountEvent {
  const _$UpdateInfoAccountEventImpl({this.phone, this.name, this.email});

  @override
  final String? phone;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'AccountEvent.updateInfo(phone: $phone, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoAccountEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInfoAccountEventImplCopyWith<_$UpdateInfoAccountEventImpl>
      get copyWith => __$$UpdateInfoAccountEventImplCopyWithImpl<
          _$UpdateInfoAccountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone, String? name, String? email)
        preloadData,
    required TResult Function(String? phone, String? name, String? email)
        updateInfo,
  }) {
    return updateInfo(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? phone, String? name, String? email)? preloadData,
    TResult? Function(String? phone, String? name, String? email)? updateInfo,
  }) {
    return updateInfo?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone, String? name, String? email)? preloadData,
    TResult Function(String? phone, String? name, String? email)? updateInfo,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(phone, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountEvent value) preloadData,
    required TResult Function(UpdateInfoAccountEvent value) updateInfo,
  }) {
    return updateInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountEvent value)? preloadData,
    TResult? Function(UpdateInfoAccountEvent value)? updateInfo,
  }) {
    return updateInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountEvent value)? preloadData,
    TResult Function(UpdateInfoAccountEvent value)? updateInfo,
    required TResult orElse(),
  }) {
    if (updateInfo != null) {
      return updateInfo(this);
    }
    return orElse();
  }
}

abstract class UpdateInfoAccountEvent implements AccountEvent {
  const factory UpdateInfoAccountEvent(
      {final String? phone,
      final String? name,
      final String? email}) = _$UpdateInfoAccountEventImpl;

  @override
  String? get phone;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$UpdateInfoAccountEventImplCopyWith<_$UpdateInfoAccountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String phone, String name, String email)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String phone, String name, String email)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String phone, String name, String email)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitAccountStateImplCopyWith<$Res> {
  factory _$$InitAccountStateImplCopyWith(_$InitAccountStateImpl value,
          $Res Function(_$InitAccountStateImpl) then) =
      __$$InitAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$InitAccountStateImpl>
    implements _$$InitAccountStateImplCopyWith<$Res> {
  __$$InitAccountStateImplCopyWithImpl(_$InitAccountStateImpl _value,
      $Res Function(_$InitAccountStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitAccountStateImpl implements InitAccountState {
  const _$InitAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String phone, String name, String email)
        preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String phone, String name, String email)?
        preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String phone, String name, String email)?
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
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAccountState implements AccountState {
  const factory InitAccountState() = _$InitAccountStateImpl;
}

/// @nodoc
abstract class _$$LoadingAccountStateImplCopyWith<$Res> {
  factory _$$LoadingAccountStateImplCopyWith(_$LoadingAccountStateImpl value,
          $Res Function(_$LoadingAccountStateImpl) then) =
      __$$LoadingAccountStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$LoadingAccountStateImpl>
    implements _$$LoadingAccountStateImplCopyWith<$Res> {
  __$$LoadingAccountStateImplCopyWithImpl(_$LoadingAccountStateImpl _value,
      $Res Function(_$LoadingAccountStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAccountStateImpl implements LoadingAccountState {
  const _$LoadingAccountStateImpl();

  @override
  String toString() {
    return 'AccountState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAccountStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String phone, String name, String email)
        preloadDataCompleted,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String phone, String name, String email)?
        preloadDataCompleted,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String phone, String name, String email)?
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
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingAccountState implements AccountState {
  const factory LoadingAccountState() = _$LoadingAccountStateImpl;
}

/// @nodoc
abstract class _$$PreloadDataCompletedAccountStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedAccountStateImplCopyWith(
          _$PreloadDataCompletedAccountStateImpl value,
          $Res Function(_$PreloadDataCompletedAccountStateImpl) then) =
      __$$PreloadDataCompletedAccountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String name, String email});
}

/// @nodoc
class __$$PreloadDataCompletedAccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res,
        _$PreloadDataCompletedAccountStateImpl>
    implements _$$PreloadDataCompletedAccountStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedAccountStateImplCopyWithImpl(
      _$PreloadDataCompletedAccountStateImpl _value,
      $Res Function(_$PreloadDataCompletedAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$PreloadDataCompletedAccountStateImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreloadDataCompletedAccountStateImpl
    implements PreloadDataCompletedAccountState {
  const _$PreloadDataCompletedAccountStateImpl(
      {required this.phone, required this.name, required this.email});

  @override
  final String phone;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'AccountState.preloadDataCompleted(phone: $phone, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedAccountStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedAccountStateImplCopyWith<
          _$PreloadDataCompletedAccountStateImpl>
      get copyWith => __$$PreloadDataCompletedAccountStateImplCopyWithImpl<
          _$PreloadDataCompletedAccountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(String phone, String name, String email)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(String phone, String name, String email)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(phone, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(String phone, String name, String email)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(phone, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAccountState value) init,
    required TResult Function(LoadingAccountState value) load,
    required TResult Function(PreloadDataCompletedAccountState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAccountState value)? init,
    TResult? Function(LoadingAccountState value)? load,
    TResult? Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAccountState value)? init,
    TResult Function(LoadingAccountState value)? load,
    TResult Function(PreloadDataCompletedAccountState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedAccountState implements AccountState {
  const factory PreloadDataCompletedAccountState(
      {required final String phone,
      required final String name,
      required final String email}) = _$PreloadDataCompletedAccountStateImpl;

  String get phone;
  String get name;
  String get email;
  @JsonKey(ignore: true)
  _$$PreloadDataCompletedAccountStateImplCopyWith<
          _$PreloadDataCompletedAccountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
