// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_info_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentInfoItemDataModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get mobileImage => throw _privateConstructorUsedError;
  String get tabletImage => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of ContentInfoItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentInfoItemDataModelCopyWith<ContentInfoItemDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentInfoItemDataModelCopyWith<$Res> {
  factory $ContentInfoItemDataModelCopyWith(ContentInfoItemDataModel value,
          $Res Function(ContentInfoItemDataModel) then) =
      _$ContentInfoItemDataModelCopyWithImpl<$Res, ContentInfoItemDataModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String mobileImage,
      String tabletImage,
      String url});
}

/// @nodoc
class _$ContentInfoItemDataModelCopyWithImpl<$Res,
        $Val extends ContentInfoItemDataModel>
    implements $ContentInfoItemDataModelCopyWith<$Res> {
  _$ContentInfoItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentInfoItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? mobileImage = null,
    Object? tabletImage = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mobileImage: null == mobileImage
          ? _value.mobileImage
          : mobileImage // ignore: cast_nullable_to_non_nullable
              as String,
      tabletImage: null == tabletImage
          ? _value.tabletImage
          : tabletImage // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentInfoItemDataModelImplCopyWith<$Res>
    implements $ContentInfoItemDataModelCopyWith<$Res> {
  factory _$$ContentInfoItemDataModelImplCopyWith(
          _$ContentInfoItemDataModelImpl value,
          $Res Function(_$ContentInfoItemDataModelImpl) then) =
      __$$ContentInfoItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String mobileImage,
      String tabletImage,
      String url});
}

/// @nodoc
class __$$ContentInfoItemDataModelImplCopyWithImpl<$Res>
    extends _$ContentInfoItemDataModelCopyWithImpl<$Res,
        _$ContentInfoItemDataModelImpl>
    implements _$$ContentInfoItemDataModelImplCopyWith<$Res> {
  __$$ContentInfoItemDataModelImplCopyWithImpl(
      _$ContentInfoItemDataModelImpl _value,
      $Res Function(_$ContentInfoItemDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentInfoItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? mobileImage = null,
    Object? tabletImage = null,
    Object? url = null,
  }) {
    return _then(_$ContentInfoItemDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mobileImage: null == mobileImage
          ? _value.mobileImage
          : mobileImage // ignore: cast_nullable_to_non_nullable
              as String,
      tabletImage: null == tabletImage
          ? _value.tabletImage
          : tabletImage // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentInfoItemDataModelImpl extends _ContentInfoItemDataModel {
  _$ContentInfoItemDataModelImpl(
      {required this.id,
      required this.title,
      required this.mobileImage,
      required this.tabletImage,
      required this.url})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String mobileImage;
  @override
  final String tabletImage;
  @override
  final String url;

  @override
  String toString() {
    return 'ContentInfoItemDataModel(id: $id, title: $title, mobileImage: $mobileImage, tabletImage: $tabletImage, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentInfoItemDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mobileImage, mobileImage) ||
                other.mobileImage == mobileImage) &&
            (identical(other.tabletImage, tabletImage) ||
                other.tabletImage == tabletImage) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, mobileImage, tabletImage, url);

  /// Create a copy of ContentInfoItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentInfoItemDataModelImplCopyWith<_$ContentInfoItemDataModelImpl>
      get copyWith => __$$ContentInfoItemDataModelImplCopyWithImpl<
          _$ContentInfoItemDataModelImpl>(this, _$identity);
}

abstract class _ContentInfoItemDataModel extends ContentInfoItemDataModel {
  factory _ContentInfoItemDataModel(
      {required final String id,
      required final String title,
      required final String mobileImage,
      required final String tabletImage,
      required final String url}) = _$ContentInfoItemDataModelImpl;
  _ContentInfoItemDataModel._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get mobileImage;
  @override
  String get tabletImage;
  @override
  String get url;

  /// Create a copy of ContentInfoItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentInfoItemDataModelImplCopyWith<_$ContentInfoItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
