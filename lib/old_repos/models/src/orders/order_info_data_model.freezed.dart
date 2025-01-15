// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get paidInfo => throw _privateConstructorUsedError;
  String get isPaid => throw _privateConstructorUsedError;
  String get sumForPaid => throw _privateConstructorUsedError;
  String get idForPay => throw _privateConstructorUsedError;
  OrderPromoDataModel get promo => throw _privateConstructorUsedError;
  String get paymentName => throw _privateConstructorUsedError;
  List<OrderPaymentsGiftCardDataModel> get paymentsGiftCard =>
      throw _privateConstructorUsedError;
  String get sumPaymentGiftCard => throw _privateConstructorUsedError;
  String get sumPaymentBonus => throw _privateConstructorUsedError;
  OrderDeliveryDataModel get delivery => throw _privateConstructorUsedError;
  List<ProductDataModel> get products => throw _privateConstructorUsedError;
  OrderGiftCardDataModel get giftCard => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderInfoDataModelCopyWith<OrderInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInfoDataModelCopyWith<$Res> {
  factory $OrderInfoDataModelCopyWith(
          OrderInfoDataModel value, $Res Function(OrderInfoDataModel) then) =
      _$OrderInfoDataModelCopyWithImpl<$Res, OrderInfoDataModel>;
  @useResult
  $Res call(
      {String r,
      String errorMessage,
      String id,
      String date,
      String status,
      String paidInfo,
      String isPaid,
      String sumForPaid,
      String idForPay,
      OrderPromoDataModel promo,
      String paymentName,
      List<OrderPaymentsGiftCardDataModel> paymentsGiftCard,
      String sumPaymentGiftCard,
      String sumPaymentBonus,
      OrderDeliveryDataModel delivery,
      List<ProductDataModel> products,
      OrderGiftCardDataModel giftCard});

  $OrderPromoDataModelCopyWith<$Res> get promo;
  $OrderDeliveryDataModelCopyWith<$Res> get delivery;
  $OrderGiftCardDataModelCopyWith<$Res> get giftCard;
}

/// @nodoc
class _$OrderInfoDataModelCopyWithImpl<$Res, $Val extends OrderInfoDataModel>
    implements $OrderInfoDataModelCopyWith<$Res> {
  _$OrderInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? errorMessage = null,
    Object? id = null,
    Object? date = null,
    Object? status = null,
    Object? paidInfo = null,
    Object? isPaid = null,
    Object? sumForPaid = null,
    Object? idForPay = null,
    Object? promo = null,
    Object? paymentName = null,
    Object? paymentsGiftCard = null,
    Object? sumPaymentGiftCard = null,
    Object? sumPaymentBonus = null,
    Object? delivery = null,
    Object? products = null,
    Object? giftCard = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paidInfo: null == paidInfo
          ? _value.paidInfo
          : paidInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as String,
      sumForPaid: null == sumForPaid
          ? _value.sumForPaid
          : sumForPaid // ignore: cast_nullable_to_non_nullable
              as String,
      idForPay: null == idForPay
          ? _value.idForPay
          : idForPay // ignore: cast_nullable_to_non_nullable
              as String,
      promo: null == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as OrderPromoDataModel,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentsGiftCard: null == paymentsGiftCard
          ? _value.paymentsGiftCard
          : paymentsGiftCard // ignore: cast_nullable_to_non_nullable
              as List<OrderPaymentsGiftCardDataModel>,
      sumPaymentGiftCard: null == sumPaymentGiftCard
          ? _value.sumPaymentGiftCard
          : sumPaymentGiftCard // ignore: cast_nullable_to_non_nullable
              as String,
      sumPaymentBonus: null == sumPaymentBonus
          ? _value.sumPaymentBonus
          : sumPaymentBonus // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as OrderDeliveryDataModel,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      giftCard: null == giftCard
          ? _value.giftCard
          : giftCard // ignore: cast_nullable_to_non_nullable
              as OrderGiftCardDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderPromoDataModelCopyWith<$Res> get promo {
    return $OrderPromoDataModelCopyWith<$Res>(_value.promo, (value) {
      return _then(_value.copyWith(promo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDeliveryDataModelCopyWith<$Res> get delivery {
    return $OrderDeliveryDataModelCopyWith<$Res>(_value.delivery, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderGiftCardDataModelCopyWith<$Res> get giftCard {
    return $OrderGiftCardDataModelCopyWith<$Res>(_value.giftCard, (value) {
      return _then(_value.copyWith(giftCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderInfoDataModelImplCopyWith<$Res>
    implements $OrderInfoDataModelCopyWith<$Res> {
  factory _$$OrderInfoDataModelImplCopyWith(_$OrderInfoDataModelImpl value,
          $Res Function(_$OrderInfoDataModelImpl) then) =
      __$$OrderInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String errorMessage,
      String id,
      String date,
      String status,
      String paidInfo,
      String isPaid,
      String sumForPaid,
      String idForPay,
      OrderPromoDataModel promo,
      String paymentName,
      List<OrderPaymentsGiftCardDataModel> paymentsGiftCard,
      String sumPaymentGiftCard,
      String sumPaymentBonus,
      OrderDeliveryDataModel delivery,
      List<ProductDataModel> products,
      OrderGiftCardDataModel giftCard});

  @override
  $OrderPromoDataModelCopyWith<$Res> get promo;
  @override
  $OrderDeliveryDataModelCopyWith<$Res> get delivery;
  @override
  $OrderGiftCardDataModelCopyWith<$Res> get giftCard;
}

/// @nodoc
class __$$OrderInfoDataModelImplCopyWithImpl<$Res>
    extends _$OrderInfoDataModelCopyWithImpl<$Res, _$OrderInfoDataModelImpl>
    implements _$$OrderInfoDataModelImplCopyWith<$Res> {
  __$$OrderInfoDataModelImplCopyWithImpl(_$OrderInfoDataModelImpl _value,
      $Res Function(_$OrderInfoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? errorMessage = null,
    Object? id = null,
    Object? date = null,
    Object? status = null,
    Object? paidInfo = null,
    Object? isPaid = null,
    Object? sumForPaid = null,
    Object? idForPay = null,
    Object? promo = null,
    Object? paymentName = null,
    Object? paymentsGiftCard = null,
    Object? sumPaymentGiftCard = null,
    Object? sumPaymentBonus = null,
    Object? delivery = null,
    Object? products = null,
    Object? giftCard = null,
  }) {
    return _then(_$OrderInfoDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paidInfo: null == paidInfo
          ? _value.paidInfo
          : paidInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as String,
      sumForPaid: null == sumForPaid
          ? _value.sumForPaid
          : sumForPaid // ignore: cast_nullable_to_non_nullable
              as String,
      idForPay: null == idForPay
          ? _value.idForPay
          : idForPay // ignore: cast_nullable_to_non_nullable
              as String,
      promo: null == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as OrderPromoDataModel,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentsGiftCard: null == paymentsGiftCard
          ? _value._paymentsGiftCard
          : paymentsGiftCard // ignore: cast_nullable_to_non_nullable
              as List<OrderPaymentsGiftCardDataModel>,
      sumPaymentGiftCard: null == sumPaymentGiftCard
          ? _value.sumPaymentGiftCard
          : sumPaymentGiftCard // ignore: cast_nullable_to_non_nullable
              as String,
      sumPaymentBonus: null == sumPaymentBonus
          ? _value.sumPaymentBonus
          : sumPaymentBonus // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as OrderDeliveryDataModel,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      giftCard: null == giftCard
          ? _value.giftCard
          : giftCard // ignore: cast_nullable_to_non_nullable
              as OrderGiftCardDataModel,
    ));
  }
}

/// @nodoc

class _$OrderInfoDataModelImpl extends _OrderInfoDataModel {
  _$OrderInfoDataModelImpl(
      {required this.r,
      required this.errorMessage,
      required this.id,
      required this.date,
      required this.status,
      required this.paidInfo,
      required this.isPaid,
      required this.sumForPaid,
      required this.idForPay,
      required this.promo,
      required this.paymentName,
      required final List<OrderPaymentsGiftCardDataModel> paymentsGiftCard,
      required this.sumPaymentGiftCard,
      required this.sumPaymentBonus,
      required this.delivery,
      required final List<ProductDataModel> products,
      required this.giftCard})
      : _paymentsGiftCard = paymentsGiftCard,
        _products = products,
        super._();

  @override
  final String r;
  @override
  final String errorMessage;
  @override
  final String id;
  @override
  final String date;
  @override
  final String status;
  @override
  final String paidInfo;
  @override
  final String isPaid;
  @override
  final String sumForPaid;
  @override
  final String idForPay;
  @override
  final OrderPromoDataModel promo;
  @override
  final String paymentName;
  final List<OrderPaymentsGiftCardDataModel> _paymentsGiftCard;
  @override
  List<OrderPaymentsGiftCardDataModel> get paymentsGiftCard {
    if (_paymentsGiftCard is EqualUnmodifiableListView)
      return _paymentsGiftCard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentsGiftCard);
  }

  @override
  final String sumPaymentGiftCard;
  @override
  final String sumPaymentBonus;
  @override
  final OrderDeliveryDataModel delivery;
  final List<ProductDataModel> _products;
  @override
  List<ProductDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final OrderGiftCardDataModel giftCard;

  @override
  String toString() {
    return 'OrderInfoDataModel(r: $r, errorMessage: $errorMessage, id: $id, date: $date, status: $status, paidInfo: $paidInfo, isPaid: $isPaid, sumForPaid: $sumForPaid, idForPay: $idForPay, promo: $promo, paymentName: $paymentName, paymentsGiftCard: $paymentsGiftCard, sumPaymentGiftCard: $sumPaymentGiftCard, sumPaymentBonus: $sumPaymentBonus, delivery: $delivery, products: $products, giftCard: $giftCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paidInfo, paidInfo) ||
                other.paidInfo == paidInfo) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.sumForPaid, sumForPaid) ||
                other.sumForPaid == sumForPaid) &&
            (identical(other.idForPay, idForPay) ||
                other.idForPay == idForPay) &&
            (identical(other.promo, promo) || other.promo == promo) &&
            (identical(other.paymentName, paymentName) ||
                other.paymentName == paymentName) &&
            const DeepCollectionEquality()
                .equals(other._paymentsGiftCard, _paymentsGiftCard) &&
            (identical(other.sumPaymentGiftCard, sumPaymentGiftCard) ||
                other.sumPaymentGiftCard == sumPaymentGiftCard) &&
            (identical(other.sumPaymentBonus, sumPaymentBonus) ||
                other.sumPaymentBonus == sumPaymentBonus) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.giftCard, giftCard) ||
                other.giftCard == giftCard));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      r,
      errorMessage,
      id,
      date,
      status,
      paidInfo,
      isPaid,
      sumForPaid,
      idForPay,
      promo,
      paymentName,
      const DeepCollectionEquality().hash(_paymentsGiftCard),
      sumPaymentGiftCard,
      sumPaymentBonus,
      delivery,
      const DeepCollectionEquality().hash(_products),
      giftCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderInfoDataModelImplCopyWith<_$OrderInfoDataModelImpl> get copyWith =>
      __$$OrderInfoDataModelImplCopyWithImpl<_$OrderInfoDataModelImpl>(
          this, _$identity);
}

abstract class _OrderInfoDataModel extends OrderInfoDataModel {
  factory _OrderInfoDataModel(
          {required final String r,
          required final String errorMessage,
          required final String id,
          required final String date,
          required final String status,
          required final String paidInfo,
          required final String isPaid,
          required final String sumForPaid,
          required final String idForPay,
          required final OrderPromoDataModel promo,
          required final String paymentName,
          required final List<OrderPaymentsGiftCardDataModel> paymentsGiftCard,
          required final String sumPaymentGiftCard,
          required final String sumPaymentBonus,
          required final OrderDeliveryDataModel delivery,
          required final List<ProductDataModel> products,
          required final OrderGiftCardDataModel giftCard}) =
      _$OrderInfoDataModelImpl;
  _OrderInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get errorMessage;
  @override
  String get id;
  @override
  String get date;
  @override
  String get status;
  @override
  String get paidInfo;
  @override
  String get isPaid;
  @override
  String get sumForPaid;
  @override
  String get idForPay;
  @override
  OrderPromoDataModel get promo;
  @override
  String get paymentName;
  @override
  List<OrderPaymentsGiftCardDataModel> get paymentsGiftCard;
  @override
  String get sumPaymentGiftCard;
  @override
  String get sumPaymentBonus;
  @override
  OrderDeliveryDataModel get delivery;
  @override
  List<ProductDataModel> get products;
  @override
  OrderGiftCardDataModel get giftCard;
  @override
  @JsonKey(ignore: true)
  _$$OrderInfoDataModelImplCopyWith<_$OrderInfoDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
