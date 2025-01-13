import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_count_product_url_response.freezed.dart';
part 'catalog_count_product_url_response.g.dart';

@freezed
class CatalogCountProductUrlResponse with _$CatalogCountProductUrlResponse {
  const CatalogCountProductUrlResponse._();
  factory CatalogCountProductUrlResponse({
    String? r,
    String? e,
    int? count,
    String? errorMessage,
  }) = _CatalogCountProductUrlResponse;
  factory CatalogCountProductUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogCountProductUrlResponseFromJson(json);
}
