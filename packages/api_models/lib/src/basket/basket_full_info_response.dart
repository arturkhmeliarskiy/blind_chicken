import 'package:api_models/src/basket/basket_full_info_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_full_info_response.freezed.dart';
part 'basket_full_info_response.g.dart';

@freezed
class BasketFullInfoResponse with _$BasketFullInfoResponse {
  const BasketFullInfoResponse._();
  factory BasketFullInfoResponse({
    String? r,
    String? e,
    String? errorMessage,
    @JsonKey(name: 'promo_description') String? promoDescription,
    List<BasketFullInfoItemResponse>? basket,
  }) = _BasketFullInfoResponse;
  factory BasketFullInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketFullInfoResponseFromJson(json);
}
