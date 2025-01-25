// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_cache_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentCacheInfoDataModel {
  String get screen => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;
  List<String> get content => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<ContentCacheInfoItemDataModel> get info =>
      throw _privateConstructorUsedError;

  /// Create a copy of ContentCacheInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentCacheInfoDataModelCopyWith<ContentCacheInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCacheInfoDataModelCopyWith<$Res> {
  factory $ContentCacheInfoDataModelCopyWith(ContentCacheInfoDataModel value,
          $Res Function(ContentCacheInfoDataModel) then) =
      _$ContentCacheInfoDataModelCopyWithImpl<$Res, ContentCacheInfoDataModel>;
  @useResult
  $Res call(
      {String screen,
      String dateTime,
      List<String> content,
      List<String> images,
      List<ContentCacheInfoItemDataModel> info});
}

/// @nodoc
class _$ContentCacheInfoDataModelCopyWithImpl<$Res,
        $Val extends ContentCacheInfoDataModel>
    implements $ContentCacheInfoDataModelCopyWith<$Res> {
  _$ContentCacheInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentCacheInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = null,
    Object? dateTime = null,
    Object? content = null,
    Object? images = null,
    Object? info = null,
  }) {
    return _then(_value.copyWith(
      screen: null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<ContentCacheInfoItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentCacheInfoDataModelImplCopyWith<$Res>
    implements $ContentCacheInfoDataModelCopyWith<$Res> {
  factory _$$ContentCacheInfoDataModelImplCopyWith(
          _$ContentCacheInfoDataModelImpl value,
          $Res Function(_$ContentCacheInfoDataModelImpl) then) =
      __$$ContentCacheInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String screen,
      String dateTime,
      List<String> content,
      List<String> images,
      List<ContentCacheInfoItemDataModel> info});
}

/// @nodoc
class __$$ContentCacheInfoDataModelImplCopyWithImpl<$Res>
    extends _$ContentCacheInfoDataModelCopyWithImpl<$Res,
        _$ContentCacheInfoDataModelImpl>
    implements _$$ContentCacheInfoDataModelImplCopyWith<$Res> {
  __$$ContentCacheInfoDataModelImplCopyWithImpl(
      _$ContentCacheInfoDataModelImpl _value,
      $Res Function(_$ContentCacheInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentCacheInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = null,
    Object? dateTime = null,
    Object? content = null,
    Object? images = null,
    Object? info = null,
  }) {
    return _then(_$ContentCacheInfoDataModelImpl(
      screen: null == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      info: null == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<ContentCacheInfoItemDataModel>,
    ));
  }
}

/// @nodoc

class _$ContentCacheInfoDataModelImpl extends _ContentCacheInfoDataModel {
  _$ContentCacheInfoDataModelImpl(
      {required this.screen,
      required this.dateTime,
      required final List<String> content,
      required final List<String> images,
      required final List<ContentCacheInfoItemDataModel> info})
      : _content = content,
        _images = images,
        _info = info,
        super._();

  @override
  final String screen;
  @override
  final String dateTime;
  final List<String> _content;
  @override
  List<String> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<ContentCacheInfoItemDataModel> _info;
  @override
  List<ContentCacheInfoItemDataModel> get info {
    if (_info is EqualUnmodifiableListView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  String toString() {
    return 'ContentCacheInfoDataModel(screen: $screen, dateTime: $dateTime, content: $content, images: $images, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentCacheInfoDataModelImpl &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._info, _info));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      screen,
      dateTime,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_info));

  /// Create a copy of ContentCacheInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentCacheInfoDataModelImplCopyWith<_$ContentCacheInfoDataModelImpl>
      get copyWith => __$$ContentCacheInfoDataModelImplCopyWithImpl<
          _$ContentCacheInfoDataModelImpl>(this, _$identity);
}

abstract class _ContentCacheInfoDataModel extends ContentCacheInfoDataModel {
  factory _ContentCacheInfoDataModel(
          {required final String screen,
          required final String dateTime,
          required final List<String> content,
          required final List<String> images,
          required final List<ContentCacheInfoItemDataModel> info}) =
      _$ContentCacheInfoDataModelImpl;
  _ContentCacheInfoDataModel._() : super._();

  @override
  String get screen;
  @override
  String get dateTime;
  @override
  List<String> get content;
  @override
  List<String> get images;
  @override
  List<ContentCacheInfoItemDataModel> get info;

  /// Create a copy of ContentCacheInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentCacheInfoDataModelImplCopyWith<_$ContentCacheInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
