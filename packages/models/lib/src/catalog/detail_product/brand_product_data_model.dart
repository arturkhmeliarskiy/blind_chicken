import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_product_data_model.freezed.dart';

@freezed
class BrandProductDataModel with _$BrandProductDataModel {
  const BrandProductDataModel._();
  factory BrandProductDataModel({
    required String id,
    required String n,
    required String u,
  }) = _BrandProductDataModel;
}
