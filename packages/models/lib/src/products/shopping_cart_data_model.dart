import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/src/products/product_data_model.dart';

part 'shopping_cart_data_model.freezed.dart';

@freezed
class ShoppingCartDataModel with _$ShoppingCartDataModel {
  const ShoppingCartDataModel._();
  factory ShoppingCartDataModel({
    required ProductDataModel product,
    required int count,
    required int price,
    required int id,
  }) = _ShoppingCartDataModel;
}
