import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_size_product_response.freezed.dart';
part 'catalog_size_product_response.g.dart';

@freezed
class CatalogSizeProductResponse with _$CatalogSizeProductResponse {
  const CatalogSizeProductResponse._();
  factory CatalogSizeProductResponse({
    String? id,
    String? name,
  }) = _CatalogSizeProductResponse;
  factory CatalogSizeProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogSizeProductResponseFromJson(json);
}
