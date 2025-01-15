import 'package:freezed_annotation/freezed_annotation.dart';

part 'boutique_category_item_response.freezed.dart';
part 'boutique_category_item_response.g.dart';

@freezed
class BoutiqueCategoryItemResponse with _$BoutiqueCategoryItemResponse {
  const BoutiqueCategoryItemResponse._();
  factory BoutiqueCategoryItemResponse({
    String? title,
    List<dynamic>? listInfo,
  }) = _BoutiqueCategoryItemResponse;
  factory BoutiqueCategoryItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BoutiqueCategoryItemResponseFromJson(json);
}
