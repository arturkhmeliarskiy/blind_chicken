import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_product_response.freezed.dart';
part 'stock_product_response.g.dart';

@freezed
class StockProductResponse with _$StockProductResponse {
  const StockProductResponse._();
  factory StockProductResponse({
    String? id,
    List<String>? list,
  }) = _StockProductResponse;
  factory StockProductResponse.fromJson(Map<String, dynamic> json) =>
      _$StockProductResponseFromJson(json);
}
