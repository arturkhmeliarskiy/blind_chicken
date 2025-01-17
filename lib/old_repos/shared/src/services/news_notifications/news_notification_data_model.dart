import 'package:hive/hive.dart';

part 'news_notification_data_model.g.dart';

@HiveType(typeId: 2)
class NewsNotificationDataModel {
  NewsNotificationDataModel({
    required this.id,
    required this.typeNews,
  });

  @HiveField(0)
  String id;

  @HiveField(1)
  String typeNews;
}
