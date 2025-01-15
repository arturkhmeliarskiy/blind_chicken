import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_product_data_model.freezed.dart';

@freezed
class OrderProductDataModel with _$OrderProductDataModel {
  const OrderProductDataModel._();
  factory OrderProductDataModel({
    required String code,
    required String img,
    required String price,
    required String count,
    required String promocodeInfo,
    required String brand,
    required String name,
    required String sku,
  }) = _OrderProductDataModel;
}
