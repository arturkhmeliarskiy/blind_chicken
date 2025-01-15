// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String? get r => throw _privateConstructorUsedError;
  CapthaResponse? get captcha => throw _privateConstructorUsedError;
  @JsonKey(name: 'e')
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 't')
  int? get seconds => throw _privateConstructorUsedError;
  String? get send => throw _privateConstructorUsedError;

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call(
      {String? r,
      CapthaResponse? captcha,
      @JsonKey(name: 'e') String? errorMessage,
      @JsonKey(name: 't') int? seconds,
      String? send});

  $CapthaResponseCopyWith<$Res>? get captcha;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? captcha = freezed,
    Object? errorMessage = freezed,
    Object? seconds = freezed,
    Object? send = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      captcha: freezed == captcha
          ? _value.captcha
          : captcha // ignore: cast_nullable_to_non_nullable
              as CapthaResponse?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
      send: freezed == send
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CapthaResponseCopyWith<$Res>? get captcha {
    if (_value.captcha == null) {
      return null;
    }

    return $CapthaResponseCopyWith<$Res>(_value.captcha!, (value) {
      return _then(_value.copyWith(captcha: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
          _$AuthResponseImpl value, $Res Function(_$AuthResponseImpl) then) =
      __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      CapthaResponse? captcha,
      @JsonKey(name: 'e') String? errorMessage,
      @JsonKey(name: 't') int? seconds,
      String? send});

  @override
  $CapthaResponseCopyWith<$Res>? get captcha;
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
      _$AuthResponseImpl _value, $Res Function(_$AuthResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? captcha = freezed,
    Object? errorMessage = freezed,
    Object? seconds = freezed,
    Object? send = freezed,
  }) {
    return _then(_$AuthResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      captcha: freezed == captcha
          ? _value.captcha
          : captcha // ignore: cast_nullable_to_non_nullable
              as CapthaResponse?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      seconds: freezed == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int?,
      send: freezed == send
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseImpl extends _AuthResponse {
  _$AuthResponseImpl(
      {this.r,
      this.captcha,
      @JsonKey(name: 'e') this.errorMessage,
      @JsonKey(name: 't') this.seconds,
      this.send})
      : super._();

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final CapthaResponse? captcha;
  @override
  @JsonKey(name: 'e')
  final String? errorMessage;
  @override
  @JsonKey(name: 't')
  final int? seconds;
  @override
  final String? send;

  @override
  String toString() {
    return 'AuthResponse(r: $r, captcha: $captcha, errorMessage: $errorMessage, seconds: $seconds, send: $send)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.captcha, captcha) || other.captcha == captcha) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.send, send) || other.send == send));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, r, captcha, errorMessage, seconds, send);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthResponse extends AuthResponse {
  factory _AuthResponse(
      {final String? r,
      final CapthaResponse? captcha,
      @JsonKey(name: 'e') final String? errorMessage,
      @JsonKey(name: 't') final int? seconds,
      final String? send}) = _$AuthResponseImpl;
  _AuthResponse._() : super._();

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  String? get r;
  @override
  CapthaResponse? get captcha;
  @override
  @JsonKey(name: 'e')
  String? get errorMessage;
  @override
  @JsonKey(name: 't')
  int? get seconds;
  @override
  String? get send;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
