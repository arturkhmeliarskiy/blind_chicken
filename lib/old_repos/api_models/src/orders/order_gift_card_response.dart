import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_gift_card_response.freezed.dart';
part 'order_gift_card_response.g.dart';

@freezed
class OrderGiftCardResponse with _$OrderGiftCardResponse {
  const OrderGiftCardResponse._();
  factory OrderGiftCardResponse({
    String? type,
    String? color,
    String? name,
    String? img,
    String? sum,
  }) = _OrderGiftCardResponse;
  factory OrderGiftCardResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderGiftCardResponseFromJson(json);
}
