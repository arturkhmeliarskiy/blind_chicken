import 'package:json_annotation/json_annotation.dart';

part 'basket_info_request.g.dart';

@JsonSerializable()
class BasketInfoRequest {
  final String code;
  final String sku;
  final int count;
  final String type;
  final String identifier;
  @JsonKey(name: "section_categories_path")
  List<String> sectionCategoriesPath;
  @JsonKey(name: "product_categories_path")
  List<String> productCategoriesPath;
  @JsonKey(name: "title_screen")
  String titleScreen;
  @JsonKey(name: "search_query")
  String searchQuery;

  BasketInfoRequest({
    required this.code,
    required this.sku,
    required this.count,
    required this.type,
    required this.identifier,
    required this.sectionCategoriesPath,
    required this.productCategoriesPath,
    required this.titleScreen,
    required this.searchQuery,
  });

  factory BasketInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$BasketInfoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BasketInfoRequestToJson(this);
}
