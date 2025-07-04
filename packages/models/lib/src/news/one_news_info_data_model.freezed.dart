// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_news_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OneNewsInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  NewsInfoItemDataModel get data => throw _privateConstructorUsedError;
  bool get isViewed => throw _privateConstructorUsedError;

  /// Create a copy of OneNewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneNewsInfoDataModelCopyWith<OneNewsInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneNewsInfoDataModelCopyWith<$Res> {
  factory $OneNewsInfoDataModelCopyWith(OneNewsInfoDataModel value,
          $Res Function(OneNewsInfoDataModel) then) =
      _$OneNewsInfoDataModelCopyWithImpl<$Res, OneNewsInfoDataModel>;
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      NewsInfoItemDataModel data,
      bool isViewed});

  $NewsInfoItemDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$OneNewsInfoDataModelCopyWithImpl<$Res,
        $Val extends OneNewsInfoDataModel>
    implements $OneNewsInfoDataModelCopyWith<$Res> {
  _$OneNewsInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneNewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? data = null,
    Object? isViewed = null,
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
              as NewsInfoItemDataModel,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of OneNewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsInfoItemDataModelCopyWith<$Res> get data {
    return $NewsInfoItemDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OneNewsInfoDataModelImplCopyWith<$Res>
    implements $OneNewsInfoDataModelCopyWith<$Res> {
  factory _$$OneNewsInfoDataModelImplCopyWith(_$OneNewsInfoDataModelImpl value,
          $Res Function(_$OneNewsInfoDataModelImpl) then) =
      __$$OneNewsInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      NewsInfoItemDataModel data,
      bool isViewed});

  @override
  $NewsInfoItemDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$OneNewsInfoDataModelImplCopyWithImpl<$Res>
    extends _$OneNewsInfoDataModelCopyWithImpl<$Res, _$OneNewsInfoDataModelImpl>
    implements _$$OneNewsInfoDataModelImplCopyWith<$Res> {
  __$$OneNewsInfoDataModelImplCopyWithImpl(_$OneNewsInfoDataModelImpl _value,
      $Res Function(_$OneNewsInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneNewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? data = null,
    Object? isViewed = null,
  }) {
    return _then(_$OneNewsInfoDataModelImpl(
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
              as NewsInfoItemDataModel,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OneNewsInfoDataModelImpl extends _OneNewsInfoDataModel {
  _$OneNewsInfoDataModelImpl(
      {required this.r,
      required this.e,
      required this.errorMessage,
      required this.data,
      required this.isViewed})
      : super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;
  @override
  final NewsInfoItemDataModel data;
  @override
  final bool isViewed;

  @override
  String toString() {
    return 'OneNewsInfoDataModel(r: $r, e: $e, errorMessage: $errorMessage, data: $data, isViewed: $isViewed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneNewsInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, r, e, errorMessage, data, isViewed);

  /// Create a copy of OneNewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneNewsInfoDataModelImplCopyWith<_$OneNewsInfoDataModelImpl>
      get copyWith =>
          __$$OneNewsInfoDataModelImplCopyWithImpl<_$OneNewsInfoDataModelImpl>(
              this, _$identity);
}

abstract class _OneNewsInfoDataModel extends OneNewsInfoDataModel {
  factory _OneNewsInfoDataModel(
      {required final String r,
      required final String e,
      required final String errorMessage,
      required final NewsInfoItemDataModel data,
      required final bool isViewed}) = _$OneNewsInfoDataModelImpl;
  _OneNewsInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;
  @override
  NewsInfoItemDataModel get data;
  @override
  bool get isViewed;

  /// Create a copy of OneNewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneNewsInfoDataModelImplCopyWith<_$OneNewsInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
