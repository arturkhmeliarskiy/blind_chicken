import 'package:api_models/api_models.dart';
import 'package:api_models/src/catalog/catalog_section_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'catalog_product_response.dart';

part 'catalog_search_response.freezed.dart';
part 'catalog_search_response.g.dart';

@freezed
class CatalogSearchResponse with _$CatalogSearchResponse {
  const CatalogSearchResponse._();
  factory CatalogSearchResponse({
    @JsonKey(name: 'products_count') int? productsCount,
    @JsonKey(name: 'sections_count') int? sectionsCount,
    List<CatalogProductResponse>? products,
    List<CatalogSectionResponse>? sections,
    String? errorMessage,
  }) = _CatalogSearchResponse;
  factory CatalogSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogSearchResponseFromJson(json);
}
