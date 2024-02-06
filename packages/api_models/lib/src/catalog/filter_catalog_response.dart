import 'package:api_models/src/catalog/filter_catalog_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_catalog_response.freezed.dart';
part 'filter_catalog_response.g.dart';

@freezed
class FilterCatalogResponse with _$FilterCatalogResponse {
  const FilterCatalogResponse._();
  factory FilterCatalogResponse({
    FilterCatalogInfoResponse? ct,
    FilterCatalogInfoResponse? f2,
    FilterCatalogInfoResponse? f3,
    FilterCatalogInfoResponse? f10,
    FilterCatalogInfoResponse? f12,
    FilterCatalogInfoResponse? f13,
    FilterCatalogInfoResponse? t1,
    FilterCatalogInfoResponse? t4,
    FilterCatalogInfoResponse? t9,
    FilterCatalogInfoResponse? t21,
  }) = _FilterCatalogResponse;
  factory FilterCatalogResponse.fromJson(Map<String, dynamic> json) =>
      _$FilterCatalogResponseFromJson(json);
}
