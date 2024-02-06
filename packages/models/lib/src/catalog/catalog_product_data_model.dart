import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_product_data_model.freezed.dart';

@freezed
class CatalogProductDataModel with _$CatalogProductDataModel {
  const CatalogProductDataModel._();
  factory CatalogProductDataModel({
    required String c,
    required String f,
    required String b,
    required String n,
    required String p,
    required String pb,
    required int pc,
    required int pbc,
    required int ca,
    required int dv,
  }) = _CatalogProductDataModel;
}
