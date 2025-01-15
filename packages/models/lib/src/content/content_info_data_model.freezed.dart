// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentInfoDataModel {
  String get dateTime => throw _privateConstructorUsedError;
  List<String> get content => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  List<ContentInfoItemDataModel> get info => throw _privateConstructorUsedError;
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentInfoDataModelCopyWith<ContentInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentInfoDataModelCopyWith<$Res> {
  factory $ContentInfoDataModelCopyWith(ContentInfoDataModel value,
          $Res Function(ContentInfoDataModel) then) =
      _$ContentInfoDataModelCopyWithImpl<$Res, ContentInfoDataModel>;
  @useResult
  $Res call(
      {String dateTime,
      List<String> content,
      List<String> images,
      List<ContentInfoItemDataModel> info,
      String r,
      String e,
      String errorMessage});
}

/// @nodoc
class _$ContentInfoDataModelCopyWithImpl<$Res,
        $Val extends ContentInfoDataModel>
    implements $ContentInfoDataModelCopyWith<$Res> {
  _$ContentInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? content = null,
    Object? images = null,
    Object? info = null,
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
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
              as List<ContentInfoItemDataModel>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentInfoDataModelImplCopyWith<$Res>
    implements $ContentInfoDataModelCopyWith<$Res> {
  factory _$$ContentInfoDataModelImplCopyWith(_$ContentInfoDataModelImpl value,
          $Res Function(_$ContentInfoDataModelImpl) then) =
      __$$ContentInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dateTime,
      List<String> content,
      List<String> images,
      List<ContentInfoItemDataModel> info,
      String r,
      String e,
      String errorMessage});
}

/// @nodoc
class __$$ContentInfoDataModelImplCopyWithImpl<$Res>
    extends _$ContentInfoDataModelCopyWithImpl<$Res, _$ContentInfoDataModelImpl>
    implements _$$ContentInfoDataModelImplCopyWith<$Res> {
  __$$ContentInfoDataModelImplCopyWithImpl(_$ContentInfoDataModelImpl _value,
      $Res Function(_$ContentInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? content = null,
    Object? images = null,
    Object? info = null,
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ContentInfoDataModelImpl(
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
              as List<ContentInfoItemDataModel>,
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
    ));
  }
}

/// @nodoc

class _$ContentInfoDataModelImpl extends _ContentInfoDataModel {
  _$ContentInfoDataModelImpl(
      {required this.dateTime,
      required final List<String> content,
      required final List<String> images,
      required final List<ContentInfoItemDataModel> info,
      required this.r,
      required this.e,
      required this.errorMessage})
      : _content = content,
        _images = images,
        _info = info,
        super._();

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

  final List<ContentInfoItemDataModel> _info;
  @override
  List<ContentInfoItemDataModel> get info {
    if (_info is EqualUnmodifiableListView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContentInfoDataModel(dateTime: $dateTime, content: $content, images: $images, info: $info, r: $r, e: $e, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentInfoDataModelImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._info, _info) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateTime,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_info),
      r,
      e,
      errorMessage);

  /// Create a copy of ContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentInfoDataModelImplCopyWith<_$ContentInfoDataModelImpl>
      get copyWith =>
          __$$ContentInfoDataModelImplCopyWithImpl<_$ContentInfoDataModelImpl>(
              this, _$identity);
}

abstract class _ContentInfoDataModel extends ContentInfoDataModel {
  factory _ContentInfoDataModel(
      {required final String dateTime,
      required final List<String> content,
      required final List<String> images,
      required final List<ContentInfoItemDataModel> info,
      required final String r,
      required final String e,
      required final String errorMessage}) = _$ContentInfoDataModelImpl;
  _ContentInfoDataModel._() : super._();

  @override
  String get dateTime;
  @override
  List<String> get content;
  @override
  List<String> get images;
  @override
  List<ContentInfoItemDataModel> get info;
  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;

  /// Create a copy of ContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentInfoDataModelImplCopyWith<_$ContentInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
