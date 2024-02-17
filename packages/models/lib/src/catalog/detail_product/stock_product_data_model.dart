import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_product_data_model.freezed.dart';

@freezed
class StockProductDataModel with _$StockProductDataModel {
  const StockProductDataModel._();
  factory StockProductDataModel({
    required String id,
    required List<String> list,
  }) = _StockProductDataModel;
}
