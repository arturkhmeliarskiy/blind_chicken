import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'catalog_products_request.freezed.dart';

@freezed
class CatalogProductsRequest with _$CatalogProductsRequest {
  const CatalogProductsRequest._();
  factory CatalogProductsRequest({
    List<FilterCatalogDataModel>? filters,
    String? url,
    String? sort,
  }) = _CatalogProductsRequest;
}
