// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_count_product_url_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogCountProductUrlResponse _$CatalogCountProductUrlResponseFromJson(
    Map<String, dynamic> json) {
  return _CatalogCountProductUrlResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogCountProductUrlResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this CatalogCountProductUrlResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogCountProductUrlResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogCountProductUrlResponseCopyWith<CatalogCountProductUrlResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogCountProductUrlResponseCopyWith<$Res> {
  factory $CatalogCountProductUrlResponseCopyWith(
          CatalogCountProductUrlResponse value,
          $Res Function(CatalogCountProductUrlResponse) then) =
      _$CatalogCountProductUrlResponseCopyWithImpl<$Res,
          CatalogCountProductUrlResponse>;
  @useResult
  $Res call({String? r, String? e, int? count, String? errorMessage});
}

/// @nodoc
class _$CatalogCountProductUrlResponseCopyWithImpl<$Res,
        $Val extends CatalogCountProductUrlResponse>
    implements $CatalogCountProductUrlResponseCopyWith<$Res> {
  _$CatalogCountProductUrlResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogCountProductUrlResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? count = freezed,
    Object? errorMessage = freezed,
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
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogCountProductUrlResponseImplCopyWith<$Res>
    implements $CatalogCountProductUrlResponseCopyWith<$Res> {
  factory _$$CatalogCountProductUrlResponseImplCopyWith(
          _$CatalogCountProductUrlResponseImpl value,
          $Res Function(_$CatalogCountProductUrlResponseImpl) then) =
      __$$CatalogCountProductUrlResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, int? count, String? errorMessage});
}

/// @nodoc
class __$$CatalogCountProductUrlResponseImplCopyWithImpl<$Res>
    extends _$CatalogCountProductUrlResponseCopyWithImpl<$Res,
        _$CatalogCountProductUrlResponseImpl>
    implements _$$CatalogCountProductUrlResponseImplCopyWith<$Res> {
  __$$CatalogCountProductUrlResponseImplCopyWithImpl(
      _$CatalogCountProductUrlResponseImpl _value,
      $Res Function(_$CatalogCountProductUrlResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatalogCountProductUrlResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? count = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CatalogCountProductUrlResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogCountProductUrlResponseImpl
    extends _CatalogCountProductUrlResponse {
  _$CatalogCountProductUrlResponseImpl(
      {this.r, this.e, this.count, this.errorMessage})
      : super._();

  factory _$CatalogCountProductUrlResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CatalogCountProductUrlResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final int? count;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CatalogCountProductUrlResponse(r: $r, e: $e, count: $count, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogCountProductUrlResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, count, errorMessage);

  /// Create a copy of CatalogCountProductUrlResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogCountProductUrlResponseImplCopyWith<
          _$CatalogCountProductUrlResponseImpl>
      get copyWith => __$$CatalogCountProductUrlResponseImplCopyWithImpl<
          _$CatalogCountProductUrlResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogCountProductUrlResponseImplToJson(
      this,
    );
  }
}

abstract class _CatalogCountProductUrlResponse
    extends CatalogCountProductUrlResponse {
  factory _CatalogCountProductUrlResponse(
      {final String? r,
      final String? e,
      final int? count,
      final String? errorMessage}) = _$CatalogCountProductUrlResponseImpl;
  _CatalogCountProductUrlResponse._() : super._();

  factory _CatalogCountProductUrlResponse.fromJson(Map<String, dynamic> json) =
      _$CatalogCountProductUrlResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  int? get count;
  @override
  String? get errorMessage;

  /// Create a copy of CatalogCountProductUrlResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogCountProductUrlResponseImplCopyWith<
          _$CatalogCountProductUrlResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
