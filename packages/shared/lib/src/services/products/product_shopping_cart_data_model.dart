import 'package:hive/hive.dart';

part 'product_shopping_cart_data_model.g.dart';

@HiveType(typeId: 1)
class ProductShoppingCartDataModel {
  ProductShoppingCartDataModel({
    required this.code,
    required this.sku,
    required this.count,
    required this.titleScreen,
    required this.searchQuery,
    required this.typeAddProductToShoppingCart,
    required this.identifierAddProductToShoppingCart,
    required this.sectionCategoriesPath,
    required this.productCategoriesPath,
  });

  @HiveField(0)
  String code;

  @HiveField(1)
  String sku;

  @HiveField(2)
  int count;

  @HiveField(3)
  String titleScreen; // экран добавления в корзину

  @HiveField(4)
  String searchQuery; // поисковой запрос

  @HiveField(5)
  String typeAddProductToShoppingCart; // с помощью чего добавляется в корзину

  @HiveField(6)
  String
      identifierAddProductToShoppingCart; // идентификатор отарвителя товара в корзину (1 кнопка, 2 выпадающий список)

  @HiveField(7)
  List<String>
      sectionCategoriesPath; // категории в к оторых находится товар "Акции", "Красная цена"

  @HiveField(8)
  List<String> productCategoriesPath; // категории тоарва "Продукты", "Молочные продукты", "Йогурты"
}
