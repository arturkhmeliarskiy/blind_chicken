// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_info_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentInfoItemResponse _$ContentInfoItemResponseFromJson(
    Map<String, dynamic> json) {
  return _ContentInfoItemResponse.fromJson(json);
}

/// @nodoc
mixin _$ContentInfoItemResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_image')
  String? get mobileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'tablet_image')
  String? get tabletImage => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this ContentInfoItemResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentInfoItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentInfoItemResponseCopyWith<ContentInfoItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentInfoItemResponseCopyWith<$Res> {
  factory $ContentInfoItemResponseCopyWith(ContentInfoItemResponse value,
          $Res Function(ContentInfoItemResponse) then) =
      _$ContentInfoItemResponseCopyWithImpl<$Res, ContentInfoItemResponse>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      @JsonKey(name: 'mobile_image') String? mobileImage,
      @JsonKey(name: 'tablet_image') String? tabletImage,
      String? url});
}

/// @nodoc
class _$ContentInfoItemResponseCopyWithImpl<$Res,
        $Val extends ContentInfoItemResponse>
    implements $ContentInfoItemResponseCopyWith<$Res> {
  _$ContentInfoItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentInfoItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? mobileImage = freezed,
    Object? tabletImage = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileImage: freezed == mobileImage
          ? _value.mobileImage
          : mobileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      tabletImage: freezed == tabletImage
          ? _value.tabletImage
          : tabletImage // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentInfoItemResponseImplCopyWith<$Res>
    implements $ContentInfoItemResponseCopyWith<$Res> {
  factory _$$ContentInfoItemResponseImplCopyWith(
          _$ContentInfoItemResponseImpl value,
          $Res Function(_$ContentInfoItemResponseImpl) then) =
      __$$ContentInfoItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      @JsonKey(name: 'mobile_image') String? mobileImage,
      @JsonKey(name: 'tablet_image') String? tabletImage,
      String? url});
}

/// @nodoc
class __$$ContentInfoItemResponseImplCopyWithImpl<$Res>
    extends _$ContentInfoItemResponseCopyWithImpl<$Res,
        _$ContentInfoItemResponseImpl>
    implements _$$ContentInfoItemResponseImplCopyWith<$Res> {
  __$$ContentInfoItemResponseImplCopyWithImpl(
      _$ContentInfoItemResponseImpl _value,
      $Res Function(_$ContentInfoItemResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentInfoItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? mobileImage = freezed,
    Object? tabletImage = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ContentInfoItemResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileImage: freezed == mobileImage
          ? _value.mobileImage
          : mobileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      tabletImage: freezed == tabletImage
          ? _value.tabletImage
          : tabletImage // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentInfoItemResponseImpl extends _ContentInfoItemResponse {
  _$ContentInfoItemResponseImpl(
      {this.id,
      this.title,
      @JsonKey(name: 'mobile_image') this.mobileImage,
      @JsonKey(name: 'tablet_image') this.tabletImage,
      this.url})
      : super._();

  factory _$ContentInfoItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentInfoItemResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'mobile_image')
  final String? mobileImage;
  @override
  @JsonKey(name: 'tablet_image')
  final String? tabletImage;
  @override
  final String? url;

  @override
  String toString() {
    return 'ContentInfoItemResponse(id: $id, title: $title, mobileImage: $mobileImage, tabletImage: $tabletImage, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentInfoItemResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mobileImage, mobileImage) ||
                other.mobileImage == mobileImage) &&
            (identical(other.tabletImage, tabletImage) ||
                other.tabletImage == tabletImage) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, mobileImage, tabletImage, url);

  /// Create a copy of ContentInfoItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentInfoItemResponseImplCopyWith<_$ContentInfoItemResponseImpl>
      get copyWith => __$$ContentInfoItemResponseImplCopyWithImpl<
          _$ContentInfoItemResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentInfoItemResponseImplToJson(
      this,
    );
  }
}

abstract class _ContentInfoItemResponse extends ContentInfoItemResponse {
  factory _ContentInfoItemResponse(
      {final String? id,
      final String? title,
      @JsonKey(name: 'mobile_image') final String? mobileImage,
      @JsonKey(name: 'tablet_image') final String? tabletImage,
      final String? url}) = _$ContentInfoItemResponseImpl;
  _ContentInfoItemResponse._() : super._();

  factory _ContentInfoItemResponse.fromJson(Map<String, dynamic> json) =
      _$ContentInfoItemResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(name: 'mobile_image')
  String? get mobileImage;
  @override
  @JsonKey(name: 'tablet_image')
  String? get tabletImage;
  @override
  String? get url;

  /// Create a copy of ContentInfoItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentInfoItemResponseImplCopyWith<_$ContentInfoItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
