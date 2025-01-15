import 'package:hive/hive.dart';

part 'cache_info_item_data_model.g.dart';

@HiveType(typeId: 4)
class CacheInfoItemDataModel {
  CacheInfoItemDataModel({
    required this.id,
    required this.title,
    required this.mobileImage,
    required this.tabletImage,
    required this.url,
  });

  @HiveField(0)
  String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String mobileImage;

  @HiveField(3)
  String tabletImage;

  @HiveField(4)
  String url;
}
