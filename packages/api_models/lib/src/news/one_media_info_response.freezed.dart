// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_media_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneMediaInfoResponse _$OneMediaInfoResponseFromJson(Map<String, dynamic> json) {
  return _OneMediaInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$OneMediaInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  MediaInfoItemResponse? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_viewed')
  bool? get isViewed => throw _privateConstructorUsedError;

  /// Serializes this OneMediaInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OneMediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OneMediaInfoResponseCopyWith<OneMediaInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneMediaInfoResponseCopyWith<$Res> {
  factory $OneMediaInfoResponseCopyWith(OneMediaInfoResponse value,
          $Res Function(OneMediaInfoResponse) then) =
      _$OneMediaInfoResponseCopyWithImpl<$Res, OneMediaInfoResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      MediaInfoItemResponse? data,
      @JsonKey(name: 'is_viewed') bool? isViewed});

  $MediaInfoItemResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$OneMediaInfoResponseCopyWithImpl<$Res,
        $Val extends OneMediaInfoResponse>
    implements $OneMediaInfoResponseCopyWith<$Res> {
  _$OneMediaInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OneMediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MediaInfoItemResponse?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of OneMediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaInfoItemResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MediaInfoItemResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OneMediaInfoResponseImplCopyWith<$Res>
    implements $OneMediaInfoResponseCopyWith<$Res> {
  factory _$$OneMediaInfoResponseImplCopyWith(_$OneMediaInfoResponseImpl value,
          $Res Function(_$OneMediaInfoResponseImpl) then) =
      __$$OneMediaInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      MediaInfoItemResponse? data,
      @JsonKey(name: 'is_viewed') bool? isViewed});

  @override
  $MediaInfoItemResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$OneMediaInfoResponseImplCopyWithImpl<$Res>
    extends _$OneMediaInfoResponseCopyWithImpl<$Res, _$OneMediaInfoResponseImpl>
    implements _$$OneMediaInfoResponseImplCopyWith<$Res> {
  __$$OneMediaInfoResponseImplCopyWithImpl(_$OneMediaInfoResponseImpl _value,
      $Res Function(_$OneMediaInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OneMediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
    Object? isViewed = freezed,
  }) {
    return _then(_$OneMediaInfoResponseImpl(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MediaInfoItemResponse?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneMediaInfoResponseImpl extends _OneMediaInfoResponse {
  _$OneMediaInfoResponseImpl(
      {this.r,
      this.e,
      this.errorMessage,
      this.data,
      @JsonKey(name: 'is_viewed') this.isViewed})
      : super._();

  factory _$OneMediaInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneMediaInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  @override
  final MediaInfoItemResponse? data;
  @override
  @JsonKey(name: 'is_viewed')
  final bool? isViewed;

  @override
  String toString() {
    return 'OneMediaInfoResponse(r: $r, e: $e, errorMessage: $errorMessage, data: $data, isViewed: $isViewed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneMediaInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, r, e, errorMessage, data, isViewed);

  /// Create a copy of OneMediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OneMediaInfoResponseImplCopyWith<_$OneMediaInfoResponseImpl>
      get copyWith =>
          __$$OneMediaInfoResponseImplCopyWithImpl<_$OneMediaInfoResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneMediaInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _OneMediaInfoResponse extends OneMediaInfoResponse {
  factory _OneMediaInfoResponse(
          {final String? r,
          final String? e,
          final String? errorMessage,
          final MediaInfoItemResponse? data,
          @JsonKey(name: 'is_viewed') final bool? isViewed}) =
      _$OneMediaInfoResponseImpl;
  _OneMediaInfoResponse._() : super._();

  factory _OneMediaInfoResponse.fromJson(Map<String, dynamic> json) =
      _$OneMediaInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  MediaInfoItemResponse? get data;
  @override
  @JsonKey(name: 'is_viewed')
  bool? get isViewed;

  /// Create a copy of OneMediaInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OneMediaInfoResponseImplCopyWith<_$OneMediaInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
