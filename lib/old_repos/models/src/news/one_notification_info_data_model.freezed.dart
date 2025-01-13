// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_notification_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OneNotificationInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  NotificationInfoItemDataModel get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OneNotificationInfoDataModelCopyWith<OneNotificationInfoDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneNotificationInfoDataModelCopyWith<$Res> {
  factory $OneNotificationInfoDataModelCopyWith(
          OneNotificationInfoDataModel value,
          $Res Function(OneNotificationInfoDataModel) then) =
      _$OneNotificationInfoDataModelCopyWithImpl<$Res,
          OneNotificationInfoDataModel>;
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      NotificationInfoItemDataModel data});

  $NotificationInfoItemDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$OneNotificationInfoDataModelCopyWithImpl<$Res,
        $Val extends OneNotificationInfoDataModel>
    implements $OneNotificationInfoDataModelCopyWith<$Res> {
  _$OneNotificationInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? data = null,
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
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationInfoItemDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationInfoItemDataModelCopyWith<$Res> get data {
    return $NotificationInfoItemDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OneNotificationInfoDataModelImplCopyWith<$Res>
    implements $OneNotificationInfoDataModelCopyWith<$Res> {
  factory _$$OneNotificationInfoDataModelImplCopyWith(
          _$OneNotificationInfoDataModelImpl value,
          $Res Function(_$OneNotificationInfoDataModelImpl) then) =
      __$$OneNotificationInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      NotificationInfoItemDataModel data});

  @override
  $NotificationInfoItemDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$OneNotificationInfoDataModelImplCopyWithImpl<$Res>
    extends _$OneNotificationInfoDataModelCopyWithImpl<$Res,
        _$OneNotificationInfoDataModelImpl>
    implements _$$OneNotificationInfoDataModelImplCopyWith<$Res> {
  __$$OneNotificationInfoDataModelImplCopyWithImpl(
      _$OneNotificationInfoDataModelImpl _value,
      $Res Function(_$OneNotificationInfoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? data = null,
  }) {
    return _then(_$OneNotificationInfoDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationInfoItemDataModel,
    ));
  }
}

/// @nodoc

class _$OneNotificationInfoDataModelImpl extends _OneNotificationInfoDataModel {
  _$OneNotificationInfoDataModelImpl(
      {required this.r,
      required this.e,
      required this.errorMessage,
      required this.data})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;
  @override
  final NotificationInfoItemDataModel data;

  @override
  String toString() {
    return 'OneNotificationInfoDataModel(r: $r, e: $e, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneNotificationInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneNotificationInfoDataModelImplCopyWith<
          _$OneNotificationInfoDataModelImpl>
      get copyWith => __$$OneNotificationInfoDataModelImplCopyWithImpl<
          _$OneNotificationInfoDataModelImpl>(this, _$identity);
}

abstract class _OneNotificationInfoDataModel
    extends OneNotificationInfoDataModel {
  factory _OneNotificationInfoDataModel(
          {required final String r,
          required final String e,
          required final String errorMessage,
          required final NotificationInfoItemDataModel data}) =
      _$OneNotificationInfoDataModelImpl;
  _OneNotificationInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;
  @override
  NotificationInfoItemDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$OneNotificationInfoDataModelImplCopyWith<
          _$OneNotificationInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
