import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_item_response.freezed.dart';
part 'payment_item_response.g.dart';

@freezed
class PaymentItemResponse with _$PaymentItemResponse {
  const PaymentItemResponse._();
  factory PaymentItemResponse({
    String? id,
    String? name,
  }) = _PaymentItemResponse;
  factory PaymentItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentItemResponseFromJson(json);
}
