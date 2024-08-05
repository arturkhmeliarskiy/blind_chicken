import 'package:api_models/src/orders/order_delivery_response.dart';
import 'package:api_models/src/orders/order_gift_card_response.dart';
import 'package:api_models/src/orders/order_item_response.dart';
import 'package:api_models/src/orders/order_payments_gift_card_response.dart';
import 'package:api_models/src/orders/order_product_response.dart';
import 'package:api_models/src/orders/order_promo_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_info_response.freezed.dart';
part 'order_info_response.g.dart';

@freezed
class OrderInfoResponse with _$OrderInfoResponse {
  const OrderInfoResponse._();
  factory OrderInfoResponse({
    String? r,
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
    @JsonKey(name: 'payments_gift_card') List<OrderPaymentsGiftCardResponse>? paymentsGiftCard,
    @JsonKey(name: 'sum_payment_gift_card') String? sumPaymentGiftCard,
    @JsonKey(name: 'sum_payment_bonus') String? sumPaymentBonus,
    OrderDeliveryResponse? delivery,
    List<OrderProductResponse>? products,
    @JsonKey(name: 'gift_card') OrderGiftCardResponse? giftCard,
  }) = _OrderInfoResponse;
  factory OrderInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderInfoResponseFromJson(json);
}
