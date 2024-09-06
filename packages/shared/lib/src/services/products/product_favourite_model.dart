import 'package:hive/hive.dart';

part 'product_favourite_model.g.dart';

@HiveType(typeId: 0)
class ProductFavouriteModel {
  ProductFavouriteModel({
    required this.id,
    required this.title,
    required this.category,
    required this.size,
    required this.price,
    required this.youPrice,
    required this.brend,
    required this.lensDiameter,
    required this.templeLength,
    required this.country,
    required this.images,
    required this.variants,
    required this.titleScreen,
    required this.searchQuery,
    required this.typeAddProductToShoppingCart,
    required this.identifierAddProductToShoppingCart,
    required this.sectionCategoriesPath,
    required this.productCategoriesPath,
  });

  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String category;

  @HiveField(3)
  List<String> size;

  @HiveField(4)
  int price;

  @HiveField(5)
  int youPrice;

  @HiveField(6)
  String brend;

  @HiveField(7)
  int lensDiameter;

  @HiveField(8)
  int templeLength;

  @HiveField(9)
  String country;

  @HiveField(10)
  List<String> images;

  @HiveField(11)
  List<String> variants;

  @HiveField(12)
  String titleScreen; // экран добавления в корзину

  @HiveField(13)
  String searchQuery; // поисковой запрос

  @HiveField(14)
  String typeAddProductToShoppingCart; // с помощью чего добавляется в корзину

  @HiveField(15)
  String
      identifierAddProductToShoppingCart; // идентификатор отарвителя товара в корзину (1 кнопка, 2 выпадающий список)

  @HiveField(16)
  List<String>
      sectionCategoriesPath; // категории в к оторых находится товар "Акции", "Красная цена"

  @HiveField(17)
  List<String> productCategoriesPath; // категории тоарва "Продукты", "Молочные продукты", "Йогурты"
}
