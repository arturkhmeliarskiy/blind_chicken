import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_item_product_response.freezed.dart';
part 'section_item_product_response.g.dart';

@freezed
class SectionItemProductResponse with _$SectionItemProductResponse {
  const SectionItemProductResponse._();
  factory SectionItemProductResponse({
    String? n,
    String? u,
  }) = _SectionItemProductResponse;
  factory SectionItemProductResponse.fromJson(Map<String, dynamic> json) =>
      _$SectionItemProductResponseFromJson(json);
}
