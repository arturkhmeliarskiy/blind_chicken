// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserDataModel get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoDataModelCopyWith<UserInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDataModelCopyWith<$Res> {
  factory $UserInfoDataModelCopyWith(
          UserInfoDataModel value, $Res Function(UserInfoDataModel) then) =
      _$UserInfoDataModelCopyWithImpl<$Res, UserInfoDataModel>;
  @useResult
  $Res call({String r, String message, UserDataModel user});

  $UserDataModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserInfoDataModelCopyWithImpl<$Res, $Val extends UserInfoDataModel>
    implements $UserInfoDataModelCopyWith<$Res> {
  _$UserInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res> get user {
    return $UserDataModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoDataModelImplCopyWith<$Res>
    implements $UserInfoDataModelCopyWith<$Res> {
  factory _$$UserInfoDataModelImplCopyWith(_$UserInfoDataModelImpl value,
          $Res Function(_$UserInfoDataModelImpl) then) =
      __$$UserInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String message, UserDataModel user});

  @override
  $UserDataModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserInfoDataModelImplCopyWithImpl<$Res>
    extends _$UserInfoDataModelCopyWithImpl<$Res, _$UserInfoDataModelImpl>
    implements _$$UserInfoDataModelImplCopyWith<$Res> {
  __$$UserInfoDataModelImplCopyWithImpl(_$UserInfoDataModelImpl _value,
      $Res Function(_$UserInfoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_$UserInfoDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDataModel,
    ));
  }
}

/// @nodoc

class _$UserInfoDataModelImpl extends _UserInfoDataModel {
  _$UserInfoDataModelImpl(
      {required this.r, required this.message, required this.user})
      : super._();

  @override
  final String r;
  @override
  final String message;
  @override
  final UserDataModel user;

  @override
  String toString() {
    return 'UserInfoDataModel(r: $r, message: $message, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, message, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoDataModelImplCopyWith<_$UserInfoDataModelImpl> get copyWith =>
      __$$UserInfoDataModelImplCopyWithImpl<_$UserInfoDataModelImpl>(
          this, _$identity);
}

abstract class _UserInfoDataModel extends UserInfoDataModel {
  factory _UserInfoDataModel(
      {required final String r,
      required final String message,
      required final UserDataModel user}) = _$UserInfoDataModelImpl;
  _UserInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get message;
  @override
  UserDataModel get user;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoDataModelImplCopyWith<_$UserInfoDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
