import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_search_products_request.freezed.dart';

@freezed
class CatalogSearchProductsRequest with _$CatalogSearchProductsRequest {
  const CatalogSearchProductsRequest._();
  factory CatalogSearchProductsRequest({
    String? query,
    String? nav,
    String? ct,
    String? t26,
    String? f2,
    String? s61,
    String? t1,
    String? f3,
    String? f10,
    String? f12,
    String? f13,
    String? t4,
    String? t9,
    String? t21,
  }) = _CatalogSearchProductsRequest;
}
