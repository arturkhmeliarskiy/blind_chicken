import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_sert_delivery_request.freezed.dart';

@freezed
class BasketSertDeliveryRequest with _$BasketSertDeliveryRequest {
  const BasketSertDeliveryRequest._();
  factory BasketSertDeliveryRequest({
    required String n,
    required String p,
    required String v,
  }) = _BasketSertDeliveryRequest;
}
