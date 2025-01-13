// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_news_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneNewsInfoResponse _$OneNewsInfoResponseFromJson(Map<String, dynamic> json) {
  return _OneNewsInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$OneNewsInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  NewsInfoItemResponse? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_viewed')
  bool? get isViewed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneNewsInfoResponseCopyWith<OneNewsInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneNewsInfoResponseCopyWith<$Res> {
  factory $OneNewsInfoResponseCopyWith(
          OneNewsInfoResponse value, $Res Function(OneNewsInfoResponse) then) =
      _$OneNewsInfoResponseCopyWithImpl<$Res, OneNewsInfoResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      NewsInfoItemResponse? data,
      @JsonKey(name: 'is_viewed') bool? isViewed});

  $NewsInfoItemResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$OneNewsInfoResponseCopyWithImpl<$Res, $Val extends OneNewsInfoResponse>
    implements $OneNewsInfoResponseCopyWith<$Res> {
  _$OneNewsInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as NewsInfoItemResponse?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsInfoItemResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NewsInfoItemResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OneNewsInfoResponseImplCopyWith<$Res>
    implements $OneNewsInfoResponseCopyWith<$Res> {
  factory _$$OneNewsInfoResponseImplCopyWith(_$OneNewsInfoResponseImpl value,
          $Res Function(_$OneNewsInfoResponseImpl) then) =
      __$$OneNewsInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      NewsInfoItemResponse? data,
      @JsonKey(name: 'is_viewed') bool? isViewed});

  @override
  $NewsInfoItemResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$OneNewsInfoResponseImplCopyWithImpl<$Res>
    extends _$OneNewsInfoResponseCopyWithImpl<$Res, _$OneNewsInfoResponseImpl>
    implements _$$OneNewsInfoResponseImplCopyWith<$Res> {
  __$$OneNewsInfoResponseImplCopyWithImpl(_$OneNewsInfoResponseImpl _value,
      $Res Function(_$OneNewsInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
    Object? isViewed = freezed,
  }) {
    return _then(_$OneNewsInfoResponseImpl(
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
              as NewsInfoItemResponse?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneNewsInfoResponseImpl extends _OneNewsInfoResponse {
  _$OneNewsInfoResponseImpl(
      {this.r,
      this.e,
      this.errorMessage,
      this.data,
      @JsonKey(name: 'is_viewed') this.isViewed})
      : super._();

  factory _$OneNewsInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneNewsInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  @override
  final NewsInfoItemResponse? data;
  @override
  @JsonKey(name: 'is_viewed')
  final bool? isViewed;

  @override
  String toString() {
    return 'OneNewsInfoResponse(r: $r, e: $e, errorMessage: $errorMessage, data: $data, isViewed: $isViewed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneNewsInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, r, e, errorMessage, data, isViewed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneNewsInfoResponseImplCopyWith<_$OneNewsInfoResponseImpl> get copyWith =>
      __$$OneNewsInfoResponseImplCopyWithImpl<_$OneNewsInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneNewsInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _OneNewsInfoResponse extends OneNewsInfoResponse {
  factory _OneNewsInfoResponse(
          {final String? r,
          final String? e,
          final String? errorMessage,
          final NewsInfoItemResponse? data,
          @JsonKey(name: 'is_viewed') final bool? isViewed}) =
      _$OneNewsInfoResponseImpl;
  _OneNewsInfoResponse._() : super._();

  factory _OneNewsInfoResponse.fromJson(Map<String, dynamic> json) =
      _$OneNewsInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  NewsInfoItemResponse? get data;
  @override
  @JsonKey(name: 'is_viewed')
  bool? get isViewed;
  @override
  @JsonKey(ignore: true)
  _$$OneNewsInfoResponseImplCopyWith<_$OneNewsInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
