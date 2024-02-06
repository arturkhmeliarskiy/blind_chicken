import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_products_request.freezed.dart';

@freezed
class CatalogProductsRequest with _$CatalogProductsRequest {
  const CatalogProductsRequest._();
  factory CatalogProductsRequest({
    required int auth,
    required String tel,
    required String url,
    String? nav,
    String? sort,
    String? token,
    String? hashToken,
    String? hashTokenTel,
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
  }) = _CatalogProductsRequest;
}
