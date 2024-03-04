// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderInfoResponseImpl _$$OrderInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderInfoResponseImpl(
      r: json['r'] as String?,
      e: json['e'] as String?,
      id: json['id'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      error: json['error'] as String?,
      paidInfo: json['paid_info'] as String?,
      isPaid: json['is_paid'] as String?,
      sumForPaid: json['sum_for_paid'] as String?,
      idForPay: json['id_for_pay'] as String?,
      promo: json['promo'] == null
          ? null
          : OrderPromoResponse.fromJson(json['promo'] as Map<String, dynamic>),
      paymentName: json['payment_name'] as String?,
      paymentsGiftCard: (json['payments_gift_card'] as List<dynamic>?)
          ?.map((e) =>
              OrderPaymentsGiftCardResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      sumPaymentGiftCard: json['sum_payment_gift_card'] as String?,
      sumPaymentBonus: json['sum_payment_bonus'] as String?,
      delivery: json['delivery'] == null
          ? null
          : OrderDeliveryResponse.fromJson(
              json['delivery'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => OrderProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      giftCard: json['gift_card'] == null
          ? null
          : OrderGiftCardResponse.fromJson(
              json['gift_card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderInfoResponseImplToJson(
        _$OrderInfoResponseImpl instance) =>
    <String, dynamic>{
      'r': instance.r,
      'e': instance.e,
      'id': instance.id,
      'date': instance.date,
      'status': instance.status,
      'error': instance.error,
      'paid_info': instance.paidInfo,
      'is_paid': instance.isPaid,
      'sum_for_paid': instance.sumForPaid,
      'id_for_pay': instance.idForPay,
      'promo': instance.promo,
      'payment_name': instance.paymentName,
      'payments_gift_card': instance.paymentsGiftCard,
      'sum_payment_gift_card': instance.sumPaymentGiftCard,
      'sum_payment_bonus': instance.sumPaymentBonus,
      'delivery': instance.delivery,
      'products': instance.products,
      'gift_card': instance.giftCard,
    };
