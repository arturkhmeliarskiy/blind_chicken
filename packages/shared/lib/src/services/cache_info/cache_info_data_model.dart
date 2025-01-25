import 'package:hive/hive.dart';

part 'cache_info_data_model.g.dart';

@HiveType(typeId: 3)
class CacheInfoDataModel {
  CacheInfoDataModel({
    required this.screen,
    required this.dateTime,
    required this.content,
    required this.images,
    required this.info,
  });

  @HiveField(0)
  String screen;

  @HiveField(1)
  String dateTime;

  @HiveField(2)
  List<String> content;

  @HiveField(3)
  List<String> images;

  @HiveField(4)
  List<Map<String, dynamic>> info;
}
