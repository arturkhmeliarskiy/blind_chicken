// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_banner_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopBannerResponse _$TopBannerResponseFromJson(Map<String, dynamic> json) {
  return _TopBannerResponse.fromJson(json);
}

/// @nodoc
mixin _$TopBannerResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  TopBannerDataResponse? get data => throw _privateConstructorUsedError;

  /// Serializes this TopBannerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopBannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopBannerResponseCopyWith<TopBannerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopBannerResponseCopyWith<$Res> {
  factory $TopBannerResponseCopyWith(
          TopBannerResponse value, $Res Function(TopBannerResponse) then) =
      _$TopBannerResponseCopyWithImpl<$Res, TopBannerResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      TopBannerDataResponse? data});

  $TopBannerDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$TopBannerResponseCopyWithImpl<$Res, $Val extends TopBannerResponse>
    implements $TopBannerResponseCopyWith<$Res> {
  _$TopBannerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopBannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
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
              as TopBannerDataResponse?,
    ) as $Val);
  }

  /// Create a copy of TopBannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TopBannerDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TopBannerDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopBannerResponseImplCopyWith<$Res>
    implements $TopBannerResponseCopyWith<$Res> {
  factory _$$TopBannerResponseImplCopyWith(_$TopBannerResponseImpl value,
          $Res Function(_$TopBannerResponseImpl) then) =
      __$$TopBannerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      TopBannerDataResponse? data});

  @override
  $TopBannerDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TopBannerResponseImplCopyWithImpl<$Res>
    extends _$TopBannerResponseCopyWithImpl<$Res, _$TopBannerResponseImpl>
    implements _$$TopBannerResponseImplCopyWith<$Res> {
  __$$TopBannerResponseImplCopyWithImpl(_$TopBannerResponseImpl _value,
      $Res Function(_$TopBannerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopBannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopBannerResponseImpl(
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
              as TopBannerDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopBannerResponseImpl extends _TopBannerResponse {
  _$TopBannerResponseImpl({this.r, this.e, this.errorMessage, this.data})
      : super._();

  factory _$TopBannerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopBannerResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  @override
  final TopBannerDataResponse? data;

  @override
  String toString() {
    return 'TopBannerResponse(r: $r, e: $e, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopBannerResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage, data);

  /// Create a copy of TopBannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopBannerResponseImplCopyWith<_$TopBannerResponseImpl> get copyWith =>
      __$$TopBannerResponseImplCopyWithImpl<_$TopBannerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopBannerResponseImplToJson(
      this,
    );
  }
}

abstract class _TopBannerResponse extends TopBannerResponse {
  factory _TopBannerResponse(
      {final String? r,
      final String? e,
      final String? errorMessage,
      final TopBannerDataResponse? data}) = _$TopBannerResponseImpl;
  _TopBannerResponse._() : super._();

  factory _TopBannerResponse.fromJson(Map<String, dynamic> json) =
      _$TopBannerResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  TopBannerDataResponse? get data;

  /// Create a copy of TopBannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopBannerResponseImplCopyWith<_$TopBannerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
