// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoutiqueInfoResponse _$BoutiqueInfoResponseFromJson(Map<String, dynamic> json) {
  return _BoutiqueInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$BoutiqueInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  BoutiqueInfoDataResponse? get data => throw _privateConstructorUsedError;

  /// Serializes this BoutiqueInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BoutiqueInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BoutiqueInfoResponseCopyWith<BoutiqueInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueInfoResponseCopyWith<$Res> {
  factory $BoutiqueInfoResponseCopyWith(BoutiqueInfoResponse value,
          $Res Function(BoutiqueInfoResponse) then) =
      _$BoutiqueInfoResponseCopyWithImpl<$Res, BoutiqueInfoResponse>;
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      BoutiqueInfoDataResponse? data});

  $BoutiqueInfoDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$BoutiqueInfoResponseCopyWithImpl<$Res,
        $Val extends BoutiqueInfoResponse>
    implements $BoutiqueInfoResponseCopyWith<$Res> {
  _$BoutiqueInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BoutiqueInfoResponse
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
              as BoutiqueInfoDataResponse?,
    ) as $Val);
  }

  /// Create a copy of BoutiqueInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BoutiqueInfoDataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BoutiqueInfoDataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BoutiqueInfoResponseImplCopyWith<$Res>
    implements $BoutiqueInfoResponseCopyWith<$Res> {
  factory _$$BoutiqueInfoResponseImplCopyWith(_$BoutiqueInfoResponseImpl value,
          $Res Function(_$BoutiqueInfoResponseImpl) then) =
      __$$BoutiqueInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      String? e,
      String? errorMessage,
      BoutiqueInfoDataResponse? data});

  @override
  $BoutiqueInfoDataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BoutiqueInfoResponseImplCopyWithImpl<$Res>
    extends _$BoutiqueInfoResponseCopyWithImpl<$Res, _$BoutiqueInfoResponseImpl>
    implements _$$BoutiqueInfoResponseImplCopyWith<$Res> {
  __$$BoutiqueInfoResponseImplCopyWithImpl(_$BoutiqueInfoResponseImpl _value,
      $Res Function(_$BoutiqueInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BoutiqueInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? errorMessage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BoutiqueInfoResponseImpl(
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
              as BoutiqueInfoDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoutiqueInfoResponseImpl extends _BoutiqueInfoResponse {
  _$BoutiqueInfoResponseImpl({this.r, this.e, this.errorMessage, this.data})
      : super._();

  factory _$BoutiqueInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoutiqueInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final String? errorMessage;
  @override
  final BoutiqueInfoDataResponse? data;

  @override
  String toString() {
    return 'BoutiqueInfoResponse(r: $r, e: $e, errorMessage: $errorMessage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueInfoResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage, data);

  /// Create a copy of BoutiqueInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueInfoResponseImplCopyWith<_$BoutiqueInfoResponseImpl>
      get copyWith =>
          __$$BoutiqueInfoResponseImplCopyWithImpl<_$BoutiqueInfoResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoutiqueInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _BoutiqueInfoResponse extends BoutiqueInfoResponse {
  factory _BoutiqueInfoResponse(
      {final String? r,
      final String? e,
      final String? errorMessage,
      final BoutiqueInfoDataResponse? data}) = _$BoutiqueInfoResponseImpl;
  _BoutiqueInfoResponse._() : super._();

  factory _BoutiqueInfoResponse.fromJson(Map<String, dynamic> json) =
      _$BoutiqueInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  String? get errorMessage;
  @override
  BoutiqueInfoDataResponse? get data;

  /// Create a copy of BoutiqueInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoutiqueInfoResponseImplCopyWith<_$BoutiqueInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
