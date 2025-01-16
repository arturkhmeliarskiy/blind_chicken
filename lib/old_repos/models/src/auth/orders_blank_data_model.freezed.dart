// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_blank_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersBlankDataModel {
  String get r => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<OrderBlankDataModel> get orders => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of OrdersBlankDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersBlankDataModelCopyWith<OrdersBlankDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersBlankDataModelCopyWith<$Res> {
  factory $OrdersBlankDataModelCopyWith(OrdersBlankDataModel value,
          $Res Function(OrdersBlankDataModel) then) =
      _$OrdersBlankDataModelCopyWithImpl<$Res, OrdersBlankDataModel>;
  @useResult
  $Res call(
      {String r,
      String message,
      List<OrderBlankDataModel> orders,
      String errorMessage});
}

/// @nodoc
class _$OrdersBlankDataModelCopyWithImpl<$Res,
        $Val extends OrdersBlankDataModel>
    implements $OrdersBlankDataModelCopyWith<$Res> {
  _$OrdersBlankDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersBlankDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? message = null,
    Object? orders = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderBlankDataModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersBlankDataModelImplCopyWith<$Res>
    implements $OrdersBlankDataModelCopyWith<$Res> {
  factory _$$OrdersBlankDataModelImplCopyWith(_$OrdersBlankDataModelImpl value,
          $Res Function(_$OrdersBlankDataModelImpl) then) =
      __$$OrdersBlankDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String message,
      List<OrderBlankDataModel> orders,
      String errorMessage});
}

/// @nodoc
class __$$OrdersBlankDataModelImplCopyWithImpl<$Res>
    extends _$OrdersBlankDataModelCopyWithImpl<$Res, _$OrdersBlankDataModelImpl>
    implements _$$OrdersBlankDataModelImplCopyWith<$Res> {
  __$$OrdersBlankDataModelImplCopyWithImpl(_$OrdersBlankDataModelImpl _value,
      $Res Function(_$OrdersBlankDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersBlankDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? message = null,
    Object? orders = null,
    Object? errorMessage = null,
  }) {
    return _then(_$OrdersBlankDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderBlankDataModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrdersBlankDataModelImpl extends _OrdersBlankDataModel {
  _$OrdersBlankDataModelImpl(
      {required this.r,
      required this.message,
      required final List<OrderBlankDataModel> orders,
      required this.errorMessage})
      : _orders = orders,
        super._();

  @override
  final String r;
  @override
  final String message;
  final List<OrderBlankDataModel> _orders;
  @override
  List<OrderBlankDataModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'OrdersBlankDataModel(r: $r, message: $message, orders: $orders, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersBlankDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, message,
      const DeepCollectionEquality().hash(_orders), errorMessage);

  /// Create a copy of OrdersBlankDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersBlankDataModelImplCopyWith<_$OrdersBlankDataModelImpl>
      get copyWith =>
          __$$OrdersBlankDataModelImplCopyWithImpl<_$OrdersBlankDataModelImpl>(
              this, _$identity);
}

abstract class _OrdersBlankDataModel extends OrdersBlankDataModel {
  factory _OrdersBlankDataModel(
      {required final String r,
      required final String message,
      required final List<OrderBlankDataModel> orders,
      required final String errorMessage}) = _$OrdersBlankDataModelImpl;
  _OrdersBlankDataModel._() : super._();

  @override
  String get r;
  @override
  String get message;
  @override
  List<OrderBlankDataModel> get orders;
  @override
  String get errorMessage;

  /// Create a copy of OrdersBlankDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersBlankDataModelImplCopyWith<_$OrdersBlankDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
