import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_order_delivery_request.freezed.dart';

@freezed
class BasketOrderDeliveryRequest with _$BasketOrderDeliveryRequest {
  const BasketOrderDeliveryRequest._();
  factory BasketOrderDeliveryRequest({
    required String id,
    required String pck,
    required String adr,
    required String adrId,
    required String zip,
  }) = _BasketOrderDeliveryRequest;
}
