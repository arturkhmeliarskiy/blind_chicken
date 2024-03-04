import 'package:api_models/src/boutiques/boutique_category_item_response.dart';
import 'package:api_models/src/boutiques/boutique_info_data_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_info_detail_response.freezed.dart';
part 'boutique_info_detail_response.g.dart';

@freezed
class BoutiqueInfoDetailResponse with _$BoutiqueInfoDetailResponse {
  const BoutiqueInfoDetailResponse._();
  factory BoutiqueInfoDetailResponse({
    String? r,
    String? e,
    @JsonKey(
      name: 'category',
      fromJson: _convertCategory,
    )
    List<BoutiqueCategoryItemResponse>? category,
  }) = _BoutiqueInfoDetailResponse;
  factory BoutiqueInfoDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueInfoDetailResponseFromJson(json);
}

List<BoutiqueCategoryItemResponse>? _convertCategory(dynamic json) {
  List<BoutiqueCategoryItemResponse> listFilters = [];

  if (json != null) {
    List<dynamic> keysList = Map.of(json).keys.toList();
    Map value = Map.of(json);
    for (int i = 0; i < keysList.length; i++) {
      listFilters.add(
        BoutiqueCategoryItemResponse(
          title: keysList[i],
          listInfo: value[keysList[i]],
        ),
      );
    }
  }

  return listFilters;
}
