import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'catalog_search_info_data_model.freezed.dart';

@freezed
class CatalogSearchInfoDataModel with _$CatalogSearchInfoDataModel {
  const CatalogSearchInfoDataModel._();
  factory CatalogSearchInfoDataModel({
    required int userDiscount,
    required String h1,
    required String count,
    required String countFilter,
    required List<FilterInfoDataModel> filter,
    required List<ProductDataModel> products,
    required String r,
    required String e,
    required String errorMessage,
  }) = _CatalogSearchInfoDataModel;
}
