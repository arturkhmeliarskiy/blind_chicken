// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthDataModel {
  String get r => throw _privateConstructorUsedError;
  CapthaDataModel get captcha => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get seconds => throw _privateConstructorUsedError;
  String get send => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthDataModelCopyWith<AuthDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataModelCopyWith<$Res> {
  factory $AuthDataModelCopyWith(
          AuthDataModel value, $Res Function(AuthDataModel) then) =
      _$AuthDataModelCopyWithImpl<$Res, AuthDataModel>;
  @useResult
  $Res call(
      {String r,
      CapthaDataModel captcha,
      String message,
      int seconds,
      String send});

  $CapthaDataModelCopyWith<$Res> get captcha;
}

/// @nodoc
class _$AuthDataModelCopyWithImpl<$Res, $Val extends AuthDataModel>
    implements $AuthDataModelCopyWith<$Res> {
  _$AuthDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? captcha = null,
    Object? message = null,
    Object? seconds = null,
    Object? send = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      captcha: null == captcha
          ? _value.captcha
          : captcha // ignore: cast_nullable_to_non_nullable
              as CapthaDataModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      send: null == send
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CapthaDataModelCopyWith<$Res> get captcha {
    return $CapthaDataModelCopyWith<$Res>(_value.captcha, (value) {
      return _then(_value.copyWith(captcha: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthDataModelImplCopyWith<$Res>
    implements $AuthDataModelCopyWith<$Res> {
  factory _$$AuthDataModelImplCopyWith(
          _$AuthDataModelImpl value, $Res Function(_$AuthDataModelImpl) then) =
      __$$AuthDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      CapthaDataModel captcha,
      String message,
      int seconds,
      String send});

  @override
  $CapthaDataModelCopyWith<$Res> get captcha;
}

/// @nodoc
class __$$AuthDataModelImplCopyWithImpl<$Res>
    extends _$AuthDataModelCopyWithImpl<$Res, _$AuthDataModelImpl>
    implements _$$AuthDataModelImplCopyWith<$Res> {
  __$$AuthDataModelImplCopyWithImpl(
      _$AuthDataModelImpl _value, $Res Function(_$AuthDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? captcha = null,
    Object? message = null,
    Object? seconds = null,
    Object? send = null,
  }) {
    return _then(_$AuthDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      captcha: null == captcha
          ? _value.captcha
          : captcha // ignore: cast_nullable_to_non_nullable
              as CapthaDataModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      send: null == send
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthDataModelImpl extends _AuthDataModel {
  _$AuthDataModelImpl(
      {required this.r,
      required this.captcha,
      required this.message,
      required this.seconds,
      required this.send})
      : super._();

  @override
  final String r;
  @override
  final CapthaDataModel captcha;
  @override
  final String message;
  @override
  final int seconds;
  @override
  final String send;

  @override
  String toString() {
    return 'AuthDataModel(r: $r, captcha: $captcha, message: $message, seconds: $seconds, send: $send)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.captcha, captcha) || other.captcha == captcha) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.send, send) || other.send == send));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, r, captcha, message, seconds, send);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDataModelImplCopyWith<_$AuthDataModelImpl> get copyWith =>
      __$$AuthDataModelImplCopyWithImpl<_$AuthDataModelImpl>(this, _$identity);
}

abstract class _AuthDataModel extends AuthDataModel {
  factory _AuthDataModel(
      {required final String r,
      required final CapthaDataModel captcha,
      required final String message,
      required final int seconds,
      required final String send}) = _$AuthDataModelImpl;
  _AuthDataModel._() : super._();

  @override
  String get r;
  @override
  CapthaDataModel get captcha;
  @override
  String get message;
  @override
  int get seconds;
  @override
  String get send;
  @override
  @JsonKey(ignore: true)
  _$$AuthDataModelImplCopyWith<_$AuthDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
