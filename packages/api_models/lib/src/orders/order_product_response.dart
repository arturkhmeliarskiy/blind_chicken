import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_product_response.freezed.dart';
part 'order_product_response.g.dart';

@freezed
class OrderProductResponse with _$OrderProductResponse {
  const OrderProductResponse._();
  factory OrderProductResponse({
    String? code,
    String? img,
    String? price,
    String? count,
    @JsonKey(name: 'promocode_info') String? promocodeInfo,
    String? brand,
    String? name,
    String? sku,
    String? type,
    String? identifier,
    @JsonKey(name: "section_categories_path") List<String>? sectionCategoriesPath,
    @JsonKey(name: "product_categories_path") List<String>? productCategoriesPath,
    @JsonKey(name: "title_screen") String? titleScreen,
    @JsonKey(name: "search_query") String? searchQuery,
  }) = _OrderProductResponse;
  factory OrderProductResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderProductResponseFromJson(json);
}
