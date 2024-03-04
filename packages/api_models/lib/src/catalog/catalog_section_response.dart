import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_section_response.freezed.dart';
part 'catalog_section_response.g.dart';

@freezed
class CatalogSectionResponse with _$CatalogSectionResponse {
  const CatalogSectionResponse._();
  factory CatalogSectionResponse({
    String? n,
    String? u,
    String? g,
  }) = _CatalogSectionResponse;
  factory CatalogSectionResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogSectionResponseFromJson(json);
}
