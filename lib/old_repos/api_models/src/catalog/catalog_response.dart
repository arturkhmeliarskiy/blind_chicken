import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/catalog_breadcrumb_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/catalog/section_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_response.freezed.dart';
part 'catalog_response.g.dart';

@freezed
class CatalogResponse with _$CatalogResponse {
  const CatalogResponse._();
  factory CatalogResponse({
    @JsonKey(
      name: 'user_discount',
    )
    String? userDiscount,
    @JsonKey(
      name: 'breadcrumbs',
      fromJson: _convertBreadcrumbs,
    )
    List<CatalogBreadcrumbResponse>? breadcrumbs,
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
    String? errorMessage,
    @JsonKey(name: 'discount_first_mobile') int? discountFirstMobile,
  }) = _CatalogResponse;
  factory CatalogResponse.fromJson(Map<String, dynamic> json) => _$CatalogResponseFromJson(json);
}

List<SectionItemResponse> convertSections(
  Map values,
) {
  List<SectionItemResponse> list = [];
  List<dynamic> keysList = values.keys.toList();
  for (int i = 0; i < keysList.length; i++) {
    list.add(
      SectionItemResponse(
        name: keysList[i],
        value: values[keysList[i]],
      ),
    );
  }
  return list;
}

SectionsResponse? _convertSections(dynamic json) {
  SectionsResponse? sections;
  if (json != null) {
    Map value = Map.of(json);

    sections = SectionsResponse.fromJson(json).copyWith(
      listNext: value['next'] is Map ? convertSections((value['next'] as Map)) : [],
      listPrev: value['prev'] is Map ? convertSections((value['prev'] as Map)) : [],
      listThis: value['this'] is Map ? convertSections((value['this'] as Map)) : [],
    );
  }

  return sections;
}

List<FilterCatalogInfoResponse>? _convertFilter(dynamic json) {
  List<FilterCatalogInfoResponse> listFilters = [];

  if (json != null) {
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
  }

  return listFilters;
}

List<CatalogBreadcrumbResponse>? _convertBreadcrumbs(dynamic json) {
  List<CatalogBreadcrumbResponse> listBreadcrumbs = [];

  if (json != null) {
    List<dynamic> keysList = Map.of(json).keys.toList();
    Map value = Map.of(json);
    for (int i = 0; i < keysList.length; i++) {
      listBreadcrumbs.add(
        CatalogBreadcrumbResponse(
          name: keysList[i],
          value: value[keysList[i]],
        ),
      );
    }
  }

  return listBreadcrumbs;
}
