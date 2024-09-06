import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_card_response.freezed.dart';
part 'gift_card_response.g.dart';

@freezed
class GiftCardResponse with _$GiftCardResponse {
  const GiftCardResponse._();
  factory GiftCardResponse({
    String? r,
    @JsonKey(name: 'e') String? errorMessage,
  }) = _GiftCardResponse;
  factory GiftCardResponse.fromJson(Map<String, dynamic> json) => _$GiftCardResponseFromJson(json);
}
