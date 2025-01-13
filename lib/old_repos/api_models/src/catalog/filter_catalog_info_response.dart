import 'package:blind_chicken/old_repos/api_models/src/catalog/v_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_catalog_info_response.freezed.dart';
part 'filter_catalog_info_response.g.dart';

@freezed
class FilterCatalogInfoResponse with _$FilterCatalogInfoResponse {
  const FilterCatalogInfoResponse._();
  factory FilterCatalogInfoResponse({
    List<VResponse>? v,
    String? n,
    String? typeFilter,
  }) = _FilterCatalogInfoResponse;
  factory FilterCatalogInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$FilterCatalogInfoResponseFromJson(json);
}
