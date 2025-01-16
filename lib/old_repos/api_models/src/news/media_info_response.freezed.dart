// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaInfoResponse _$MediaInfoResponseFromJson(Map<String, dynamic> json) {
  return _MediaInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$MediaInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<MediaInfoItemResponse>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_viewed')
  bool? get isViewed => throw _privateConstructorUsedError;

  /// Serializes this MediaInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaInfoResponseCopyWith<MediaInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaInfoResponseCopyWith<$Res> {
  factory $MediaInfoResponseCopyWith(
          MediaInfoResponse value, $Res Function(MediaInfoResponse) then) =
      _$MediaInfoResponseCopyWithImpl<$Res, MediaInfoResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      List<MediaInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') bool? isViewed});
}

/// @nodoc
class _$MediaInfoResponseCopyWithImpl<$Res, $Val extends MediaInfoResponse>
    implements $MediaInfoResponseCopyWith<$Res> {
  _$MediaInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? list = freezed,
    Object? isViewed = freezed,
  }) {
    return _then(_value.copyWith(
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
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MediaInfoItemResponse>?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaInfoResponseImplCopyWith<$Res>
    implements $MediaInfoResponseCopyWith<$Res> {
  factory _$$MediaInfoResponseImplCopyWith(_$MediaInfoResponseImpl value,
          $Res Function(_$MediaInfoResponseImpl) then) =
      __$$MediaInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      List<MediaInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') bool? isViewed});
}

/// @nodoc
class __$$MediaInfoResponseImplCopyWithImpl<$Res>
    extends _$MediaInfoResponseCopyWithImpl<$Res, _$MediaInfoResponseImpl>
    implements _$$MediaInfoResponseImplCopyWith<$Res> {
  __$$MediaInfoResponseImplCopyWithImpl(_$MediaInfoResponseImpl _value,
      $Res Function(_$MediaInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? list = freezed,
    Object? isViewed = freezed,
  }) {
    return _then(_$MediaInfoResponseImpl(
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
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MediaInfoItemResponse>?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaInfoResponseImpl extends _MediaInfoResponse {
  _$MediaInfoResponseImpl(
      {this.r,
      this.e,
      this.errorMessage,
      final List<MediaInfoItemResponse>? list,
      @JsonKey(name: 'is_viewed') this.isViewed})
      : _list = list,
        super._();

  factory _$MediaInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  final List<MediaInfoItemResponse>? _list;
  @override
  List<MediaInfoItemResponse>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_viewed')
  final bool? isViewed;

  @override
  String toString() {
    return 'MediaInfoResponse(r: $r, e: $e, errorMessage: $errorMessage, list: $list, isViewed: $isViewed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage,
      const DeepCollectionEquality().hash(_list), isViewed);

  /// Create a copy of MediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaInfoResponseImplCopyWith<_$MediaInfoResponseImpl> get copyWith =>
      __$$MediaInfoResponseImplCopyWithImpl<_$MediaInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _MediaInfoResponse extends MediaInfoResponse {
  factory _MediaInfoResponse(
          {final String? r,
          final String? e,
          final String? errorMessage,
          final List<MediaInfoItemResponse>? list,
          @JsonKey(name: 'is_viewed') final bool? isViewed}) =
      _$MediaInfoResponseImpl;
  _MediaInfoResponse._() : super._();

  factory _MediaInfoResponse.fromJson(Map<String, dynamic> json) =
      _$MediaInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  List<MediaInfoItemResponse>? get list;
  @override
  @JsonKey(name: 'is_viewed')
  bool? get isViewed;

  /// Create a copy of MediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaInfoResponseImplCopyWith<_$MediaInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
