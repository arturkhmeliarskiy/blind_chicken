// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_slider_image_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsSliderImageItemDataModel {
  String get imageUrl => throw _privateConstructorUsedError;
  double get imageHeight => throw _privateConstructorUsedError;
  double get imageWeight => throw _privateConstructorUsedError;

  /// Create a copy of NewsSliderImageItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsSliderImageItemDataModelCopyWith<NewsSliderImageItemDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSliderImageItemDataModelCopyWith<$Res> {
  factory $NewsSliderImageItemDataModelCopyWith(
          NewsSliderImageItemDataModel value,
          $Res Function(NewsSliderImageItemDataModel) then) =
      _$NewsSliderImageItemDataModelCopyWithImpl<$Res,
          NewsSliderImageItemDataModel>;
  @useResult
  $Res call({String imageUrl, double imageHeight, double imageWeight});
}

/// @nodoc
class _$NewsSliderImageItemDataModelCopyWithImpl<$Res,
        $Val extends NewsSliderImageItemDataModel>
    implements $NewsSliderImageItemDataModelCopyWith<$Res> {
  _$NewsSliderImageItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsSliderImageItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? imageHeight = null,
    Object? imageWeight = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageHeight: null == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      imageWeight: null == imageWeight
          ? _value.imageWeight
          : imageWeight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSliderImageItemDataModelImplCopyWith<$Res>
    implements $NewsSliderImageItemDataModelCopyWith<$Res> {
  factory _$$NewsSliderImageItemDataModelImplCopyWith(
          _$NewsSliderImageItemDataModelImpl value,
          $Res Function(_$NewsSliderImageItemDataModelImpl) then) =
      __$$NewsSliderImageItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, double imageHeight, double imageWeight});
}

/// @nodoc
class __$$NewsSliderImageItemDataModelImplCopyWithImpl<$Res>
    extends _$NewsSliderImageItemDataModelCopyWithImpl<$Res,
        _$NewsSliderImageItemDataModelImpl>
    implements _$$NewsSliderImageItemDataModelImplCopyWith<$Res> {
  __$$NewsSliderImageItemDataModelImplCopyWithImpl(
      _$NewsSliderImageItemDataModelImpl _value,
      $Res Function(_$NewsSliderImageItemDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsSliderImageItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? imageHeight = null,
    Object? imageWeight = null,
  }) {
    return _then(_$NewsSliderImageItemDataModelImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageHeight: null == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      imageWeight: null == imageWeight
          ? _value.imageWeight
          : imageWeight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$NewsSliderImageItemDataModelImpl extends _NewsSliderImageItemDataModel {
  _$NewsSliderImageItemDataModelImpl(
      {required this.imageUrl,
      required this.imageHeight,
      required this.imageWeight})
      : super._();

  @override
  final String imageUrl;
  @override
  final double imageHeight;
  @override
  final double imageWeight;

  @override
  String toString() {
    return 'NewsSliderImageItemDataModel(imageUrl: $imageUrl, imageHeight: $imageHeight, imageWeight: $imageWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSliderImageItemDataModelImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageHeight, imageHeight) ||
                other.imageHeight == imageHeight) &&
            (identical(other.imageWeight, imageWeight) ||
                other.imageWeight == imageWeight));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, imageHeight, imageWeight);

  /// Create a copy of NewsSliderImageItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSliderImageItemDataModelImplCopyWith<
          _$NewsSliderImageItemDataModelImpl>
      get copyWith => __$$NewsSliderImageItemDataModelImplCopyWithImpl<
          _$NewsSliderImageItemDataModelImpl>(this, _$identity);
}

abstract class _NewsSliderImageItemDataModel
    extends NewsSliderImageItemDataModel {
  factory _NewsSliderImageItemDataModel(
      {required final String imageUrl,
      required final double imageHeight,
      required final double imageWeight}) = _$NewsSliderImageItemDataModelImpl;
  _NewsSliderImageItemDataModel._() : super._();

  @override
  String get imageUrl;
  @override
  double get imageHeight;
  @override
  double get imageWeight;

  /// Create a copy of NewsSliderImageItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsSliderImageItemDataModelImplCopyWith<
          _$NewsSliderImageItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
