// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_coordinates_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoutiqueCoordinatesDataModel {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoutiqueCoordinatesDataModelCopyWith<BoutiqueCoordinatesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueCoordinatesDataModelCopyWith<$Res> {
  factory $BoutiqueCoordinatesDataModelCopyWith(
          BoutiqueCoordinatesDataModel value,
          $Res Function(BoutiqueCoordinatesDataModel) then) =
      _$BoutiqueCoordinatesDataModelCopyWithImpl<$Res,
          BoutiqueCoordinatesDataModel>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$BoutiqueCoordinatesDataModelCopyWithImpl<$Res,
        $Val extends BoutiqueCoordinatesDataModel>
    implements $BoutiqueCoordinatesDataModelCopyWith<$Res> {
  _$BoutiqueCoordinatesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueCoordinatesDataModelImplCopyWith<$Res>
    implements $BoutiqueCoordinatesDataModelCopyWith<$Res> {
  factory _$$BoutiqueCoordinatesDataModelImplCopyWith(
          _$BoutiqueCoordinatesDataModelImpl value,
          $Res Function(_$BoutiqueCoordinatesDataModelImpl) then) =
      __$$BoutiqueCoordinatesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$BoutiqueCoordinatesDataModelImplCopyWithImpl<$Res>
    extends _$BoutiqueCoordinatesDataModelCopyWithImpl<$Res,
        _$BoutiqueCoordinatesDataModelImpl>
    implements _$$BoutiqueCoordinatesDataModelImplCopyWith<$Res> {
  __$$BoutiqueCoordinatesDataModelImplCopyWithImpl(
      _$BoutiqueCoordinatesDataModelImpl _value,
      $Res Function(_$BoutiqueCoordinatesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$BoutiqueCoordinatesDataModelImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BoutiqueCoordinatesDataModelImpl extends _BoutiqueCoordinatesDataModel {
  _$BoutiqueCoordinatesDataModelImpl(
      {required this.latitude, required this.longitude})
      : super._();

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'BoutiqueCoordinatesDataModel(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueCoordinatesDataModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueCoordinatesDataModelImplCopyWith<
          _$BoutiqueCoordinatesDataModelImpl>
      get copyWith => __$$BoutiqueCoordinatesDataModelImplCopyWithImpl<
          _$BoutiqueCoordinatesDataModelImpl>(this, _$identity);
}

abstract class _BoutiqueCoordinatesDataModel
    extends BoutiqueCoordinatesDataModel {
  factory _BoutiqueCoordinatesDataModel(
      {required final double latitude,
      required final double longitude}) = _$BoutiqueCoordinatesDataModelImpl;
  _BoutiqueCoordinatesDataModel._() : super._();

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$BoutiqueCoordinatesDataModelImplCopyWith<
          _$BoutiqueCoordinatesDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
