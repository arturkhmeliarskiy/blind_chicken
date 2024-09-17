import 'package:api_models/src/basket/basket_brand_response.dart';
import 'package:api_models/src/basket/basket_category_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_data_info_response.freezed.dart';
part 'basket_data_info_response.g.dart';

@freezed
class BasketDataInfoResponse with _$BasketDataInfoResponse {
  const BasketDataInfoResponse._();
  factory BasketDataInfoResponse({
    String? foto,
    int? price,
    @JsonKey(name: 'base_price') int? basePrice,
    @JsonKey(name: 'price_1') int? price1,
    @JsonKey(name: 'base_price_1') int? basePrice1,
    @JsonKey(name: 'promo_discount_1') int? promoDiscount1,
    @JsonKey(name: 'loyalty_discount_1') double? loyaltyDiscount1,
    BasketBrandResponse? brand,
    BasketCategoryResponse? category,
    @JsonKey(name: 'name_view') String? nameView,
    String? promo,
    @JsonKey(name: 'promo_value') int? promoValue,
  }) = _BasketDataInfoResponse;
  factory BasketDataInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketDataInfoResponseFromJson(json);
}
