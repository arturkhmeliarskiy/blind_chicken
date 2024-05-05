// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get countOrders => throw _privateConstructorUsedError;
  List<OrderItemDataModel> get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersDataModelCopyWith<OrdersDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersDataModelCopyWith<$Res> {
  factory $OrdersDataModelCopyWith(
          OrdersDataModel value, $Res Function(OrdersDataModel) then) =
      _$OrdersDataModelCopyWithImpl<$Res, OrdersDataModel>;
  @useResult
  $Res call(
      {String r,
      String e,
      String countOrders,
      List<OrderItemDataModel> orders});
}

/// @nodoc
class _$OrdersDataModelCopyWithImpl<$Res, $Val extends OrdersDataModel>
    implements $OrdersDataModelCopyWith<$Res> {
  _$OrdersDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? countOrders = null,
    Object? orders = null,
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
      countOrders: null == countOrders
          ? _value.countOrders
          : countOrders // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersDataModelImplCopyWith<$Res>
    implements $OrdersDataModelCopyWith<$Res> {
  factory _$$OrdersDataModelImplCopyWith(_$OrdersDataModelImpl value,
          $Res Function(_$OrdersDataModelImpl) then) =
      __$$OrdersDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String e,
      String countOrders,
      List<OrderItemDataModel> orders});
}

/// @nodoc
class __$$OrdersDataModelImplCopyWithImpl<$Res>
    extends _$OrdersDataModelCopyWithImpl<$Res, _$OrdersDataModelImpl>
    implements _$$OrdersDataModelImplCopyWith<$Res> {
  __$$OrdersDataModelImplCopyWithImpl(
      _$OrdersDataModelImpl _value, $Res Function(_$OrdersDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? countOrders = null,
    Object? orders = null,
  }) {
    return _then(_$OrdersDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      countOrders: null == countOrders
          ? _value.countOrders
          : countOrders // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItemDataModel>,
    ));
  }
}

/// @nodoc

class _$OrdersDataModelImpl extends _OrdersDataModel {
  _$OrdersDataModelImpl(
      {required this.r,
      required this.e,
      required this.countOrders,
      required final List<OrderItemDataModel> orders})
      : _orders = orders,
        super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String countOrders;
  final List<OrderItemDataModel> _orders;
  @override
  List<OrderItemDataModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersDataModel(r: $r, e: $e, countOrders: $countOrders, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.countOrders, countOrders) ||
                other.countOrders == countOrders) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, countOrders,
      const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersDataModelImplCopyWith<_$OrdersDataModelImpl> get copyWith =>
      __$$OrdersDataModelImplCopyWithImpl<_$OrdersDataModelImpl>(
          this, _$identity);
}

abstract class _OrdersDataModel extends OrdersDataModel {
  factory _OrdersDataModel(
      {required final String r,
      required final String e,
      required final String countOrders,
      required final List<OrderItemDataModel> orders}) = _$OrdersDataModelImpl;
  _OrdersDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get countOrders;
  @override
  List<OrderItemDataModel> get orders;
  @override
  @JsonKey(ignore: true)
  _$$OrdersDataModelImplCopyWith<_$OrdersDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
