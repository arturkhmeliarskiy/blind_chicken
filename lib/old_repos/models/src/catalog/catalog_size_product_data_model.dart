import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_size_product_data_model.freezed.dart';

@freezed
class CatalogSizeProductDataModel with _$CatalogSizeProductDataModel {
  const CatalogSizeProductDataModel._();
  factory CatalogSizeProductDataModel({
    required String id,
    required String name,
  }) = _CatalogSizeProductDataModel;
}
