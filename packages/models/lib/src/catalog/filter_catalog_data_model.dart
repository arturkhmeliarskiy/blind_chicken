import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'filter_catalog_data_model.freezed.dart';

@freezed
class FilterCatalogDataModel with _$FilterCatalogDataModel {
  const FilterCatalogDataModel._();
  factory FilterCatalogDataModel({
    required FilterInfoDataModel ct,
    required FilterInfoDataModel f2,
    required FilterInfoDataModel f3,
    required FilterInfoDataModel f10,
    required FilterInfoDataModel f12,
    required FilterInfoDataModel f13,
    required FilterInfoDataModel t1,
    required FilterInfoDataModel t4,
    required FilterInfoDataModel t9,
    required FilterInfoDataModel t21,
  }) = _FilterCatalogDataModel;
}
