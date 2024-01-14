// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  List<ShoppingCartDataModel> get products =>
      throw _privateConstructorUsedError;
  List<ProductDataModel> get favouritesProducts =>
      throw _privateConstructorUsedError;
  int get numberProducts => throw _privateConstructorUsedError;
  int get amountPaid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)
        orderInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        orderInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        orderInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoOrderEvent value) orderInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoOrderEvent value)? orderInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoOrderEvent value)? orderInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEventCopyWith<OrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
  @useResult
  $Res call(
      {List<ShoppingCartDataModel> products,
      List<ProductDataModel> favouritesProducts,
      int numberProducts,
      int amountPaid});
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? favouritesProducts = null,
    Object? numberProducts = null,
    Object? amountPaid = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartDataModel>,
      favouritesProducts: null == favouritesProducts
          ? _value.favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      numberProducts: null == numberProducts
          ? _value.numberProducts
          : numberProducts // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoOrderEventImplCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$$InfoOrderEventImplCopyWith(_$InfoOrderEventImpl value,
          $Res Function(_$InfoOrderEventImpl) then) =
      __$$InfoOrderEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShoppingCartDataModel> products,
      List<ProductDataModel> favouritesProducts,
      int numberProducts,
      int amountPaid});
}

/// @nodoc
class __$$InfoOrderEventImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$InfoOrderEventImpl>
    implements _$$InfoOrderEventImplCopyWith<$Res> {
  __$$InfoOrderEventImplCopyWithImpl(
      _$InfoOrderEventImpl _value, $Res Function(_$InfoOrderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? favouritesProducts = null,
    Object? numberProducts = null,
    Object? amountPaid = null,
  }) {
    return _then(_$InfoOrderEventImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartDataModel>,
      favouritesProducts: null == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      numberProducts: null == numberProducts
          ? _value.numberProducts
          : numberProducts // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InfoOrderEventImpl implements InfoOrderEvent {
  const _$InfoOrderEventImpl(
      {required final List<ShoppingCartDataModel> products,
      required final List<ProductDataModel> favouritesProducts,
      required this.numberProducts,
      required this.amountPaid})
      : _products = products,
        _favouritesProducts = favouritesProducts;

  final List<ShoppingCartDataModel> _products;
  @override
  List<ShoppingCartDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductDataModel> _favouritesProducts;
  @override
  List<ProductDataModel> get favouritesProducts {
    if (_favouritesProducts is EqualUnmodifiableListView)
      return _favouritesProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProducts);
  }

  @override
  final int numberProducts;
  @override
  final int amountPaid;

  @override
  String toString() {
    return 'OrderEvent.orderInfo(products: $products, favouritesProducts: $favouritesProducts, numberProducts: $numberProducts, amountPaid: $amountPaid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoOrderEventImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts) &&
            (identical(other.numberProducts, numberProducts) ||
                other.numberProducts == numberProducts) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_favouritesProducts),
      numberProducts,
      amountPaid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoOrderEventImplCopyWith<_$InfoOrderEventImpl> get copyWith =>
      __$$InfoOrderEventImplCopyWithImpl<_$InfoOrderEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)
        orderInfo,
  }) {
    return orderInfo(products, favouritesProducts, numberProducts, amountPaid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        orderInfo,
  }) {
    return orderInfo?.call(
        products, favouritesProducts, numberProducts, amountPaid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid)?
        orderInfo,
    required TResult orElse(),
  }) {
    if (orderInfo != null) {
      return orderInfo(
          products, favouritesProducts, numberProducts, amountPaid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoOrderEvent value) orderInfo,
  }) {
    return orderInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoOrderEvent value)? orderInfo,
  }) {
    return orderInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoOrderEvent value)? orderInfo,
    required TResult orElse(),
  }) {
    if (orderInfo != null) {
      return orderInfo(this);
    }
    return orElse();
  }
}

abstract class InfoOrderEvent implements OrderEvent {
  const factory InfoOrderEvent(
      {required final List<ShoppingCartDataModel> products,
      required final List<ProductDataModel> favouritesProducts,
      required final int numberProducts,
      required final int amountPaid}) = _$InfoOrderEventImpl;

  @override
  List<ShoppingCartDataModel> get products;
  @override
  List<ProductDataModel> get favouritesProducts;
  @override
  int get numberProducts;
  @override
  int get amountPaid;
  @override
  @JsonKey(ignore: true)
  _$$InfoOrderEventImplCopyWith<_$InfoOrderEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)
        productsOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)?
        productsOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)?
        productsOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingOrderState value) load,
    required TResult Function(InitOrderState value) init,
    required TResult Function(ProductsOrderState value) productsOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingOrderState value)? load,
    TResult? Function(InitOrderState value)? init,
    TResult? Function(ProductsOrderState value)? productsOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingOrderState value)? load,
    TResult Function(InitOrderState value)? init,
    TResult Function(ProductsOrderState value)? productsOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingOrderStateImplCopyWith<$Res> {
  factory _$$LoadingOrderStateImplCopyWith(_$LoadingOrderStateImpl value,
          $Res Function(_$LoadingOrderStateImpl) then) =
      __$$LoadingOrderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadingOrderStateImpl>
    implements _$$LoadingOrderStateImplCopyWith<$Res> {
  __$$LoadingOrderStateImplCopyWithImpl(_$LoadingOrderStateImpl _value,
      $Res Function(_$LoadingOrderStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingOrderStateImpl implements LoadingOrderState {
  const _$LoadingOrderStateImpl();

  @override
  String toString() {
    return 'OrderState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingOrderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)
        productsOrder,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)?
        productsOrder,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)?
        productsOrder,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingOrderState value) load,
    required TResult Function(InitOrderState value) init,
    required TResult Function(ProductsOrderState value) productsOrder,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingOrderState value)? load,
    TResult? Function(InitOrderState value)? init,
    TResult? Function(ProductsOrderState value)? productsOrder,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingOrderState value)? load,
    TResult Function(InitOrderState value)? init,
    TResult Function(ProductsOrderState value)? productsOrder,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingOrderState implements OrderState {
  const factory LoadingOrderState() = _$LoadingOrderStateImpl;
}

/// @nodoc
abstract class _$$InitOrderStateImplCopyWith<$Res> {
  factory _$$InitOrderStateImplCopyWith(_$InitOrderStateImpl value,
          $Res Function(_$InitOrderStateImpl) then) =
      __$$InitOrderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$InitOrderStateImpl>
    implements _$$InitOrderStateImplCopyWith<$Res> {
  __$$InitOrderStateImplCopyWithImpl(
      _$InitOrderStateImpl _value, $Res Function(_$InitOrderStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitOrderStateImpl implements InitOrderState {
  const _$InitOrderStateImpl();

  @override
  String toString() {
    return 'OrderState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitOrderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)
        productsOrder,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)?
        productsOrder,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)?
        productsOrder,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingOrderState value) load,
    required TResult Function(InitOrderState value) init,
    required TResult Function(ProductsOrderState value) productsOrder,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingOrderState value)? load,
    TResult? Function(InitOrderState value)? init,
    TResult? Function(ProductsOrderState value)? productsOrder,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingOrderState value)? load,
    TResult Function(InitOrderState value)? init,
    TResult Function(ProductsOrderState value)? productsOrder,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitOrderState implements OrderState {
  const factory InitOrderState() = _$InitOrderStateImpl;
}

/// @nodoc
abstract class _$$ProductsOrderStateImplCopyWith<$Res> {
  factory _$$ProductsOrderStateImplCopyWith(_$ProductsOrderStateImpl value,
          $Res Function(_$ProductsOrderStateImpl) then) =
      __$$ProductsOrderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ShoppingCartDataModel> products,
      List<ProductDataModel> favouritesProducts,
      int numberProducts,
      int amountPaid,
      int orderNumber,
      String dateRegistration});
}

/// @nodoc
class __$$ProductsOrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$ProductsOrderStateImpl>
    implements _$$ProductsOrderStateImplCopyWith<$Res> {
  __$$ProductsOrderStateImplCopyWithImpl(_$ProductsOrderStateImpl _value,
      $Res Function(_$ProductsOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? favouritesProducts = null,
    Object? numberProducts = null,
    Object? amountPaid = null,
    Object? orderNumber = null,
    Object? dateRegistration = null,
  }) {
    return _then(_$ProductsOrderStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartDataModel>,
      favouritesProducts: null == favouritesProducts
          ? _value._favouritesProducts
          : favouritesProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      numberProducts: null == numberProducts
          ? _value.numberProducts
          : numberProducts // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: null == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      dateRegistration: null == dateRegistration
          ? _value.dateRegistration
          : dateRegistration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsOrderStateImpl implements ProductsOrderState {
  const _$ProductsOrderStateImpl(
      {required final List<ShoppingCartDataModel> products,
      required final List<ProductDataModel> favouritesProducts,
      required this.numberProducts,
      required this.amountPaid,
      required this.orderNumber,
      required this.dateRegistration})
      : _products = products,
        _favouritesProducts = favouritesProducts;

  final List<ShoppingCartDataModel> _products;
  @override
  List<ShoppingCartDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductDataModel> _favouritesProducts;
  @override
  List<ProductDataModel> get favouritesProducts {
    if (_favouritesProducts is EqualUnmodifiableListView)
      return _favouritesProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouritesProducts);
  }

  @override
  final int numberProducts;
  @override
  final int amountPaid;
  @override
  final int orderNumber;
  @override
  final String dateRegistration;

  @override
  String toString() {
    return 'OrderState.productsOrder(products: $products, favouritesProducts: $favouritesProducts, numberProducts: $numberProducts, amountPaid: $amountPaid, orderNumber: $orderNumber, dateRegistration: $dateRegistration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsOrderStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._favouritesProducts, _favouritesProducts) &&
            (identical(other.numberProducts, numberProducts) ||
                other.numberProducts == numberProducts) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.dateRegistration, dateRegistration) ||
                other.dateRegistration == dateRegistration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_favouritesProducts),
      numberProducts,
      amountPaid,
      orderNumber,
      dateRegistration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsOrderStateImplCopyWith<_$ProductsOrderStateImpl> get copyWith =>
      __$$ProductsOrderStateImplCopyWithImpl<_$ProductsOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() init,
    required TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)
        productsOrder,
  }) {
    return productsOrder(products, favouritesProducts, numberProducts,
        amountPaid, orderNumber, dateRegistration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? init,
    TResult? Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)?
        productsOrder,
  }) {
    return productsOrder?.call(products, favouritesProducts, numberProducts,
        amountPaid, orderNumber, dateRegistration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? init,
    TResult Function(
            List<ShoppingCartDataModel> products,
            List<ProductDataModel> favouritesProducts,
            int numberProducts,
            int amountPaid,
            int orderNumber,
            String dateRegistration)?
        productsOrder,
    required TResult orElse(),
  }) {
    if (productsOrder != null) {
      return productsOrder(products, favouritesProducts, numberProducts,
          amountPaid, orderNumber, dateRegistration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingOrderState value) load,
    required TResult Function(InitOrderState value) init,
    required TResult Function(ProductsOrderState value) productsOrder,
  }) {
    return productsOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingOrderState value)? load,
    TResult? Function(InitOrderState value)? init,
    TResult? Function(ProductsOrderState value)? productsOrder,
  }) {
    return productsOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingOrderState value)? load,
    TResult Function(InitOrderState value)? init,
    TResult Function(ProductsOrderState value)? productsOrder,
    required TResult orElse(),
  }) {
    if (productsOrder != null) {
      return productsOrder(this);
    }
    return orElse();
  }
}

abstract class ProductsOrderState implements OrderState {
  const factory ProductsOrderState(
      {required final List<ShoppingCartDataModel> products,
      required final List<ProductDataModel> favouritesProducts,
      required final int numberProducts,
      required final int amountPaid,
      required final int orderNumber,
      required final String dateRegistration}) = _$ProductsOrderStateImpl;

  List<ShoppingCartDataModel> get products;
  List<ProductDataModel> get favouritesProducts;
  int get numberProducts;
  int get amountPaid;
  int get orderNumber;
  String get dateRegistration;
  @JsonKey(ignore: true)
  _$$ProductsOrderStateImplCopyWith<_$ProductsOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
