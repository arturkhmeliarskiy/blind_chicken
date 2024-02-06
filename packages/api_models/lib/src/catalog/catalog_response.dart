import 'package:api_models/src/catalog/breadcrumbs_response.dart';
import 'package:api_models/src/catalog/filter_catalog_response.dart';
import 'package:api_models/src/catalog/sections_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'catalog_product_response.dart';

part 'catalog_response.freezed.dart';
part 'catalog_response.g.dart';

@freezed
class CatalogResponse with _$CatalogResponse {
  const CatalogResponse._();
  factory CatalogResponse({
    String? userDiscount,
    BreadcrumbsResponse? breadcrumbs,
    String? h1,
    String? count,
    SectionsResponse? sections,
    String? countFilter,
    FilterCatalogResponse? filter,
    List<CatalogProductResponse>? products,
    String? r,
    String? e,
  }) = _CatalogResponse;
  factory CatalogResponse.fromJson(Map<String, dynamic> json) => _$CatalogResponseFromJson(json);
}
