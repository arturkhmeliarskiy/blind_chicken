// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_cache_info_item_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentCacheInfoItemDataModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Uint8List get mobileImage => throw _privateConstructorUsedError;
  Uint8List get tabletImage => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of ContentCacheInfoItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentCacheInfoItemDataModelCopyWith<ContentCacheInfoItemDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCacheInfoItemDataModelCopyWith<$Res> {
  factory $ContentCacheInfoItemDataModelCopyWith(
          ContentCacheInfoItemDataModel value,
          $Res Function(ContentCacheInfoItemDataModel) then) =
      _$ContentCacheInfoItemDataModelCopyWithImpl<$Res,
          ContentCacheInfoItemDataModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      Uint8List mobileImage,
      Uint8List tabletImage,
      String url});
}

/// @nodoc
class _$ContentCacheInfoItemDataModelCopyWithImpl<$Res,
        $Val extends ContentCacheInfoItemDataModel>
    implements $ContentCacheInfoItemDataModelCopyWith<$Res> {
  _$ContentCacheInfoItemDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentCacheInfoItemDataModel
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
              as Uint8List,
      tabletImage: null == tabletImage
          ? _value.tabletImage
          : tabletImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentCacheInfoItemDataModelImplCopyWith<$Res>
    implements $ContentCacheInfoItemDataModelCopyWith<$Res> {
  factory _$$ContentCacheInfoItemDataModelImplCopyWith(
          _$ContentCacheInfoItemDataModelImpl value,
          $Res Function(_$ContentCacheInfoItemDataModelImpl) then) =
      __$$ContentCacheInfoItemDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      Uint8List mobileImage,
      Uint8List tabletImage,
      String url});
}

/// @nodoc
class __$$ContentCacheInfoItemDataModelImplCopyWithImpl<$Res>
    extends _$ContentCacheInfoItemDataModelCopyWithImpl<$Res,
        _$ContentCacheInfoItemDataModelImpl>
    implements _$$ContentCacheInfoItemDataModelImplCopyWith<$Res> {
  __$$ContentCacheInfoItemDataModelImplCopyWithImpl(
      _$ContentCacheInfoItemDataModelImpl _value,
      $Res Function(_$ContentCacheInfoItemDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentCacheInfoItemDataModel
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
    return _then(_$ContentCacheInfoItemDataModelImpl(
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
              as Uint8List,
      tabletImage: null == tabletImage
          ? _value.tabletImage
          : tabletImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentCacheInfoItemDataModelImpl
    extends _ContentCacheInfoItemDataModel {
  _$ContentCacheInfoItemDataModelImpl(
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
  final Uint8List mobileImage;
  @override
  final Uint8List tabletImage;
  @override
  final String url;

  @override
  String toString() {
    return 'ContentCacheInfoItemDataModel(id: $id, title: $title, mobileImage: $mobileImage, tabletImage: $tabletImage, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentCacheInfoItemDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.mobileImage, mobileImage) &&
            const DeepCollectionEquality()
                .equals(other.tabletImage, tabletImage) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(mobileImage),
      const DeepCollectionEquality().hash(tabletImage),
      url);

  /// Create a copy of ContentCacheInfoItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentCacheInfoItemDataModelImplCopyWith<
          _$ContentCacheInfoItemDataModelImpl>
      get copyWith => __$$ContentCacheInfoItemDataModelImplCopyWithImpl<
          _$ContentCacheInfoItemDataModelImpl>(this, _$identity);
}

abstract class _ContentCacheInfoItemDataModel
    extends ContentCacheInfoItemDataModel {
  factory _ContentCacheInfoItemDataModel(
      {required final String id,
      required final String title,
      required final Uint8List mobileImage,
      required final Uint8List tabletImage,
      required final String url}) = _$ContentCacheInfoItemDataModelImpl;
  _ContentCacheInfoItemDataModel._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  Uint8List get mobileImage;
  @override
  Uint8List get tabletImage;
  @override
  String get url;

  /// Create a copy of ContentCacheInfoItemDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentCacheInfoItemDataModelImplCopyWith<
          _$ContentCacheInfoItemDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
