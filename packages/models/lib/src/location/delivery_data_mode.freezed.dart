// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_data_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get deliveryId => throw _privateConstructorUsedError;
  DeliveryPickDataModel get pick => throw _privateConstructorUsedError;
  List<DeliveryAddressDataModel> get address =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryDataModelCopyWith<DeliveryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDataModelCopyWith<$Res> {
  factory $DeliveryDataModelCopyWith(
          DeliveryDataModel value, $Res Function(DeliveryDataModel) then) =
      _$DeliveryDataModelCopyWithImpl<$Res, DeliveryDataModel>;
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      String deliveryId,
      DeliveryPickDataModel pick,
      List<DeliveryAddressDataModel> address});

  $DeliveryPickDataModelCopyWith<$Res> get pick;
}

/// @nodoc
class _$DeliveryDataModelCopyWithImpl<$Res, $Val extends DeliveryDataModel>
    implements $DeliveryDataModelCopyWith<$Res> {
  _$DeliveryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? deliveryId = null,
    Object? pick = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      pick: null == pick
          ? _value.pick
          : pick // ignore: cast_nullable_to_non_nullable
              as DeliveryPickDataModel,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<DeliveryAddressDataModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryPickDataModelCopyWith<$Res> get pick {
    return $DeliveryPickDataModelCopyWith<$Res>(_value.pick, (value) {
      return _then(_value.copyWith(pick: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryDataModelImplCopyWith<$Res>
    implements $DeliveryDataModelCopyWith<$Res> {
  factory _$$DeliveryDataModelImplCopyWith(_$DeliveryDataModelImpl value,
          $Res Function(_$DeliveryDataModelImpl) then) =
      __$$DeliveryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      String deliveryId,
      DeliveryPickDataModel pick,
      List<DeliveryAddressDataModel> address});

  @override
  $DeliveryPickDataModelCopyWith<$Res> get pick;
}

/// @nodoc
class __$$DeliveryDataModelImplCopyWithImpl<$Res>
    extends _$DeliveryDataModelCopyWithImpl<$Res, _$DeliveryDataModelImpl>
    implements _$$DeliveryDataModelImplCopyWith<$Res> {
  __$$DeliveryDataModelImplCopyWithImpl(_$DeliveryDataModelImpl _value,
      $Res Function(_$DeliveryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? deliveryId = null,
    Object? pick = null,
    Object? address = null,
  }) {
    return _then(_$DeliveryDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      pick: null == pick
          ? _value.pick
          : pick // ignore: cast_nullable_to_non_nullable
              as DeliveryPickDataModel,
      address: null == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<DeliveryAddressDataModel>,
    ));
  }
}

/// @nodoc

class _$DeliveryDataModelImpl extends _DeliveryDataModel {
  _$DeliveryDataModelImpl(
      {required this.r,
      required this.e,
      required this.errorMessage,
      required this.deliveryId,
      required this.pick,
      required final List<DeliveryAddressDataModel> address})
      : _address = address,
        super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;
  @override
  final String deliveryId;
  @override
  final DeliveryPickDataModel pick;
  final List<DeliveryAddressDataModel> _address;
  @override
  List<DeliveryAddressDataModel> get address {
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_address);
  }

  @override
  String toString() {
    return 'DeliveryDataModel(r: $r, e: $e, errorMessage: $errorMessage, deliveryId: $deliveryId, pick: $pick, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.pick, pick) || other.pick == pick) &&
            const DeepCollectionEquality().equals(other._address, _address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage, deliveryId,
      pick, const DeepCollectionEquality().hash(_address));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDataModelImplCopyWith<_$DeliveryDataModelImpl> get copyWith =>
      __$$DeliveryDataModelImplCopyWithImpl<_$DeliveryDataModelImpl>(
          this, _$identity);
}

abstract class _DeliveryDataModel extends DeliveryDataModel {
  factory _DeliveryDataModel(
          {required final String r,
          required final String e,
          required final String errorMessage,
          required final String deliveryId,
          required final DeliveryPickDataModel pick,
          required final List<DeliveryAddressDataModel> address}) =
      _$DeliveryDataModelImpl;
  _DeliveryDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;
  @override
  String get deliveryId;
  @override
  DeliveryPickDataModel get pick;
  @override
  List<DeliveryAddressDataModel> get address;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryDataModelImplCopyWith<_$DeliveryDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
