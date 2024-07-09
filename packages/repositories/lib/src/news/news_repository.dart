import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class NewsRepository {
  final NewsService _newsService;

  NewsRepository(this._newsService);

  Future<NewsInfoDataModel> getNews() async {
    final news = await _newsService.getNews();
    return news.toNews();
  }

  Future<MediaInfoDataModel> getMedia() async {
    final media = await _newsService.getMedia();
    return media.toMedia();
  }

  Future<NotificationInfoDataModel> getNotifications() async {
    final media = await _newsService.getNotifications();
    return media.toNotifications();
  }
}

extension on NewsInfoResponse {
  NewsInfoDataModel toNews() {
    return NewsInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      list: List<NewsInfoItemDataModel>.from(
        list?.map(
              (item) => NewsInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: item.images ?? [],
                video: item.video ?? '',
                announcement: item.announcement ?? '',
                typeMedia: item.typeMedia ?? '',
                description: item.description ?? '',
                titleButton: item.titleButton ?? '',
                typePath: item.typePath ?? '',
                path: item.path ?? '',
                code: item.code ?? '',
                sort: item.sort ?? '',
                filterSelect: item.filterSelect ?? '',
                uidStore: item.uidStore ?? '',
                numberViews: item.numberViews ?? 0,
                isViewed: item.isViewed ?? false,
              ),
            ) ??
            [],
      ),
      isViewed: isViewed ?? false,
    );
  }
}

extension on MediaInfoResponse {
  MediaInfoDataModel toMedia() {
    return MediaInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      list: List<MediaInfoItemDataModel>.from(
        list?.map(
              (item) => MediaInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: item.images ?? [],
                video: item.video ?? '',
                typeMedia: item.typeMedia ?? '',
                description: item.description ?? '',
                titleButton: item.titleButton ?? '',
                typePath: item.typePath ?? '',
                path: item.path ?? '',
                code: item.code ?? '',
                sort: item.sort ?? '',
                filterSelect: item.filterSelect ?? '',
                uidStore: item.uidStore ?? '',
                numberViews: item.numberViews ?? 0,
                isViewed: item.isViewed ?? false,
              ),
            ) ??
            [],
      ),
      isViewed: isViewed ?? false,
    );
  }
}

extension on NotificationInfoResponse {
  NotificationInfoDataModel toNotifications() {
    return NotificationInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      list: List<NotificationInfoItemDataModel>.from(
        list?.map(
              (item) => NotificationInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: item.images ?? [],
                video: item.video ?? '',
                typeMedia: item.typeMedia ?? '',
                description: item.description ?? '',
                titleButton: item.titleButton ?? '',
                typePath: item.typePath ?? '',
                path: item.path ?? '',
                code: item.code ?? '',
                sort: item.sort ?? '',
                filterSelect: item.filterSelect ?? '',
                uidStore: item.uidStore ?? '',
                isViewed: item.isViewed ?? false,
              ),
            ) ??
            [],
      ),
      isViewed: isViewed ?? false,
    );
  }
}
