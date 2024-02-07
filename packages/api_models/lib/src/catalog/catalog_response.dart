import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:api_models/src/catalog/breadcrumbs_response.dart';
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
    @JsonKey(
      name: 'sections',
      fromJson: _convertSections,
    )
    SectionsResponse? sections,
    String? countFilter,
    @JsonKey(
      name: 'filter',
      fromJson: _convertFilter,
    )
    List<FilterCatalogInfoResponse>? filter,
    List<CatalogProductResponse>? products,
    String? r,
    String? e,
  }) = _CatalogResponse;
  factory CatalogResponse.fromJson(Map<String, dynamic> json) => _$CatalogResponseFromJson(json);
}

SectionsResponse _convertSections(dynamic json) {
  Map value = Map.of(json);
  SectionsResponse sections = SectionsResponse.fromJson(json).copyWith(
    listNext: (value['next'] as Map).keys.toList(),
    listPrev: (value['prev'] as Map).keys.toList(),
  );
  return sections;
}

List<FilterCatalogInfoResponse> _convertFilter(dynamic json) {
  List<FilterCatalogInfoResponse> listFilters = [];
  List<dynamic> keysList = Map.of(json).keys.toList();
  Map value = Map.of(json);
  for (int i = 0; i < keysList.length; i++) {
    listFilters.add(
      FilterCatalogInfoResponse.fromJson(
        value[keysList[i]],
      ).copyWith(
        typeFilter: keysList[i],
      ),
    );
  }
  return listFilters;
}
