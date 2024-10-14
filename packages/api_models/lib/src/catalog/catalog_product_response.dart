import 'package:api_models/api_models.dart';
import 'package:api_models/src/catalog/catalog_size_product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_product_response.freezed.dart';
part 'catalog_product_response.g.dart';

@freezed
class CatalogProductResponse with _$CatalogProductResponse {
  const CatalogProductResponse._();
  factory CatalogProductResponse({
    DetailProductVideoResponse? v,
    String? c,
    String? f,
    List<String>? sl,
    String? b,
    String? n,
    String? p,
    String? pb,
    int? pc,
    int? pbc,
    int? ca,
    int? dv,
    String? promo,
    @JsonKey(name: 'promo_value') int? promoValue,
    List<CatalogSizeProductResponse>? sz,
  }) = _CatalogProductResponse;
  factory CatalogProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductResponseFromJson(json);
}
