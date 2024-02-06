import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_product_response.freezed.dart';
part 'catalog_product_response.g.dart';

@freezed
class CatalogProductResponse with _$CatalogProductResponse {
  const CatalogProductResponse._();
  factory CatalogProductResponse({
    String? c,
    String? f,
    String? b,
    String? n,
    String? p,
    String? pb,
    int? pc,
    int? pbc,
    int? ca,
    int? dv,
  }) = _CatalogProductResponse;
  factory CatalogProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductResponseFromJson(json);
}
