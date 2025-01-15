import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_search_info_response.freezed.dart';
part 'catalog_search_info_response.g.dart';

@freezed
class CatalogSearchInfoResponse with _$CatalogSearchInfoResponse {
  const CatalogSearchInfoResponse._();
  factory CatalogSearchInfoResponse({
    @JsonKey(name: 'user_discount') String? userDiscount,
    String? h1,
    String? count,
    @JsonKey(name: 'count_filter') String? countFilter,
    @JsonKey(
      name: 'filter',
      fromJson: _convertFilter,
    )
    List<FilterCatalogInfoResponse>? filter,
    List<CatalogProductResponse>? products,
    String? r,
    String? e,
    String? errorMessage,
  }) = _CatalogSearchInfoResponse;
  factory CatalogSearchInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogSearchInfoResponseFromJson(json);
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
