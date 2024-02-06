import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'catalog_data_model.freezed.dart';

@freezed
class CatalogDataModel with _$CatalogDataModel {
  const CatalogDataModel._();
  factory CatalogDataModel({
    required String userDiscount,
    required BreadcrumbsDataModel breadcrumbs,
    required String h1,
    required String count,
    required SectionsDataModel sections,
    required String countFilter,
    required FilterCatalogDataModel filter,
    required List<ProductDataModel> products,
    required String r,
    required String e,
  }) = _CatalogDataModel;
}
