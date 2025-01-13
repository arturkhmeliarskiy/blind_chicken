// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_delivery_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderDeliveryDataModel {
  String get price => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDeliveryDataModelCopyWith<OrderDeliveryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDeliveryDataModelCopyWith<$Res> {
  factory $OrderDeliveryDataModelCopyWith(OrderDeliveryDataModel value,
          $Res Function(OrderDeliveryDataModel) then) =
      _$OrderDeliveryDataModelCopyWithImpl<$Res, OrderDeliveryDataModel>;
  @useResult
  $Res call({String price, String method, String address});
}

/// @nodoc
class _$OrderDeliveryDataModelCopyWithImpl<$Res,
        $Val extends OrderDeliveryDataModel>
    implements $OrderDeliveryDataModelCopyWith<$Res> {
  _$OrderDeliveryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? method = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDeliveryDataModelImplCopyWith<$Res>
    implements $OrderDeliveryDataModelCopyWith<$Res> {
  factory _$$OrderDeliveryDataModelImplCopyWith(
          _$OrderDeliveryDataModelImpl value,
          $Res Function(_$OrderDeliveryDataModelImpl) then) =
      __$$OrderDeliveryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String price, String method, String address});
}

/// @nodoc
class __$$OrderDeliveryDataModelImplCopyWithImpl<$Res>
    extends _$OrderDeliveryDataModelCopyWithImpl<$Res,
        _$OrderDeliveryDataModelImpl>
    implements _$$OrderDeliveryDataModelImplCopyWith<$Res> {
  __$$OrderDeliveryDataModelImplCopyWithImpl(
      _$OrderDeliveryDataModelImpl _value,
      $Res Function(_$OrderDeliveryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? method = null,
    Object? address = null,
  }) {
    return _then(_$OrderDeliveryDataModelImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderDeliveryDataModelImpl extends _OrderDeliveryDataModel {
  _$OrderDeliveryDataModelImpl(
      {required this.price, required this.method, required this.address})
      : super._();

  @override
  final String price;
  @override
  final String method;
  @override
  final String address;

  @override
  String toString() {
    return 'OrderDeliveryDataModel(price: $price, method: $method, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDeliveryDataModelImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price, method, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDeliveryDataModelImplCopyWith<_$OrderDeliveryDataModelImpl>
      get copyWith => __$$OrderDeliveryDataModelImplCopyWithImpl<
          _$OrderDeliveryDataModelImpl>(this, _$identity);
}

abstract class _OrderDeliveryDataModel extends OrderDeliveryDataModel {
  factory _OrderDeliveryDataModel(
      {required final String price,
      required final String method,
      required final String address}) = _$OrderDeliveryDataModelImpl;
  _OrderDeliveryDataModel._() : super._();

  @override
  String get price;
  @override
  String get method;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$OrderDeliveryDataModelImplCopyWith<_$OrderDeliveryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
