import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_info_item_response.freezed.dart';
part 'basket_info_item_response.g.dart';

@freezed
class BasketInfoItemResponse with _$BasketInfoItemResponse {
  const BasketInfoItemResponse._();
  factory BasketInfoItemResponse({
    String? code,
    String? sku,
    int? count,
    String? type,
    String? identifier,
    @JsonKey(name: "section_categories_path") List<String>? sectionCategoriesPath,
    @JsonKey(name: "product_categories_path") List<String>? productCategoriesPath,
    @JsonKey(name: "title_screen") String? titleScreen,
    @JsonKey(name: "search_query") String? searchQuery,
  }) = _BasketInfoItemResponse;
  factory BasketInfoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketInfoItemResponseFromJson(json);
}
