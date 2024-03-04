import 'package:hive/hive.dart';

part 'product_favourite_model.g.dart';

@HiveType(typeId: 0)
class ProductFavouriteModel {
  ProductFavouriteModel({
    required this.id,
    required this.title,
    required this.catrgory,
    required this.size,
    required this.price,
    required this.youPrice,
    required this.brend,
    required this.lensDiameter,
    required this.templeLength,
    required this.country,
    required this.images,
    required this.variants,
  });

  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String catrgory;

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
}
