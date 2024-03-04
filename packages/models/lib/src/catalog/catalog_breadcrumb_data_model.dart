import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_breadcrumb_data_model.freezed.dart';

@freezed
class CatalogBreadcrumbDataModel with _$CatalogBreadcrumbDataModel {
  const CatalogBreadcrumbDataModel._();
  factory CatalogBreadcrumbDataModel({
    required String name,
    required String value,
  }) = _CatalogBreadcrumbDataModel;
}
