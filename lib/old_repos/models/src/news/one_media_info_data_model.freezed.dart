// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_media_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OneMediaInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  MediaInfoItemDataModel get data => throw _privateConstructorUsedError;
  bool get isViewed => throw _privateConstructorUsedError;

  /// Create a copy of OneMediaInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneMediaInfoDataModelCopyWith<OneMediaInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneMediaInfoDataModelCopyWith<$Res> {
  factory $OneMediaInfoDataModelCopyWith(OneMediaInfoDataModel value,
          $Res Function(OneMediaInfoDataModel) then) =
      _$OneMediaInfoDataModelCopyWithImpl<$Res, OneMediaInfoDataModel>;
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      MediaInfoItemDataModel data,
      bool isViewed});

  $MediaInfoItemDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$OneMediaInfoDataModelCopyWithImpl<$Res,
        $Val extends OneMediaInfoDataModel>
    implements $OneMediaInfoDataModelCopyWith<$Res> {
  _$OneMediaInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneMediaInfoDataModel
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
              as MediaInfoItemDataModel,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of OneMediaInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaInfoItemDataModelCopyWith<$Res> get data {
    return $MediaInfoItemDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OneMediaInfoDataModelImplCopyWith<$Res>
    implements $OneMediaInfoDataModelCopyWith<$Res> {
  factory _$$OneMediaInfoDataModelImplCopyWith(
          _$OneMediaInfoDataModelImpl value,
          $Res Function(_$OneMediaInfoDataModelImpl) then) =
      __$$OneMediaInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      MediaInfoItemDataModel data,
      bool isViewed});

  @override
  $MediaInfoItemDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$OneMediaInfoDataModelImplCopyWithImpl<$Res>
    extends _$OneMediaInfoDataModelCopyWithImpl<$Res,
        _$OneMediaInfoDataModelImpl>
    implements _$$OneMediaInfoDataModelImplCopyWith<$Res> {
  __$$OneMediaInfoDataModelImplCopyWithImpl(_$OneMediaInfoDataModelImpl _value,
      $Res Function(_$OneMediaInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneMediaInfoDataModel
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
    return _then(_$OneMediaInfoDataModelImpl(
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
              as MediaInfoItemDataModel,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OneMediaInfoDataModelImpl extends _OneMediaInfoDataModel {
  _$OneMediaInfoDataModelImpl(
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
  final MediaInfoItemDataModel data;
  @override
  final bool isViewed;

  @override
  String toString() {
    return 'OneMediaInfoDataModel(r: $r, e: $e, errorMessage: $errorMessage, data: $data, isViewed: $isViewed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneMediaInfoDataModelImpl &&
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

  /// Create a copy of OneMediaInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneMediaInfoDataModelImplCopyWith<_$OneMediaInfoDataModelImpl>
      get copyWith => __$$OneMediaInfoDataModelImplCopyWithImpl<
          _$OneMediaInfoDataModelImpl>(this, _$identity);
}

abstract class _OneMediaInfoDataModel extends OneMediaInfoDataModel {
  factory _OneMediaInfoDataModel(
      {required final String r,
      required final String e,
      required final String errorMessage,
      required final MediaInfoItemDataModel data,
      required final bool isViewed}) = _$OneMediaInfoDataModelImpl;
  _OneMediaInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;
  @override
  MediaInfoItemDataModel get data;
  @override
  bool get isViewed;

  /// Create a copy of OneMediaInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneMediaInfoDataModelImplCopyWith<_$OneMediaInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
