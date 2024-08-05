// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderInfoResponse _$OrderInfoResponseFromJson(Map<String, dynamic> json) {
  return _OrderInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderInfoResponse {
  String? get r => throw _privateConstructorUsedError;
  @JsonKey(name: 'e')
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_info')
  String? get paidInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_paid')
  String? get isPaid => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum_for_paid')
  String? get sumForPaid => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_for_pay')
  String? get idForPay => throw _privateConstructorUsedError;
  OrderPromoResponse? get promo => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_name')
  String? get paymentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payments_gift_card')
  List<OrderPaymentsGiftCardResponse>? get paymentsGiftCard =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'sum_payment_gift_card')
  String? get sumPaymentGiftCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'sum_payment_bonus')
  String? get sumPaymentBonus => throw _privateConstructorUsedError;
  OrderDeliveryResponse? get delivery => throw _privateConstructorUsedError;
  List<OrderProductResponse>? get products =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'gift_card')
  OrderGiftCardResponse? get giftCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderInfoResponseCopyWith<OrderInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInfoResponseCopyWith<$Res> {
  factory $OrderInfoResponseCopyWith(
          OrderInfoResponse value, $Res Function(OrderInfoResponse) then) =
      _$OrderInfoResponseCopyWithImpl<$Res, OrderInfoResponse>;
  @useResult
  $Res call(
      {String? r,
      @JsonKey(name: 'e') String? errorMessage,
      String? id,
      String? date,
      String? status,
      @JsonKey(name: 'paid_info') String? paidInfo,
      @JsonKey(name: 'is_paid') String? isPaid,
      @JsonKey(name: 'sum_for_paid') String? sumForPaid,
      @JsonKey(name: 'id_for_pay') String? idForPay,
      OrderPromoResponse? promo,
      @JsonKey(name: 'payment_name') String? paymentName,
      @JsonKey(name: 'payments_gift_card')
      List<OrderPaymentsGiftCardResponse>? paymentsGiftCard,
      @JsonKey(name: 'sum_payment_gift_card') String? sumPaymentGiftCard,
      @JsonKey(name: 'sum_payment_bonus') String? sumPaymentBonus,
      OrderDeliveryResponse? delivery,
      List<OrderProductResponse>? products,
      @JsonKey(name: 'gift_card') OrderGiftCardResponse? giftCard});

  $OrderPromoResponseCopyWith<$Res>? get promo;
  $OrderDeliveryResponseCopyWith<$Res>? get delivery;
  $OrderGiftCardResponseCopyWith<$Res>? get giftCard;
}

/// @nodoc
class _$OrderInfoResponseCopyWithImpl<$Res, $Val extends OrderInfoResponse>
    implements $OrderInfoResponseCopyWith<$Res> {
  _$OrderInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? errorMessage = freezed,
    Object? id = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? paidInfo = freezed,
    Object? isPaid = freezed,
    Object? sumForPaid = freezed,
    Object? idForPay = freezed,
    Object? promo = freezed,
    Object? paymentName = freezed,
    Object? paymentsGiftCard = freezed,
    Object? sumPaymentGiftCard = freezed,
    Object? sumPaymentBonus = freezed,
    Object? delivery = freezed,
    Object? products = freezed,
    Object? giftCard = freezed,
  }) {
    return _then(_value.copyWith(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paidInfo: freezed == paidInfo
          ? _value.paidInfo
          : paidInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as String?,
      sumForPaid: freezed == sumForPaid
          ? _value.sumForPaid
          : sumForPaid // ignore: cast_nullable_to_non_nullable
              as String?,
      idForPay: freezed == idForPay
          ? _value.idForPay
          : idForPay // ignore: cast_nullable_to_non_nullable
              as String?,
      promo: freezed == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as OrderPromoResponse?,
      paymentName: freezed == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentsGiftCard: freezed == paymentsGiftCard
          ? _value.paymentsGiftCard
          : paymentsGiftCard // ignore: cast_nullable_to_non_nullable
              as List<OrderPaymentsGiftCardResponse>?,
      sumPaymentGiftCard: freezed == sumPaymentGiftCard
          ? _value.sumPaymentGiftCard
          : sumPaymentGiftCard // ignore: cast_nullable_to_non_nullable
              as String?,
      sumPaymentBonus: freezed == sumPaymentBonus
          ? _value.sumPaymentBonus
          : sumPaymentBonus // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as OrderDeliveryResponse?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderProductResponse>?,
      giftCard: freezed == giftCard
          ? _value.giftCard
          : giftCard // ignore: cast_nullable_to_non_nullable
              as OrderGiftCardResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderPromoResponseCopyWith<$Res>? get promo {
    if (_value.promo == null) {
      return null;
    }

    return $OrderPromoResponseCopyWith<$Res>(_value.promo!, (value) {
      return _then(_value.copyWith(promo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDeliveryResponseCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $OrderDeliveryResponseCopyWith<$Res>(_value.delivery!, (value) {
      return _then(_value.copyWith(delivery: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderGiftCardResponseCopyWith<$Res>? get giftCard {
    if (_value.giftCard == null) {
      return null;
    }

    return $OrderGiftCardResponseCopyWith<$Res>(_value.giftCard!, (value) {
      return _then(_value.copyWith(giftCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderInfoResponseImplCopyWith<$Res>
    implements $OrderInfoResponseCopyWith<$Res> {
  factory _$$OrderInfoResponseImplCopyWith(_$OrderInfoResponseImpl value,
          $Res Function(_$OrderInfoResponseImpl) then) =
      __$$OrderInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? r,
      @JsonKey(name: 'e') String? errorMessage,
      String? id,
      String? date,
      String? status,
      @JsonKey(name: 'paid_info') String? paidInfo,
      @JsonKey(name: 'is_paid') String? isPaid,
      @JsonKey(name: 'sum_for_paid') String? sumForPaid,
      @JsonKey(name: 'id_for_pay') String? idForPay,
      OrderPromoResponse? promo,
      @JsonKey(name: 'payment_name') String? paymentName,
      @JsonKey(name: 'payments_gift_card')
      List<OrderPaymentsGiftCardResponse>? paymentsGiftCard,
      @JsonKey(name: 'sum_payment_gift_card') String? sumPaymentGiftCard,
      @JsonKey(name: 'sum_payment_bonus') String? sumPaymentBonus,
      OrderDeliveryResponse? delivery,
      List<OrderProductResponse>? products,
      @JsonKey(name: 'gift_card') OrderGiftCardResponse? giftCard});

  @override
  $OrderPromoResponseCopyWith<$Res>? get promo;
  @override
  $OrderDeliveryResponseCopyWith<$Res>? get delivery;
  @override
  $OrderGiftCardResponseCopyWith<$Res>? get giftCard;
}

/// @nodoc
class __$$OrderInfoResponseImplCopyWithImpl<$Res>
    extends _$OrderInfoResponseCopyWithImpl<$Res, _$OrderInfoResponseImpl>
    implements _$$OrderInfoResponseImplCopyWith<$Res> {
  __$$OrderInfoResponseImplCopyWithImpl(_$OrderInfoResponseImpl _value,
      $Res Function(_$OrderInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = freezed,
    Object? errorMessage = freezed,
    Object? id = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? paidInfo = freezed,
    Object? isPaid = freezed,
    Object? sumForPaid = freezed,
    Object? idForPay = freezed,
    Object? promo = freezed,
    Object? paymentName = freezed,
    Object? paymentsGiftCard = freezed,
    Object? sumPaymentGiftCard = freezed,
    Object? sumPaymentBonus = freezed,
    Object? delivery = freezed,
    Object? products = freezed,
    Object? giftCard = freezed,
  }) {
    return _then(_$OrderInfoResponseImpl(
      r: freezed == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paidInfo: freezed == paidInfo
          ? _value.paidInfo
          : paidInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as String?,
      sumForPaid: freezed == sumForPaid
          ? _value.sumForPaid
          : sumForPaid // ignore: cast_nullable_to_non_nullable
              as String?,
      idForPay: freezed == idForPay
          ? _value.idForPay
          : idForPay // ignore: cast_nullable_to_non_nullable
              as String?,
      promo: freezed == promo
          ? _value.promo
          : promo // ignore: cast_nullable_to_non_nullable
              as OrderPromoResponse?,
      paymentName: freezed == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentsGiftCard: freezed == paymentsGiftCard
          ? _value._paymentsGiftCard
          : paymentsGiftCard // ignore: cast_nullable_to_non_nullable
              as List<OrderPaymentsGiftCardResponse>?,
      sumPaymentGiftCard: freezed == sumPaymentGiftCard
          ? _value.sumPaymentGiftCard
          : sumPaymentGiftCard // ignore: cast_nullable_to_non_nullable
              as String?,
      sumPaymentBonus: freezed == sumPaymentBonus
          ? _value.sumPaymentBonus
          : sumPaymentBonus // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as OrderDeliveryResponse?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderProductResponse>?,
      giftCard: freezed == giftCard
          ? _value.giftCard
          : giftCard // ignore: cast_nullable_to_non_nullable
              as OrderGiftCardResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderInfoResponseImpl extends _OrderInfoResponse {
  _$OrderInfoResponseImpl(
      {this.r,
      @JsonKey(name: 'e') this.errorMessage,
      this.id,
      this.date,
      this.status,
      @JsonKey(name: 'paid_info') this.paidInfo,
      @JsonKey(name: 'is_paid') this.isPaid,
      @JsonKey(name: 'sum_for_paid') this.sumForPaid,
      @JsonKey(name: 'id_for_pay') this.idForPay,
      this.promo,
      @JsonKey(name: 'payment_name') this.paymentName,
      @JsonKey(name: 'payments_gift_card')
      final List<OrderPaymentsGiftCardResponse>? paymentsGiftCard,
      @JsonKey(name: 'sum_payment_gift_card') this.sumPaymentGiftCard,
      @JsonKey(name: 'sum_payment_bonus') this.sumPaymentBonus,
      this.delivery,
      final List<OrderProductResponse>? products,
      @JsonKey(name: 'gift_card') this.giftCard})
      : _paymentsGiftCard = paymentsGiftCard,
        _products = products,
        super._();

  factory _$OrderInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderInfoResponseImplFromJson(json);

  @override
  final String? r;
  @override
  @JsonKey(name: 'e')
  final String? errorMessage;
  @override
  final String? id;
  @override
  final String? date;
  @override
  final String? status;
  @override
  @JsonKey(name: 'paid_info')
  final String? paidInfo;
  @override
  @JsonKey(name: 'is_paid')
  final String? isPaid;
  @override
  @JsonKey(name: 'sum_for_paid')
  final String? sumForPaid;
  @override
  @JsonKey(name: 'id_for_pay')
  final String? idForPay;
  @override
  final OrderPromoResponse? promo;
  @override
  @JsonKey(name: 'payment_name')
  final String? paymentName;
  final List<OrderPaymentsGiftCardResponse>? _paymentsGiftCard;
  @override
  @JsonKey(name: 'payments_gift_card')
  List<OrderPaymentsGiftCardResponse>? get paymentsGiftCard {
    final value = _paymentsGiftCard;
    if (value == null) return null;
    if (_paymentsGiftCard is EqualUnmodifiableListView)
      return _paymentsGiftCard;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'sum_payment_gift_card')
  final String? sumPaymentGiftCard;
  @override
  @JsonKey(name: 'sum_payment_bonus')
  final String? sumPaymentBonus;
  @override
  final OrderDeliveryResponse? delivery;
  final List<OrderProductResponse>? _products;
  @override
  List<OrderProductResponse>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'gift_card')
  final OrderGiftCardResponse? giftCard;

  @override
  String toString() {
    return 'OrderInfoResponse(r: $r, errorMessage: $errorMessage, id: $id, date: $date, status: $status, paidInfo: $paidInfo, isPaid: $isPaid, sumForPaid: $sumForPaid, idForPay: $idForPay, promo: $promo, paymentName: $paymentName, paymentsGiftCard: $paymentsGiftCard, sumPaymentGiftCard: $sumPaymentGiftCard, sumPaymentBonus: $sumPaymentBonus, delivery: $delivery, products: $products, giftCard: $giftCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderInfoResponseImpl &&
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

  @JsonKey(ignore: true)
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
  _$$OrderInfoResponseImplCopyWith<_$OrderInfoResponseImpl> get copyWith =>
      __$$OrderInfoResponseImplCopyWithImpl<_$OrderInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderInfoResponse extends OrderInfoResponse {
  factory _OrderInfoResponse(
      {final String? r,
      @JsonKey(name: 'e') final String? errorMessage,
      final String? id,
      final String? date,
      final String? status,
      @JsonKey(name: 'paid_info') final String? paidInfo,
      @JsonKey(name: 'is_paid') final String? isPaid,
      @JsonKey(name: 'sum_for_paid') final String? sumForPaid,
      @JsonKey(name: 'id_for_pay') final String? idForPay,
      final OrderPromoResponse? promo,
      @JsonKey(name: 'payment_name') final String? paymentName,
      @JsonKey(name: 'payments_gift_card')
      final List<OrderPaymentsGiftCardResponse>? paymentsGiftCard,
      @JsonKey(name: 'sum_payment_gift_card') final String? sumPaymentGiftCard,
      @JsonKey(name: 'sum_payment_bonus') final String? sumPaymentBonus,
      final OrderDeliveryResponse? delivery,
      final List<OrderProductResponse>? products,
      @JsonKey(name: 'gift_card')
      final OrderGiftCardResponse? giftCard}) = _$OrderInfoResponseImpl;
  _OrderInfoResponse._() : super._();

  factory _OrderInfoResponse.fromJson(Map<String, dynamic> json) =
      _$OrderInfoResponseImpl.fromJson;

  @override
  String? get r;
  @override
  @JsonKey(name: 'e')
  String? get errorMessage;
  @override
  String? get id;
  @override
  String? get date;
  @override
  String? get status;
  @override
  @JsonKey(name: 'paid_info')
  String? get paidInfo;
  @override
  @JsonKey(name: 'is_paid')
  String? get isPaid;
  @override
  @JsonKey(name: 'sum_for_paid')
  String? get sumForPaid;
  @override
  @JsonKey(name: 'id_for_pay')
  String? get idForPay;
  @override
  OrderPromoResponse? get promo;
  @override
  @JsonKey(name: 'payment_name')
  String? get paymentName;
  @override
  @JsonKey(name: 'payments_gift_card')
  List<OrderPaymentsGiftCardResponse>? get paymentsGiftCard;
  @override
  @JsonKey(name: 'sum_payment_gift_card')
  String? get sumPaymentGiftCard;
  @override
  @JsonKey(name: 'sum_payment_bonus')
  String? get sumPaymentBonus;
  @override
  OrderDeliveryResponse? get delivery;
  @override
  List<OrderProductResponse>? get products;
  @override
  @JsonKey(name: 'gift_card')
  OrderGiftCardResponse? get giftCard;
  @override
  @JsonKey(ignore: true)
  _$$OrderInfoResponseImplCopyWith<_$OrderInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
