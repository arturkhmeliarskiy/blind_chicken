// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_address_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryAddressDataModel {
  String get id => throw _privateConstructorUsedError;
  String get addr => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryAddressDataModelCopyWith<DeliveryAddressDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressDataModelCopyWith<$Res> {
  factory $DeliveryAddressDataModelCopyWith(DeliveryAddressDataModel value,
          $Res Function(DeliveryAddressDataModel) then) =
      _$DeliveryAddressDataModelCopyWithImpl<$Res, DeliveryAddressDataModel>;
  @useResult
  $Res call({String id, String addr, String zip, String cityId});
}

/// @nodoc
class _$DeliveryAddressDataModelCopyWithImpl<$Res,
        $Val extends DeliveryAddressDataModel>
    implements $DeliveryAddressDataModelCopyWith<$Res> {
  _$DeliveryAddressDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addr = null,
    Object? zip = null,
    Object? cityId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryAddressDataModelImplCopyWith<$Res>
    implements $DeliveryAddressDataModelCopyWith<$Res> {
  factory _$$DeliveryAddressDataModelImplCopyWith(
          _$DeliveryAddressDataModelImpl value,
          $Res Function(_$DeliveryAddressDataModelImpl) then) =
      __$$DeliveryAddressDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String addr, String zip, String cityId});
}

/// @nodoc
class __$$DeliveryAddressDataModelImplCopyWithImpl<$Res>
    extends _$DeliveryAddressDataModelCopyWithImpl<$Res,
        _$DeliveryAddressDataModelImpl>
    implements _$$DeliveryAddressDataModelImplCopyWith<$Res> {
  __$$DeliveryAddressDataModelImplCopyWithImpl(
      _$DeliveryAddressDataModelImpl _value,
      $Res Function(_$DeliveryAddressDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addr = null,
    Object? zip = null,
    Object? cityId = null,
  }) {
    return _then(_$DeliveryAddressDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliveryAddressDataModelImpl extends _DeliveryAddressDataModel {
  _$DeliveryAddressDataModelImpl(
      {required this.id,
      required this.addr,
      required this.zip,
      required this.cityId})
      : super._();

  @override
  final String id;
  @override
  final String addr;
  @override
  final String zip;
  @override
  final String cityId;

  @override
  String toString() {
    return 'DeliveryAddressDataModel(id: $id, addr: $addr, zip: $zip, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryAddressDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addr, addr) || other.addr == addr) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, addr, zip, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryAddressDataModelImplCopyWith<_$DeliveryAddressDataModelImpl>
      get copyWith => __$$DeliveryAddressDataModelImplCopyWithImpl<
          _$DeliveryAddressDataModelImpl>(this, _$identity);
}

abstract class _DeliveryAddressDataModel extends DeliveryAddressDataModel {
  factory _DeliveryAddressDataModel(
      {required final String id,
      required final String addr,
      required final String zip,
      required final String cityId}) = _$DeliveryAddressDataModelImpl;
  _DeliveryAddressDataModel._() : super._();

  @override
  String get id;
  @override
  String get addr;
  @override
  String get zip;
  @override
  String get cityId;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryAddressDataModelImplCopyWith<_$DeliveryAddressDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
