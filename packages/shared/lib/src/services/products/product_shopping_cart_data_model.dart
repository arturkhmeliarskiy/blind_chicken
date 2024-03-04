import 'package:hive/hive.dart';

part 'product_shopping_cart_data_model.g.dart';

@HiveType(typeId: 1)
class ProductShoppingCartDataModel {
  ProductShoppingCartDataModel({
    required this.code,
    required this.sku,
    required this.count,
  });

  @HiveField(0)
  String code;

  @HiveField(1)
  String sku;

  @HiveField(2)
  int count;
}
