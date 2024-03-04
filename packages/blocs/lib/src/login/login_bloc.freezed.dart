// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phone,
    required TResult Function(String phone, String captcha, String code)
        checkCaptcha,
    required TResult Function(String phone, String code) checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String phone)? phone,
    TResult? Function(String phone, String captcha, String code)? checkCaptcha,
    TResult? Function(String phone, String code)? checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phone,
    TResult Function(String phone, String captcha, String code)? checkCaptcha,
    TResult Function(String phone, String code)? checkSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginEvent value) init,
    required TResult Function(PhoneLoginEvent value) phone,
    required TResult Function(CheckCaptchaLoginEvent value) checkCaptcha,
    required TResult Function(CheckSmsLoginEvent value) checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginEvent value)? init,
    TResult? Function(PhoneLoginEvent value)? phone,
    TResult? Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult? Function(CheckSmsLoginEvent value)? checkSms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginEvent value)? init,
    TResult Function(PhoneLoginEvent value)? phone,
    TResult Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult Function(CheckSmsLoginEvent value)? checkSms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitLoginEventImplCopyWith<$Res> {
  factory _$$InitLoginEventImplCopyWith(_$InitLoginEventImpl value,
          $Res Function(_$InitLoginEventImpl) then) =
      __$$InitLoginEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitLoginEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$InitLoginEventImpl>
    implements _$$InitLoginEventImplCopyWith<$Res> {
  __$$InitLoginEventImplCopyWithImpl(
      _$InitLoginEventImpl _value, $Res Function(_$InitLoginEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitLoginEventImpl implements InitLoginEvent {
  const _$InitLoginEventImpl();

  @override
  String toString() {
    return 'LoginEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitLoginEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phone,
    required TResult Function(String phone, String captcha, String code)
        checkCaptcha,
    required TResult Function(String phone, String code) checkSms,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String phone)? phone,
    TResult? Function(String phone, String captcha, String code)? checkCaptcha,
    TResult? Function(String phone, String code)? checkSms,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phone,
    TResult Function(String phone, String captcha, String code)? checkCaptcha,
    TResult Function(String phone, String code)? checkSms,
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
    required TResult Function(InitLoginEvent value) init,
    required TResult Function(PhoneLoginEvent value) phone,
    required TResult Function(CheckCaptchaLoginEvent value) checkCaptcha,
    required TResult Function(CheckSmsLoginEvent value) checkSms,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginEvent value)? init,
    TResult? Function(PhoneLoginEvent value)? phone,
    TResult? Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult? Function(CheckSmsLoginEvent value)? checkSms,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginEvent value)? init,
    TResult Function(PhoneLoginEvent value)? phone,
    TResult Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult Function(CheckSmsLoginEvent value)? checkSms,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitLoginEvent implements LoginEvent {
  const factory InitLoginEvent() = _$InitLoginEventImpl;
}

/// @nodoc
abstract class _$$PhoneLoginEventImplCopyWith<$Res> {
  factory _$$PhoneLoginEventImplCopyWith(_$PhoneLoginEventImpl value,
          $Res Function(_$PhoneLoginEventImpl) then) =
      __$$PhoneLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$PhoneLoginEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$PhoneLoginEventImpl>
    implements _$$PhoneLoginEventImplCopyWith<$Res> {
  __$$PhoneLoginEventImplCopyWithImpl(
      _$PhoneLoginEventImpl _value, $Res Function(_$PhoneLoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$PhoneLoginEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneLoginEventImpl implements PhoneLoginEvent {
  const _$PhoneLoginEventImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'LoginEvent.phone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneLoginEventImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneLoginEventImplCopyWith<_$PhoneLoginEventImpl> get copyWith =>
      __$$PhoneLoginEventImplCopyWithImpl<_$PhoneLoginEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phone,
    required TResult Function(String phone, String captcha, String code)
        checkCaptcha,
    required TResult Function(String phone, String code) checkSms,
  }) {
    return phone(this.phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String phone)? phone,
    TResult? Function(String phone, String captcha, String code)? checkCaptcha,
    TResult? Function(String phone, String code)? checkSms,
  }) {
    return phone?.call(this.phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phone,
    TResult Function(String phone, String captcha, String code)? checkCaptcha,
    TResult Function(String phone, String code)? checkSms,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(this.phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginEvent value) init,
    required TResult Function(PhoneLoginEvent value) phone,
    required TResult Function(CheckCaptchaLoginEvent value) checkCaptcha,
    required TResult Function(CheckSmsLoginEvent value) checkSms,
  }) {
    return phone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginEvent value)? init,
    TResult? Function(PhoneLoginEvent value)? phone,
    TResult? Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult? Function(CheckSmsLoginEvent value)? checkSms,
  }) {
    return phone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginEvent value)? init,
    TResult Function(PhoneLoginEvent value)? phone,
    TResult Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult Function(CheckSmsLoginEvent value)? checkSms,
    required TResult orElse(),
  }) {
    if (phone != null) {
      return phone(this);
    }
    return orElse();
  }
}

abstract class PhoneLoginEvent implements LoginEvent {
  const factory PhoneLoginEvent({required final String phone}) =
      _$PhoneLoginEventImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$PhoneLoginEventImplCopyWith<_$PhoneLoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckCaptchaLoginEventImplCopyWith<$Res> {
  factory _$$CheckCaptchaLoginEventImplCopyWith(
          _$CheckCaptchaLoginEventImpl value,
          $Res Function(_$CheckCaptchaLoginEventImpl) then) =
      __$$CheckCaptchaLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String captcha, String code});
}

/// @nodoc
class __$$CheckCaptchaLoginEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$CheckCaptchaLoginEventImpl>
    implements _$$CheckCaptchaLoginEventImplCopyWith<$Res> {
  __$$CheckCaptchaLoginEventImplCopyWithImpl(
      _$CheckCaptchaLoginEventImpl _value,
      $Res Function(_$CheckCaptchaLoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? captcha = null,
    Object? code = null,
  }) {
    return _then(_$CheckCaptchaLoginEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      captcha: null == captcha
          ? _value.captcha
          : captcha // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckCaptchaLoginEventImpl implements CheckCaptchaLoginEvent {
  const _$CheckCaptchaLoginEventImpl(
      {required this.phone, required this.captcha, required this.code});

  @override
  final String phone;
  @override
  final String captcha;
  @override
  final String code;

  @override
  String toString() {
    return 'LoginEvent.checkCaptcha(phone: $phone, captcha: $captcha, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCaptchaLoginEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.captcha, captcha) || other.captcha == captcha) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, captcha, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCaptchaLoginEventImplCopyWith<_$CheckCaptchaLoginEventImpl>
      get copyWith => __$$CheckCaptchaLoginEventImplCopyWithImpl<
          _$CheckCaptchaLoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phone,
    required TResult Function(String phone, String captcha, String code)
        checkCaptcha,
    required TResult Function(String phone, String code) checkSms,
  }) {
    return checkCaptcha(this.phone, captcha, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String phone)? phone,
    TResult? Function(String phone, String captcha, String code)? checkCaptcha,
    TResult? Function(String phone, String code)? checkSms,
  }) {
    return checkCaptcha?.call(this.phone, captcha, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phone,
    TResult Function(String phone, String captcha, String code)? checkCaptcha,
    TResult Function(String phone, String code)? checkSms,
    required TResult orElse(),
  }) {
    if (checkCaptcha != null) {
      return checkCaptcha(this.phone, captcha, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginEvent value) init,
    required TResult Function(PhoneLoginEvent value) phone,
    required TResult Function(CheckCaptchaLoginEvent value) checkCaptcha,
    required TResult Function(CheckSmsLoginEvent value) checkSms,
  }) {
    return checkCaptcha(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginEvent value)? init,
    TResult? Function(PhoneLoginEvent value)? phone,
    TResult? Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult? Function(CheckSmsLoginEvent value)? checkSms,
  }) {
    return checkCaptcha?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginEvent value)? init,
    TResult Function(PhoneLoginEvent value)? phone,
    TResult Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult Function(CheckSmsLoginEvent value)? checkSms,
    required TResult orElse(),
  }) {
    if (checkCaptcha != null) {
      return checkCaptcha(this);
    }
    return orElse();
  }
}

abstract class CheckCaptchaLoginEvent implements LoginEvent {
  const factory CheckCaptchaLoginEvent(
      {required final String phone,
      required final String captcha,
      required final String code}) = _$CheckCaptchaLoginEventImpl;

  String get phone;
  String get captcha;
  String get code;
  @JsonKey(ignore: true)
  _$$CheckCaptchaLoginEventImplCopyWith<_$CheckCaptchaLoginEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckSmsLoginEventImplCopyWith<$Res> {
  factory _$$CheckSmsLoginEventImplCopyWith(_$CheckSmsLoginEventImpl value,
          $Res Function(_$CheckSmsLoginEventImpl) then) =
      __$$CheckSmsLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String code});
}

/// @nodoc
class __$$CheckSmsLoginEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$CheckSmsLoginEventImpl>
    implements _$$CheckSmsLoginEventImplCopyWith<$Res> {
  __$$CheckSmsLoginEventImplCopyWithImpl(_$CheckSmsLoginEventImpl _value,
      $Res Function(_$CheckSmsLoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? code = null,
  }) {
    return _then(_$CheckSmsLoginEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckSmsLoginEventImpl implements CheckSmsLoginEvent {
  const _$CheckSmsLoginEventImpl({required this.phone, required this.code});

  @override
  final String phone;
  @override
  final String code;

  @override
  String toString() {
    return 'LoginEvent.checkSms(phone: $phone, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSmsLoginEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSmsLoginEventImplCopyWith<_$CheckSmsLoginEventImpl> get copyWith =>
      __$$CheckSmsLoginEventImplCopyWithImpl<_$CheckSmsLoginEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phone,
    required TResult Function(String phone, String captcha, String code)
        checkCaptcha,
    required TResult Function(String phone, String code) checkSms,
  }) {
    return checkSms(this.phone, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String phone)? phone,
    TResult? Function(String phone, String captcha, String code)? checkCaptcha,
    TResult? Function(String phone, String code)? checkSms,
  }) {
    return checkSms?.call(this.phone, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phone,
    TResult Function(String phone, String captcha, String code)? checkCaptcha,
    TResult Function(String phone, String code)? checkSms,
    required TResult orElse(),
  }) {
    if (checkSms != null) {
      return checkSms(this.phone, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginEvent value) init,
    required TResult Function(PhoneLoginEvent value) phone,
    required TResult Function(CheckCaptchaLoginEvent value) checkCaptcha,
    required TResult Function(CheckSmsLoginEvent value) checkSms,
  }) {
    return checkSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginEvent value)? init,
    TResult? Function(PhoneLoginEvent value)? phone,
    TResult? Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult? Function(CheckSmsLoginEvent value)? checkSms,
  }) {
    return checkSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginEvent value)? init,
    TResult Function(PhoneLoginEvent value)? phone,
    TResult Function(CheckCaptchaLoginEvent value)? checkCaptcha,
    TResult Function(CheckSmsLoginEvent value)? checkSms,
    required TResult orElse(),
  }) {
    if (checkSms != null) {
      return checkSms(this);
    }
    return orElse();
  }
}

abstract class CheckSmsLoginEvent implements LoginEvent {
  const factory CheckSmsLoginEvent(
      {required final String phone,
      required final String code}) = _$CheckSmsLoginEventImpl;

  String get phone;
  String get code;
  @JsonKey(ignore: true)
  _$$CheckSmsLoginEventImplCopyWith<_$CheckSmsLoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) init,
    required TResult Function() load,
    required TResult Function(String? phone, String? code, String? message)
        captcha,
    required TResult Function(String? phone, String? message) smsCode,
    required TResult Function() successfully,
    required TResult Function(int? seconds, String? phone) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? init,
    TResult? Function()? load,
    TResult? Function(String? phone, String? code, String? message)? captcha,
    TResult? Function(String? phone, String? message)? smsCode,
    TResult? Function()? successfully,
    TResult? Function(int? seconds, String? phone)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? init,
    TResult Function()? load,
    TResult Function(String? phone, String? code, String? message)? captcha,
    TResult Function(String? phone, String? message)? smsCode,
    TResult Function()? successfully,
    TResult Function(int? seconds, String? phone)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginState value) init,
    required TResult Function(LoadingLoginState value) load,
    required TResult Function(CaptchaLoginState value) captcha,
    required TResult Function(SmsCodeLoginState value) smsCode,
    required TResult Function(SuccessfullyLoginState value) successfully,
    required TResult Function(ErrorMessageLoginState value) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginState value)? init,
    TResult? Function(LoadingLoginState value)? load,
    TResult? Function(CaptchaLoginState value)? captcha,
    TResult? Function(SmsCodeLoginState value)? smsCode,
    TResult? Function(SuccessfullyLoginState value)? successfully,
    TResult? Function(ErrorMessageLoginState value)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginState value)? init,
    TResult Function(LoadingLoginState value)? load,
    TResult Function(CaptchaLoginState value)? captcha,
    TResult Function(SmsCodeLoginState value)? smsCode,
    TResult Function(SuccessfullyLoginState value)? successfully,
    TResult Function(ErrorMessageLoginState value)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitLoginStateImplCopyWith<$Res> {
  factory _$$InitLoginStateImplCopyWith(_$InitLoginStateImpl value,
          $Res Function(_$InitLoginStateImpl) then) =
      __$$InitLoginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InitLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitLoginStateImpl>
    implements _$$InitLoginStateImplCopyWith<$Res> {
  __$$InitLoginStateImplCopyWithImpl(
      _$InitLoginStateImpl _value, $Res Function(_$InitLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InitLoginStateImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitLoginStateImpl implements InitLoginState {
  const _$InitLoginStateImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LoginState.init(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitLoginStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitLoginStateImplCopyWith<_$InitLoginStateImpl> get copyWith =>
      __$$InitLoginStateImplCopyWithImpl<_$InitLoginStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) init,
    required TResult Function() load,
    required TResult Function(String? phone, String? code, String? message)
        captcha,
    required TResult Function(String? phone, String? message) smsCode,
    required TResult Function() successfully,
    required TResult Function(int? seconds, String? phone) errorMessage,
  }) {
    return init(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? init,
    TResult? Function()? load,
    TResult? Function(String? phone, String? code, String? message)? captcha,
    TResult? Function(String? phone, String? message)? smsCode,
    TResult? Function()? successfully,
    TResult? Function(int? seconds, String? phone)? errorMessage,
  }) {
    return init?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? init,
    TResult Function()? load,
    TResult Function(String? phone, String? code, String? message)? captcha,
    TResult Function(String? phone, String? message)? smsCode,
    TResult Function()? successfully,
    TResult Function(int? seconds, String? phone)? errorMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginState value) init,
    required TResult Function(LoadingLoginState value) load,
    required TResult Function(CaptchaLoginState value) captcha,
    required TResult Function(SmsCodeLoginState value) smsCode,
    required TResult Function(SuccessfullyLoginState value) successfully,
    required TResult Function(ErrorMessageLoginState value) errorMessage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginState value)? init,
    TResult? Function(LoadingLoginState value)? load,
    TResult? Function(CaptchaLoginState value)? captcha,
    TResult? Function(SmsCodeLoginState value)? smsCode,
    TResult? Function(SuccessfullyLoginState value)? successfully,
    TResult? Function(ErrorMessageLoginState value)? errorMessage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginState value)? init,
    TResult Function(LoadingLoginState value)? load,
    TResult Function(CaptchaLoginState value)? captcha,
    TResult Function(SmsCodeLoginState value)? smsCode,
    TResult Function(SuccessfullyLoginState value)? successfully,
    TResult Function(ErrorMessageLoginState value)? errorMessage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitLoginState implements LoginState {
  const factory InitLoginState({final String? message}) = _$InitLoginStateImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$InitLoginStateImplCopyWith<_$InitLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingLoginStateImplCopyWith<$Res> {
  factory _$$LoadingLoginStateImplCopyWith(_$LoadingLoginStateImpl value,
          $Res Function(_$LoadingLoginStateImpl) then) =
      __$$LoadingLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLoginStateImpl>
    implements _$$LoadingLoginStateImplCopyWith<$Res> {
  __$$LoadingLoginStateImplCopyWithImpl(_$LoadingLoginStateImpl _value,
      $Res Function(_$LoadingLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLoginStateImpl implements LoadingLoginState {
  const _$LoadingLoginStateImpl();

  @override
  String toString() {
    return 'LoginState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLoginStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) init,
    required TResult Function() load,
    required TResult Function(String? phone, String? code, String? message)
        captcha,
    required TResult Function(String? phone, String? message) smsCode,
    required TResult Function() successfully,
    required TResult Function(int? seconds, String? phone) errorMessage,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? init,
    TResult? Function()? load,
    TResult? Function(String? phone, String? code, String? message)? captcha,
    TResult? Function(String? phone, String? message)? smsCode,
    TResult? Function()? successfully,
    TResult? Function(int? seconds, String? phone)? errorMessage,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? init,
    TResult Function()? load,
    TResult Function(String? phone, String? code, String? message)? captcha,
    TResult Function(String? phone, String? message)? smsCode,
    TResult Function()? successfully,
    TResult Function(int? seconds, String? phone)? errorMessage,
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
    required TResult Function(InitLoginState value) init,
    required TResult Function(LoadingLoginState value) load,
    required TResult Function(CaptchaLoginState value) captcha,
    required TResult Function(SmsCodeLoginState value) smsCode,
    required TResult Function(SuccessfullyLoginState value) successfully,
    required TResult Function(ErrorMessageLoginState value) errorMessage,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginState value)? init,
    TResult? Function(LoadingLoginState value)? load,
    TResult? Function(CaptchaLoginState value)? captcha,
    TResult? Function(SmsCodeLoginState value)? smsCode,
    TResult? Function(SuccessfullyLoginState value)? successfully,
    TResult? Function(ErrorMessageLoginState value)? errorMessage,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginState value)? init,
    TResult Function(LoadingLoginState value)? load,
    TResult Function(CaptchaLoginState value)? captcha,
    TResult Function(SmsCodeLoginState value)? smsCode,
    TResult Function(SuccessfullyLoginState value)? successfully,
    TResult Function(ErrorMessageLoginState value)? errorMessage,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingLoginState implements LoginState {
  const factory LoadingLoginState() = _$LoadingLoginStateImpl;
}

/// @nodoc
abstract class _$$CaptchaLoginStateImplCopyWith<$Res> {
  factory _$$CaptchaLoginStateImplCopyWith(_$CaptchaLoginStateImpl value,
          $Res Function(_$CaptchaLoginStateImpl) then) =
      __$$CaptchaLoginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phone, String? code, String? message});
}

/// @nodoc
class __$$CaptchaLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$CaptchaLoginStateImpl>
    implements _$$CaptchaLoginStateImplCopyWith<$Res> {
  __$$CaptchaLoginStateImplCopyWithImpl(_$CaptchaLoginStateImpl _value,
      $Res Function(_$CaptchaLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CaptchaLoginStateImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CaptchaLoginStateImpl implements CaptchaLoginState {
  const _$CaptchaLoginStateImpl({this.phone, this.code, this.message});

  @override
  final String? phone;
  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'LoginState.captcha(phone: $phone, code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptchaLoginStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptchaLoginStateImplCopyWith<_$CaptchaLoginStateImpl> get copyWith =>
      __$$CaptchaLoginStateImplCopyWithImpl<_$CaptchaLoginStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) init,
    required TResult Function() load,
    required TResult Function(String? phone, String? code, String? message)
        captcha,
    required TResult Function(String? phone, String? message) smsCode,
    required TResult Function() successfully,
    required TResult Function(int? seconds, String? phone) errorMessage,
  }) {
    return captcha(phone, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? init,
    TResult? Function()? load,
    TResult? Function(String? phone, String? code, String? message)? captcha,
    TResult? Function(String? phone, String? message)? smsCode,
    TResult? Function()? successfully,
    TResult? Function(int? seconds, String? phone)? errorMessage,
  }) {
    return captcha?.call(phone, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? init,
    TResult Function()? load,
    TResult Function(String? phone, String? code, String? message)? captcha,
    TResult Function(String? phone, String? message)? smsCode,
    TResult Function()? successfully,
    TResult Function(int? seconds, String? phone)? errorMessage,
    required TResult orElse(),
  }) {
    if (captcha != null) {
      return captcha(phone, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginState value) init,
    required TResult Function(LoadingLoginState value) load,
    required TResult Function(CaptchaLoginState value) captcha,
    required TResult Function(SmsCodeLoginState value) smsCode,
    required TResult Function(SuccessfullyLoginState value) successfully,
    required TResult Function(ErrorMessageLoginState value) errorMessage,
  }) {
    return captcha(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginState value)? init,
    TResult? Function(LoadingLoginState value)? load,
    TResult? Function(CaptchaLoginState value)? captcha,
    TResult? Function(SmsCodeLoginState value)? smsCode,
    TResult? Function(SuccessfullyLoginState value)? successfully,
    TResult? Function(ErrorMessageLoginState value)? errorMessage,
  }) {
    return captcha?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginState value)? init,
    TResult Function(LoadingLoginState value)? load,
    TResult Function(CaptchaLoginState value)? captcha,
    TResult Function(SmsCodeLoginState value)? smsCode,
    TResult Function(SuccessfullyLoginState value)? successfully,
    TResult Function(ErrorMessageLoginState value)? errorMessage,
    required TResult orElse(),
  }) {
    if (captcha != null) {
      return captcha(this);
    }
    return orElse();
  }
}

abstract class CaptchaLoginState implements LoginState {
  const factory CaptchaLoginState(
      {final String? phone,
      final String? code,
      final String? message}) = _$CaptchaLoginStateImpl;

  String? get phone;
  String? get code;
  String? get message;
  @JsonKey(ignore: true)
  _$$CaptchaLoginStateImplCopyWith<_$CaptchaLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmsCodeLoginStateImplCopyWith<$Res> {
  factory _$$SmsCodeLoginStateImplCopyWith(_$SmsCodeLoginStateImpl value,
          $Res Function(_$SmsCodeLoginStateImpl) then) =
      __$$SmsCodeLoginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phone, String? message});
}

/// @nodoc
class __$$SmsCodeLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SmsCodeLoginStateImpl>
    implements _$$SmsCodeLoginStateImplCopyWith<$Res> {
  __$$SmsCodeLoginStateImplCopyWithImpl(_$SmsCodeLoginStateImpl _value,
      $Res Function(_$SmsCodeLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SmsCodeLoginStateImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SmsCodeLoginStateImpl implements SmsCodeLoginState {
  const _$SmsCodeLoginStateImpl({this.phone, this.message});

  @override
  final String? phone;
  @override
  final String? message;

  @override
  String toString() {
    return 'LoginState.smsCode(phone: $phone, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsCodeLoginStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsCodeLoginStateImplCopyWith<_$SmsCodeLoginStateImpl> get copyWith =>
      __$$SmsCodeLoginStateImplCopyWithImpl<_$SmsCodeLoginStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) init,
    required TResult Function() load,
    required TResult Function(String? phone, String? code, String? message)
        captcha,
    required TResult Function(String? phone, String? message) smsCode,
    required TResult Function() successfully,
    required TResult Function(int? seconds, String? phone) errorMessage,
  }) {
    return smsCode(phone, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? init,
    TResult? Function()? load,
    TResult? Function(String? phone, String? code, String? message)? captcha,
    TResult? Function(String? phone, String? message)? smsCode,
    TResult? Function()? successfully,
    TResult? Function(int? seconds, String? phone)? errorMessage,
  }) {
    return smsCode?.call(phone, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? init,
    TResult Function()? load,
    TResult Function(String? phone, String? code, String? message)? captcha,
    TResult Function(String? phone, String? message)? smsCode,
    TResult Function()? successfully,
    TResult Function(int? seconds, String? phone)? errorMessage,
    required TResult orElse(),
  }) {
    if (smsCode != null) {
      return smsCode(phone, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginState value) init,
    required TResult Function(LoadingLoginState value) load,
    required TResult Function(CaptchaLoginState value) captcha,
    required TResult Function(SmsCodeLoginState value) smsCode,
    required TResult Function(SuccessfullyLoginState value) successfully,
    required TResult Function(ErrorMessageLoginState value) errorMessage,
  }) {
    return smsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginState value)? init,
    TResult? Function(LoadingLoginState value)? load,
    TResult? Function(CaptchaLoginState value)? captcha,
    TResult? Function(SmsCodeLoginState value)? smsCode,
    TResult? Function(SuccessfullyLoginState value)? successfully,
    TResult? Function(ErrorMessageLoginState value)? errorMessage,
  }) {
    return smsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginState value)? init,
    TResult Function(LoadingLoginState value)? load,
    TResult Function(CaptchaLoginState value)? captcha,
    TResult Function(SmsCodeLoginState value)? smsCode,
    TResult Function(SuccessfullyLoginState value)? successfully,
    TResult Function(ErrorMessageLoginState value)? errorMessage,
    required TResult orElse(),
  }) {
    if (smsCode != null) {
      return smsCode(this);
    }
    return orElse();
  }
}

abstract class SmsCodeLoginState implements LoginState {
  const factory SmsCodeLoginState(
      {final String? phone, final String? message}) = _$SmsCodeLoginStateImpl;

  String? get phone;
  String? get message;
  @JsonKey(ignore: true)
  _$$SmsCodeLoginStateImplCopyWith<_$SmsCodeLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfullyLoginStateImplCopyWith<$Res> {
  factory _$$SuccessfullyLoginStateImplCopyWith(
          _$SuccessfullyLoginStateImpl value,
          $Res Function(_$SuccessfullyLoginStateImpl) then) =
      __$$SuccessfullyLoginStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessfullyLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessfullyLoginStateImpl>
    implements _$$SuccessfullyLoginStateImplCopyWith<$Res> {
  __$$SuccessfullyLoginStateImplCopyWithImpl(
      _$SuccessfullyLoginStateImpl _value,
      $Res Function(_$SuccessfullyLoginStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessfullyLoginStateImpl implements SuccessfullyLoginState {
  const _$SuccessfullyLoginStateImpl();

  @override
  String toString() {
    return 'LoginState.successfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfullyLoginStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) init,
    required TResult Function() load,
    required TResult Function(String? phone, String? code, String? message)
        captcha,
    required TResult Function(String? phone, String? message) smsCode,
    required TResult Function() successfully,
    required TResult Function(int? seconds, String? phone) errorMessage,
  }) {
    return successfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? init,
    TResult? Function()? load,
    TResult? Function(String? phone, String? code, String? message)? captcha,
    TResult? Function(String? phone, String? message)? smsCode,
    TResult? Function()? successfully,
    TResult? Function(int? seconds, String? phone)? errorMessage,
  }) {
    return successfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? init,
    TResult Function()? load,
    TResult Function(String? phone, String? code, String? message)? captcha,
    TResult Function(String? phone, String? message)? smsCode,
    TResult Function()? successfully,
    TResult Function(int? seconds, String? phone)? errorMessage,
    required TResult orElse(),
  }) {
    if (successfully != null) {
      return successfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginState value) init,
    required TResult Function(LoadingLoginState value) load,
    required TResult Function(CaptchaLoginState value) captcha,
    required TResult Function(SmsCodeLoginState value) smsCode,
    required TResult Function(SuccessfullyLoginState value) successfully,
    required TResult Function(ErrorMessageLoginState value) errorMessage,
  }) {
    return successfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginState value)? init,
    TResult? Function(LoadingLoginState value)? load,
    TResult? Function(CaptchaLoginState value)? captcha,
    TResult? Function(SmsCodeLoginState value)? smsCode,
    TResult? Function(SuccessfullyLoginState value)? successfully,
    TResult? Function(ErrorMessageLoginState value)? errorMessage,
  }) {
    return successfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginState value)? init,
    TResult Function(LoadingLoginState value)? load,
    TResult Function(CaptchaLoginState value)? captcha,
    TResult Function(SmsCodeLoginState value)? smsCode,
    TResult Function(SuccessfullyLoginState value)? successfully,
    TResult Function(ErrorMessageLoginState value)? errorMessage,
    required TResult orElse(),
  }) {
    if (successfully != null) {
      return successfully(this);
    }
    return orElse();
  }
}

abstract class SuccessfullyLoginState implements LoginState {
  const factory SuccessfullyLoginState() = _$SuccessfullyLoginStateImpl;
}

/// @nodoc
abstract class _$$ErrorMessageLoginStateImplCopyWith<$Res> {
  factory _$$ErrorMessageLoginStateImplCopyWith(
          _$ErrorMessageLoginStateImpl value,
          $Res Function(_$ErrorMessageLoginStateImpl) then) =
      __$$ErrorMessageLoginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? seconds, String? phone});
}

/// @nodoc
class __$$ErrorMessageLoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorMessageLoginStateImpl>
    implements _$$ErrorMessageLoginStateImplCopyWith<$Res> {
  __$$ErrorMessageLoginStateImplCopyWithImpl(
      _$ErrorMessageLoginStateImpl _value,
      $Res Function(_$ErrorMessageLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$ErrorMessageLoginStateImpl(
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorMessageLoginStateImpl implements ErrorMessageLoginState {
  const _$ErrorMessageLoginStateImpl({this.seconds, this.phone});

  @override
  final int? seconds;
  @override
  final String? phone;

  @override
  String toString() {
    return 'LoginState.errorMessage(seconds: $seconds, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMessageLoginStateImpl &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seconds, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageLoginStateImplCopyWith<_$ErrorMessageLoginStateImpl>
      get copyWith => __$$ErrorMessageLoginStateImplCopyWithImpl<
          _$ErrorMessageLoginStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) init,
    required TResult Function() load,
    required TResult Function(String? phone, String? code, String? message)
        captcha,
    required TResult Function(String? phone, String? message) smsCode,
    required TResult Function() successfully,
    required TResult Function(int? seconds, String? phone) errorMessage,
  }) {
    return errorMessage(seconds, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? init,
    TResult? Function()? load,
    TResult? Function(String? phone, String? code, String? message)? captcha,
    TResult? Function(String? phone, String? message)? smsCode,
    TResult? Function()? successfully,
    TResult? Function(int? seconds, String? phone)? errorMessage,
  }) {
    return errorMessage?.call(seconds, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? init,
    TResult Function()? load,
    TResult Function(String? phone, String? code, String? message)? captcha,
    TResult Function(String? phone, String? message)? smsCode,
    TResult Function()? successfully,
    TResult Function(int? seconds, String? phone)? errorMessage,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(seconds, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitLoginState value) init,
    required TResult Function(LoadingLoginState value) load,
    required TResult Function(CaptchaLoginState value) captcha,
    required TResult Function(SmsCodeLoginState value) smsCode,
    required TResult Function(SuccessfullyLoginState value) successfully,
    required TResult Function(ErrorMessageLoginState value) errorMessage,
  }) {
    return errorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitLoginState value)? init,
    TResult? Function(LoadingLoginState value)? load,
    TResult? Function(CaptchaLoginState value)? captcha,
    TResult? Function(SmsCodeLoginState value)? smsCode,
    TResult? Function(SuccessfullyLoginState value)? successfully,
    TResult? Function(ErrorMessageLoginState value)? errorMessage,
  }) {
    return errorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitLoginState value)? init,
    TResult Function(LoadingLoginState value)? load,
    TResult Function(CaptchaLoginState value)? captcha,
    TResult Function(SmsCodeLoginState value)? smsCode,
    TResult Function(SuccessfullyLoginState value)? successfully,
    TResult Function(ErrorMessageLoginState value)? errorMessage,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this);
    }
    return orElse();
  }
}

abstract class ErrorMessageLoginState implements LoginState {
  const factory ErrorMessageLoginState(
      {final int? seconds, final String? phone}) = _$ErrorMessageLoginStateImpl;

  int? get seconds;
  String? get phone;
  @JsonKey(ignore: true)
  _$$ErrorMessageLoginStateImplCopyWith<_$ErrorMessageLoginStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
