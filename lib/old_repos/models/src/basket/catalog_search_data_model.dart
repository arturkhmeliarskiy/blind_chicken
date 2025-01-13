import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'catalog_search_data_model.freezed.dart';

@freezed
class CatalogSearchDataModel with _$CatalogSearchDataModel {
  const CatalogSearchDataModel._();
  factory CatalogSearchDataModel({
    required int productsCount,
    required int sectionsCount,
    required List<ProductDataModel> products,
    required List<CatalogSectionDataModel> sections,
    required String errorMessage,
  }) = _CatalogSearchDataModel;
}
