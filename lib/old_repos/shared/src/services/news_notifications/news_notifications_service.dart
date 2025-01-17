import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:blind_chicken/old_repos/shared/src/services/news_notifications/news_notification_data_model.dart';

class NewsNotificationsService {
  initNewsNotificationsHave() async {
    final applicatonDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive
      ..init(applicatonDocumentDir.path)
      ..registerAdapter(NewsNotificationDataModelAdapter());
    await Hive.openBox<NewsNotificationDataModel>('news_notifications');
  }

  void addNewsNotification(NewsNotificationDataModel newsNotification) {
    Hive.box<NewsNotificationDataModel>('news_notifications')
        .put(newsNotification.id, newsNotification);
  }

  List<NewsNotificationDataModel> listNewsNotifications() {
    final listNewsNotifications =
        Hive.box<NewsNotificationDataModel>('news_notifications').values.toList();

    return listNewsNotifications;
  }

  void deleteNewsNotification(int index) {
    Hive.box<NewsNotificationDataModel>('news_notifications').delete(index);
  }

  void putNewsNotification(int index, NewsNotificationDataModel newsNotification) {
    Hive.box<NewsNotificationDataModel>('news_notifications').put(index, newsNotification);
  }

  void deleteAllNewsNotifications() {
    Hive.box<NewsNotificationDataModel>('news_notifications').clear();
  }
}
