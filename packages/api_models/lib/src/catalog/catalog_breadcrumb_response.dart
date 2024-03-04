import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_breadcrumb_response.freezed.dart';
part 'catalog_breadcrumb_response.g.dart';

@freezed
class CatalogBreadcrumbResponse with _$CatalogBreadcrumbResponse {
  const CatalogBreadcrumbResponse._();
  factory CatalogBreadcrumbResponse({
    String? name,
    String? value,
  }) = _CatalogBreadcrumbResponse;
  factory CatalogBreadcrumbResponse.fromJson(Map<String, dynamic> json) =>
      _$CatalogBreadcrumbResponseFromJson(json);
}
