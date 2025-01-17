import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_category_response.freezed.dart';
part 'basket_category_response.g.dart';

@freezed
class BasketCategoryResponse with _$BasketCategoryResponse {
  const BasketCategoryResponse._();
  factory BasketCategoryResponse({
    String? id,
    String? n,
    @JsonKey(name: 'ch_n') String? chN,
  }) = _BasketCategoryResponse;
  factory BasketCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketCategoryResponseFromJson(json);
}
