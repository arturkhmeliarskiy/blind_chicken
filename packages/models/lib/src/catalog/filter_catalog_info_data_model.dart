import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/catalog/index.dart';

part 'filter_catalog_info_data_model.freezed.dart';

@freezed
class FilterCatalogInfoDataModel with _$FilterCatalogInfoDataModel {
  const FilterCatalogInfoDataModel._();
  factory FilterCatalogInfoDataModel({
    required List<VDataModel> v,
    required String n,
  }) = _FilterCatalogInfoDataModel;
}
