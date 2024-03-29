import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'catalog_search_products_request.freezed.dart';

@freezed
class CatalogSearchProductsRequest with _$CatalogSearchProductsRequest {
  const CatalogSearchProductsRequest._();
  factory CatalogSearchProductsRequest({
    String? query,
    List<FilterCatalogDataModel>? filters,
  }) = _CatalogSearchProductsRequest;
}
