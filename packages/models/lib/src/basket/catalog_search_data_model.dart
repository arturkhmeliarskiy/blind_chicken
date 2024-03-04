import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'catalog_search_data_model.freezed.dart';

@freezed
class CatalogSearchDataModel with _$CatalogSearchDataModel {
  const CatalogSearchDataModel._();
  factory CatalogSearchDataModel({
    required int productsCount,
    required int sectionsCount,
    required List<ProductDataModel> products,
    required List<CatalogSectionDataModel> sections,
  }) = _CatalogSearchDataModel;
}
