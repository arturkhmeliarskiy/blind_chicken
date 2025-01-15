import 'package:freezed_annotation/freezed_annotation.dart';

part 'sku_product_data_model.freezed.dart';

@freezed
class SkuProductDataModel with _$SkuProductDataModel {
  const SkuProductDataModel._();
  factory SkuProductDataModel({
    required String id,
    required String value,
  }) = _SkuProductDataModel;
}
