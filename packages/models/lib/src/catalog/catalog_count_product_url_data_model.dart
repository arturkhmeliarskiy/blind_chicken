import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_count_product_url_data_model.freezed.dart';

@freezed
class CatalogCountProductUrlDataModel with _$CatalogCountProductUrlDataModel {
  const CatalogCountProductUrlDataModel._();
  factory CatalogCountProductUrlDataModel({
    required String r,
    required String e,
    required int count,
    required String errorMessage,
  }) = _CatalogCountProductUrlDataModel;
}
