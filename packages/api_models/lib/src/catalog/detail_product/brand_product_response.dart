import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_product_response.freezed.dart';
part 'brand_product_response.g.dart';

@freezed
class BrandProductResponse with _$BrandProductResponse {
  const BrandProductResponse._();
  factory BrandProductResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'n') String? n,
    @JsonKey(name: 'u') String? u,
  }) = _BrandProductResponse;
  factory BrandProductResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandProductResponseFromJson(json);
}
