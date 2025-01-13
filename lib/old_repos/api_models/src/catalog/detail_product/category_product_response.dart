import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_response.freezed.dart';
part 'category_product_response.g.dart';

@freezed
class CategoryProductResponse with _$CategoryProductResponse {
  const CategoryProductResponse._();
  factory CategoryProductResponse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'n') String? n,
    @JsonKey(name: 'ch_n') String? u,
  }) = _CategoryProductResponse;
  factory CategoryProductResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductResponseFromJson(json);
}
