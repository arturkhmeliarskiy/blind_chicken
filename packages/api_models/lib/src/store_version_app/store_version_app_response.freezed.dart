// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_version_app_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreVersionAppResponse _$StoreVersionAppResponseFromJson(
    Map<String, dynamic> json) {
  return _StoreVersionAppResponse.fromJson(json);
}

/// @nodoc
mixin _$StoreVersionAppResponse {
  String? get r => throw _privateConstructorUsedError;
  String? get e => throw _privateConstructorUsedError;
  StoreVersionAppDataResponse? get version =>
      throw _privateConstructorUsedError;

  /// Serializes this StoreVersionAppResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreVersionAppResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreVersionAppResponseCopyWith<StoreVersionAppResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreVersionAppResponseCopyWith<$Res> {
  factory $StoreVersionAppResponseCopyWith(StoreVersionAppResponse value,
          $Res Function(StoreVersionAppResponse) then) =
      _$StoreVersionAppResponseCopyWithImpl<$Res, StoreVersionAppResponse>;
  @useResult
  $Res call({String? r, String? e, StoreVersionAppDataResponse? version});

  $StoreVersionAppDataResponseCopyWith<$Res>? get version;
}

/// @nodoc
class _$StoreVersionAppResponseCopyWithImpl<$Res,
        $Val extends StoreVersionAppResponse>
    implements $StoreVersionAppResponseCopyWith<$Res> {
  _$StoreVersionAppResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreVersionAppResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? version = freezed,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as StoreVersionAppDataResponse?,
    ) as $Val);
  }

  /// Create a copy of StoreVersionAppResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreVersionAppDataResponseCopyWith<$Res>? get version {
    if (_value.version == null) {
      return null;
    }

    return $StoreVersionAppDataResponseCopyWith<$Res>(_value.version!, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreVersionAppResponseImplCopyWith<$Res>
    implements $StoreVersionAppResponseCopyWith<$Res> {
  factory _$$StoreVersionAppResponseImplCopyWith(
          _$StoreVersionAppResponseImpl value,
          $Res Function(_$StoreVersionAppResponseImpl) then) =
      __$$StoreVersionAppResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? r, String? e, StoreVersionAppDataResponse? version});

  @override
  $StoreVersionAppDataResponseCopyWith<$Res>? get version;
}

/// @nodoc
class __$$StoreVersionAppResponseImplCopyWithImpl<$Res>
    extends _$StoreVersionAppResponseCopyWithImpl<$Res,
        _$StoreVersionAppResponseImpl>
    implements _$$StoreVersionAppResponseImplCopyWith<$Res> {
  __$$StoreVersionAppResponseImplCopyWithImpl(
      _$StoreVersionAppResponseImpl _value,
      $Res Function(_$StoreVersionAppResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreVersionAppResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? e = freezed,
    Object? version = freezed,
  }) {
    return _then(_$StoreVersionAppResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as StoreVersionAppDataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreVersionAppResponseImpl extends _StoreVersionAppResponse {
  _$StoreVersionAppResponseImpl({this.r, this.e, this.version}) : super._();

  factory _$StoreVersionAppResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreVersionAppResponseImplFromJson(json);

  @override
  final String? r;
  @override
  final String? e;
  @override
  final StoreVersionAppDataResponse? version;

  @override
  String toString() {
    return 'StoreVersionAppResponse(r: $r, e: $e, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreVersionAppResponseImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, r, e, version);

  /// Create a copy of StoreVersionAppResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreVersionAppResponseImplCopyWith<_$StoreVersionAppResponseImpl>
      get copyWith => __$$StoreVersionAppResponseImplCopyWithImpl<
          _$StoreVersionAppResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreVersionAppResponseImplToJson(
      this,
    );
  }
}

abstract class _StoreVersionAppResponse extends StoreVersionAppResponse {
  factory _StoreVersionAppResponse(
          {final String? r,
          final String? e,
          final StoreVersionAppDataResponse? version}) =
      _$StoreVersionAppResponseImpl;
  _StoreVersionAppResponse._() : super._();

  factory _StoreVersionAppResponse.fromJson(Map<String, dynamic> json) =
      _$StoreVersionAppResponseImpl.fromJson;

  @override
  String? get r;
  @override
  String? get e;
  @override
  StoreVersionAppDataResponse? get version;

  /// Create a copy of StoreVersionAppResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreVersionAppResponseImplCopyWith<_$StoreVersionAppResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
