import 'package:freezed_annotation/freezed_annotation.dart';

part 'sku_product_response.freezed.dart';
part 'sku_product_response.g.dart';

@freezed
class SkuProductResponse with _$SkuProductResponse {
  const SkuProductResponse._();
  factory SkuProductResponse({
    String? id,
    String? value,
  }) = _SkuProductResponse;
  factory SkuProductResponse.fromJson(Map<String, dynamic> json) =>
      _$SkuProductResponseFromJson(json);
}
