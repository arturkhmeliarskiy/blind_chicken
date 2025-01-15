import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'favourites_catalog_products_request.freezed.dart';

@freezed
class FavouritesCatalogProductsRequest with _$FavouritesCatalogProductsRequest {
  const FavouritesCatalogProductsRequest._();
  factory FavouritesCatalogProductsRequest({
    List<String>? favourites,
    List<FilterCatalogDataModel>? filters,
  }) = _FavouritesCatalogProductsRequest;
}
