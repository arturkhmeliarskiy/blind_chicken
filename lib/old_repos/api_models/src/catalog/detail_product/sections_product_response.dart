import 'package:blind_chicken/old_repos/api_models/src/catalog/detail_product/section_item_product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sections_product_response.freezed.dart';
part 'sections_product_response.g.dart';

@freezed
class SectionsProductResponse with _$SectionsProductResponse {
  const SectionsProductResponse._();
  factory SectionsProductResponse({
    String? name,
    List<SectionItemProductResponse>? list,
  }) = _SectionsProductResponse;
  factory SectionsProductResponse.fromJson(Map<String, dynamic> json) =>
      _$SectionsProductResponseFromJson(json);
}
