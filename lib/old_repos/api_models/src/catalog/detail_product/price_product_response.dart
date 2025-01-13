import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_product_response.freezed.dart';
part 'price_product_response.g.dart';

@freezed
class PriceProductResponse with _$PriceProductResponse {
  const PriceProductResponse._();
  factory PriceProductResponse({
    String? p,
    String? pb,
    int? pc,
    int? pbc,
    int? cashback,
    @JsonKey(name: 'bonus_loyal') int? bonusLoyal,
    @JsonKey(name: 'bonus_gift') int? bonusGift,
    @JsonKey(name: 'bonus_year') int? bonusYear,
    @JsonKey(name: 'discount_val') int? discountVal,
    String? promo,
    @JsonKey(name: 'promo_value') int? promoValue,
  }) = _PriceProductResponse;
  factory PriceProductResponse.fromJson(Map<String, dynamic> json) =>
      _$PriceProductResponseFromJson(json);
}
