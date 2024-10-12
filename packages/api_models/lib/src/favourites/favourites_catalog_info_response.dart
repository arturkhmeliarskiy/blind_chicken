import 'package:api_models/api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_catalog_info_response.freezed.dart';
part 'favourites_catalog_info_response.g.dart';

@freezed
class FavouritesCatalogInfoResponse with _$FavouritesCatalogInfoResponse {
  const FavouritesCatalogInfoResponse._();
  factory FavouritesCatalogInfoResponse({
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
  }) = _FavouritesCatalogInfoResponse;
  factory FavouritesCatalogInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$FavouritesCatalogInfoResponseFromJson(json);
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
