import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_brand_response.freezed.dart';
part 'basket_brand_response.g.dart';

@freezed
class BasketBrandResponse with _$BasketBrandResponse {
  const BasketBrandResponse._();
  factory BasketBrandResponse({
    String? id,
    String? n,
    String? u,
  }) = _BasketBrandResponse;
  factory BasketBrandResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketBrandResponseFromJson(json);
}
