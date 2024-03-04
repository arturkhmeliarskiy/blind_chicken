import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/basket/basket_order_delivery_request.dart';
import 'package:models/src/basket/basket_sert_delivery_request.dart';

part 'basket_order_request.freezed.dart';

@freezed
class BasketOrderRequest with _$BasketOrderRequest {
  const BasketOrderRequest._();
  factory BasketOrderRequest({
    required String promo,
    required BasketOrderDeliveryRequest delivery,
    String? bonus,
    required String payment,
    List<BasketSertDeliveryRequest>? sert,
    required String city,
  }) = _BasketOrderRequest;
}
