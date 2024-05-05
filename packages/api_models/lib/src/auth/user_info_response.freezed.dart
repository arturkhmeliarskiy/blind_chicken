// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoResponse _$UserInfoResponseFromJson(Map<String, dynamic> json) {
  return _UserInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$UserInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  @JsonKey(name: 'e')
  String? get message => throw _privateConstructorUsedError;
  UserResponse? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoResponseCopyWith<UserInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoResponseCopyWith<$Res> {
  factory $UserInfoResponseCopyWith(
          UserInfoResponse value, $Res Function(UserInfoResponse) then) =
      _$UserInfoResponseCopyWithImpl<$Res, UserInfoResponse>;
  @useResult
  $Res call(
      {String? r, @JsonKey(name: 'e') String? message, UserResponse? user});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserInfoResponseCopyWithImpl<$Res, $Val extends UserInfoResponse>
    implements $UserInfoResponseCopyWith<$Res> {
  _$UserInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoResponseImplCopyWith<$Res>
    implements $UserInfoResponseCopyWith<$Res> {
  factory _$$UserInfoResponseImplCopyWith(_$UserInfoResponseImpl value,
          $Res Function(_$UserInfoResponseImpl) then) =
      __$$UserInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r, @JsonKey(name: 'e') String? message, UserResponse? user});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserInfoResponseImplCopyWithImpl<$Res>
    extends _$UserInfoResponseCopyWithImpl<$Res, _$UserInfoResponseImpl>
    implements _$$UserInfoResponseImplCopyWith<$Res> {
  __$$UserInfoResponseImplCopyWithImpl(_$UserInfoResponseImpl _value,
      $Res Function(_$UserInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_$UserInfoResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoResponseImpl extends _UserInfoResponse {
  _$UserInfoResponseImpl({this.r, @JsonKey(name: 'e') this.message, this.user})
      : super._();

  factory _$UserInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  @JsonKey(name: 'e')
  final String? message;
  @override
  final UserResponse? user;

  @override
  String toString() {
    return 'UserInfoResponse(r: $r, message: $message, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, message, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoResponseImplCopyWith<_$UserInfoResponseImpl> get copyWith =>
      __$$UserInfoResponseImplCopyWithImpl<_$UserInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _UserInfoResponse extends UserInfoResponse {
  factory _UserInfoResponse(
      {final String? r,
      @JsonKey(name: 'e') final String? message,
      final UserResponse? user}) = _$UserInfoResponseImpl;
  _UserInfoResponse._() : super._();

  factory _UserInfoResponse.fromJson(Map<String, dynamic> json) =
      _$UserInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  @JsonKey(name: 'e')
  String? get message;
  @override
  UserResponse? get user;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoResponseImplCopyWith<_$UserInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
