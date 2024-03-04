import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_order_response.freezed.dart';
part 'payment_order_response.g.dart';

@freezed
class PaymentOrderResponse with _$PaymentOrderResponse {
  const PaymentOrderResponse._();
  factory PaymentOrderResponse({
    String? r,
    String? e,
    int? id,
  }) = _PaymentOrderResponse;
  factory PaymentOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentOrderResponseFromJson(json);
}
