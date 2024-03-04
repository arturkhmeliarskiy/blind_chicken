import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_catalog_products_request.freezed.dart';

@freezed
class FavouritesCatalogProductsRequest with _$FavouritesCatalogProductsRequest {
  const FavouritesCatalogProductsRequest._();
  factory FavouritesCatalogProductsRequest({
    List<String>? favourites,
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
  }) = _FavouritesCatalogProductsRequest;
}
