// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notification_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PushNotificationDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushNotificationDataModelCopyWith<PushNotificationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationDataModelCopyWith<$Res> {
  factory $PushNotificationDataModelCopyWith(PushNotificationDataModel value,
          $Res Function(PushNotificationDataModel) then) =
      _$PushNotificationDataModelCopyWithImpl<$Res, PushNotificationDataModel>;
  @useResult
  $Res call({String r, String e});
}

/// @nodoc
class _$PushNotificationDataModelCopyWithImpl<$Res,
        $Val extends PushNotificationDataModel>
    implements $PushNotificationDataModelCopyWith<$Res> {
  _$PushNotificationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushNotificationDataModelImplCopyWith<$Res>
    implements $PushNotificationDataModelCopyWith<$Res> {
  factory _$$PushNotificationDataModelImplCopyWith(
          _$PushNotificationDataModelImpl value,
          $Res Function(_$PushNotificationDataModelImpl) then) =
      __$$PushNotificationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e});
}

/// @nodoc
class __$$PushNotificationDataModelImplCopyWithImpl<$Res>
    extends _$PushNotificationDataModelCopyWithImpl<$Res,
        _$PushNotificationDataModelImpl>
    implements _$$PushNotificationDataModelImplCopyWith<$Res> {
  __$$PushNotificationDataModelImplCopyWithImpl(
      _$PushNotificationDataModelImpl _value,
      $Res Function(_$PushNotificationDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
  }) {
    return _then(_$PushNotificationDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PushNotificationDataModelImpl extends _PushNotificationDataModel {
  _$PushNotificationDataModelImpl({required this.r, required this.e})
      : super._();

  @override
  final String r;
  @override
  final String e;

  @override
  String toString() {
    return 'PushNotificationDataModel(r: $r, e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushNotificationDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushNotificationDataModelImplCopyWith<_$PushNotificationDataModelImpl>
      get copyWith => __$$PushNotificationDataModelImplCopyWithImpl<
          _$PushNotificationDataModelImpl>(this, _$identity);
}

abstract class _PushNotificationDataModel extends PushNotificationDataModel {
  factory _PushNotificationDataModel(
      {required final String r,
      required final String e}) = _$PushNotificationDataModelImpl;
  _PushNotificationDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  @JsonKey(ignore: true)
  _$$PushNotificationDataModelImplCopyWith<_$PushNotificationDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
