import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_delivery_response.freezed.dart';
part 'order_delivery_response.g.dart';

@freezed
class OrderDeliveryResponse with _$OrderDeliveryResponse {
  const OrderDeliveryResponse._();
  factory OrderDeliveryResponse({
    String? price,
    String? method,
    String? address,
  }) = _OrderDeliveryResponse;
  factory OrderDeliveryResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderDeliveryResponseFromJson(json);
}
