import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_order_response.freezed.dart';
part 'pay_order_response.g.dart';

@freezed
class PayOrderResponse with _$PayOrderResponse {
  const PayOrderResponse._();
  factory PayOrderResponse({
    String? r,
    String? e,
    String? url,
  }) = _PayOrderResponse;
  factory PayOrderResponse.fromJson(Map<String, dynamic> json) => _$PayOrderResponseFromJson(json);
}
