import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_catalog_data_model.freezed.dart';

@freezed
class FilterCatalogDataModel with _$FilterCatalogDataModel {
  const FilterCatalogDataModel._();
  factory FilterCatalogDataModel({
    required String key,
    required String value,
  }) = _FilterCatalogDataModel;
}
