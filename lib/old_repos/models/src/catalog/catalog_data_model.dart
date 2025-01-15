import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'catalog_data_model.freezed.dart';

@freezed
class CatalogDataModel with _$CatalogDataModel {
  const CatalogDataModel._();
  factory CatalogDataModel({
    required int userDiscount,
    required List<CatalogBreadcrumbDataModel> breadcrumbs,
    required String h1,
    required String count,
    required SectionsDataModel sections,
    required List<SectionItemDataModel> listNext,
    required List<SectionItemDataModel> listPrev,
    required List<SectionItemDataModel> listThis,
    required String countFilter,
    required List<FilterInfoDataModel> filter,
    required List<ProductDataModel> products,
    required String r,
    required String e,
    required String errorMessage,
    required int discountFirstMobile,
  }) = _CatalogDataModel;
}
