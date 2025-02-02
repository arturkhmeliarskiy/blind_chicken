// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentInfoResponse _$ContentInfoResponseFromJson(Map<String, dynamic> json) {
  return _ContentInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$ContentInfoResponse {
  @JsonKey(name: 'date_time')
  String? get dateTime => throw _privateConstructorUsedError;
  List<String>? get content => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<ContentInfoItemResponse>? get info => throw _privateConstructorUsedError;
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this ContentInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentInfoResponseCopyWith<ContentInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentInfoResponseCopyWith<$Res> {
  factory $ContentInfoResponseCopyWith(
          ContentInfoResponse value, $Res Function(ContentInfoResponse) then) =
      _$ContentInfoResponseCopyWithImpl<$Res, ContentInfoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date_time') String? dateTime,
      List<String>? content,
      List<String>? images,
      List<ContentInfoItemResponse>? info,
      String? r,
      String? e,
      String? errorMessage});
}

/// @nodoc
class _$ContentInfoResponseCopyWithImpl<$Res, $Val extends ContentInfoResponse>
    implements $ContentInfoResponseCopyWith<$Res> {
  _$ContentInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? content = freezed,
    Object? images = freezed,
    Object? info = freezed,
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<ContentInfoItemResponse>?,
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentInfoResponseImplCopyWith<$Res>
    implements $ContentInfoResponseCopyWith<$Res> {
  factory _$$ContentInfoResponseImplCopyWith(_$ContentInfoResponseImpl value,
          $Res Function(_$ContentInfoResponseImpl) then) =
      __$$ContentInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date_time') String? dateTime,
      List<String>? content,
      List<String>? images,
      List<ContentInfoItemResponse>? info,
      String? r,
      String? e,
      String? errorMessage});
}

/// @nodoc
class __$$ContentInfoResponseImplCopyWithImpl<$Res>
    extends _$ContentInfoResponseCopyWithImpl<$Res, _$ContentInfoResponseImpl>
    implements _$$ContentInfoResponseImplCopyWith<$Res> {
  __$$ContentInfoResponseImplCopyWithImpl(_$ContentInfoResponseImpl _value,
      $Res Function(_$ContentInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? content = freezed,
    Object? images = freezed,
    Object? info = freezed,
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ContentInfoResponseImpl(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      info: freezed == info
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<ContentInfoItemResponse>?,
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentInfoResponseImpl extends _ContentInfoResponse {
  _$ContentInfoResponseImpl(
      {@JsonKey(name: 'date_time') this.dateTime,
      final List<String>? content,
      final List<String>? images,
      final List<ContentInfoItemResponse>? info,
      this.r,
      this.e,
      this.errorMessage})
      : _content = content,
        _images = images,
        _info = info,
        super._();

  factory _$ContentInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentInfoResponseImplFromJson(json);

  @override
  @JsonKey(name: 'date_time')
  final String? dateTime;
  final List<String>? _content;
  @override
  List<String>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContentInfoItemResponse>? _info;
  @override
  List<ContentInfoItemResponse>? get info {
    final value = _info;
    if (value == null) return null;
    if (_info is EqualUnmodifiableListView) return _info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ContentInfoResponse(dateTime: $dateTime, content: $content, images: $images, info: $info, r: $r, e: $e, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentInfoResponseImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ContentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentInfoResponseImplCopyWith<_$ContentInfoResponseImpl> get copyWith =>
      __$$ContentInfoResponseImplCopyWithImpl<_$ContentInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _ContentInfoResponse extends ContentInfoResponse {
  factory _ContentInfoResponse(
      {@JsonKey(name: 'date_time') final String? dateTime,
      final List<String>? content,
      final List<String>? images,
      final List<ContentInfoItemResponse>? info,
      final String? r,
      final String? e,
      final String? errorMessage}) = _$ContentInfoResponseImpl;
  _ContentInfoResponse._() : super._();

  factory _ContentInfoResponse.fromJson(Map<String, dynamic> json) =
      _$ContentInfoResponseImpl.fromJson;

  @override
  @JsonKey(name: 'date_time')
  String? get dateTime;
  @override
  List<String>? get content;
  @override
  List<String>? get images;
  @override
  List<ContentInfoItemResponse>? get info;
  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;

  /// Create a copy of ContentInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentInfoResponseImplCopyWith<_$ContentInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
