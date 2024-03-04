import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payments_gift_card_response.freezed.dart';
part 'order_payments_gift_card_response.g.dart';

@freezed
class OrderPaymentsGiftCardResponse with _$OrderPaymentsGiftCardResponse {
  const OrderPaymentsGiftCardResponse._();
  factory OrderPaymentsGiftCardResponse({
    @JsonKey(name: 'num') String? number,
    String? sum,
  }) = _OrderPaymentsGiftCardResponse;
  factory OrderPaymentsGiftCardResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderPaymentsGiftCardResponseFromJson(json);
}
