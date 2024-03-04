// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_coordinates_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoutiqueCoordinatesResponse _$BoutiqueCoordinatesResponseFromJson(
    Map<String, dynamic> json) {
  return _BoutiqueCoordinatesResponse.fromJson(json);
}

/// @nodoc
mixin _$BoutiqueCoordinatesResponse {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoutiqueCoordinatesResponseCopyWith<BoutiqueCoordinatesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueCoordinatesResponseCopyWith<$Res> {
  factory $BoutiqueCoordinatesResponseCopyWith(
          BoutiqueCoordinatesResponse value,
          $Res Function(BoutiqueCoordinatesResponse) then) =
      _$BoutiqueCoordinatesResponseCopyWithImpl<$Res,
          BoutiqueCoordinatesResponse>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$BoutiqueCoordinatesResponseCopyWithImpl<$Res,
        $Val extends BoutiqueCoordinatesResponse>
    implements $BoutiqueCoordinatesResponseCopyWith<$Res> {
  _$BoutiqueCoordinatesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueCoordinatesResponseImplCopyWith<$Res>
    implements $BoutiqueCoordinatesResponseCopyWith<$Res> {
  factory _$$BoutiqueCoordinatesResponseImplCopyWith(
          _$BoutiqueCoordinatesResponseImpl value,
          $Res Function(_$BoutiqueCoordinatesResponseImpl) then) =
      __$$BoutiqueCoordinatesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$BoutiqueCoordinatesResponseImplCopyWithImpl<$Res>
    extends _$BoutiqueCoordinatesResponseCopyWithImpl<$Res,
        _$BoutiqueCoordinatesResponseImpl>
    implements _$$BoutiqueCoordinatesResponseImplCopyWith<$Res> {
  __$$BoutiqueCoordinatesResponseImplCopyWithImpl(
      _$BoutiqueCoordinatesResponseImpl _value,
      $Res Function(_$BoutiqueCoordinatesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$BoutiqueCoordinatesResponseImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoutiqueCoordinatesResponseImpl extends _BoutiqueCoordinatesResponse {
  _$BoutiqueCoordinatesResponseImpl({this.latitude, this.longitude})
      : super._();

  factory _$BoutiqueCoordinatesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BoutiqueCoordinatesResponseImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'BoutiqueCoordinatesResponse(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueCoordinatesResponseImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueCoordinatesResponseImplCopyWith<_$BoutiqueCoordinatesResponseImpl>
      get copyWith => __$$BoutiqueCoordinatesResponseImplCopyWithImpl<
          _$BoutiqueCoordinatesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoutiqueCoordinatesResponseImplToJson(
      this,
    );
  }
}

abstract class _BoutiqueCoordinatesResponse
    extends BoutiqueCoordinatesResponse {
  factory _BoutiqueCoordinatesResponse(
      {final double? latitude,
      final double? longitude}) = _$BoutiqueCoordinatesResponseImpl;
  _BoutiqueCoordinatesResponse._() : super._();

  factory _BoutiqueCoordinatesResponse.fromJson(Map<String, dynamic> json) =
      _$BoutiqueCoordinatesResponseImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$BoutiqueCoordinatesResponseImplCopyWith<_$BoutiqueCoordinatesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
