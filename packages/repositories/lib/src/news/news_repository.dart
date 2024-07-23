import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class NewsRepository {
  final NewsService _newsService;

  NewsRepository(this._newsService);

  Future<NewsInfoDataModel> getNews({
    required int page,
  }) async {
    final news = await _newsService.getNews(page: page);
    return news.toNews();
  }

  Future<MediaInfoDataModel> getMedia({
    required int page,
  }) async {
    final media = await _newsService.getMedia(page: page);
    return media.toMedia();
  }

  Future<NotificationInfoDataModel> getNotifications({
    required int page,
  }) async {
    final media = await _newsService.getNotifications(page: page);
    return media.toNotifications();
  }

  Future<OneNewsInfoDataModel> getOneNews({
    required String id,
  }) async {
    final news = await _newsService.getOneNews(id: id);
    return news.toOneNews();
  }

  Future<OneMediaInfoDataModel> getOneMedia({
    required String id,
  }) async {
    final media = await _newsService.getOneMedia(id: id);
    return media.toOneMedia();
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
                images: item.images?.isNotEmpty ?? false
                    ? item.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
                    : [],
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
                images: item.images?.isNotEmpty ?? false
                    ? item.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
                    : [],
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
                images: item.images?.isNotEmpty ?? false
                    ? item.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
                    : [],
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

extension on OneNewsInfoResponse {
  OneNewsInfoDataModel toOneNews() {
    return OneNewsInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      data: NewsInfoItemDataModel(
        id: data?.id ?? '',
        title: data?.title ?? '',
        createAt: data?.createAt ?? '',
        images: data?.images?.isNotEmpty ?? false
            ? data?.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
            : [],
        video: data?.video ?? '',
        announcement: data?.announcement ?? '',
        typeMedia: data?.typeMedia ?? '',
        description: data?.description ?? '',
        titleButton: data?.titleButton ?? '',
        typePath: data?.typePath ?? '',
        path: data?.path ?? '',
        code: data?.code ?? '',
        sort: data?.sort ?? '',
        filterSelect: data?.filterSelect ?? '',
        uidStore: data?.uidStore ?? '',
        numberViews: data?.numberViews ?? 0,
        isViewed: data?.isViewed ?? false,
      ),
      isViewed: isViewed ?? false,
    );
  }
}

extension on OneMediaInfoResponse {
  OneMediaInfoDataModel toOneMedia() {
    return OneMediaInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      data: MediaInfoItemDataModel(
        id: data?.id ?? '',
        title: data?.title ?? '',
        createAt: data?.createAt ?? '',
        images: data?.images?.isNotEmpty ?? false
            ? data?.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
            : [],
        video: data?.video ?? '',
        typeMedia: data?.typeMedia ?? '',
        description: data?.description ?? '',
        titleButton: data?.titleButton ?? '',
        typePath: data?.typePath ?? '',
        path: data?.path ?? '',
        code: data?.code ?? '',
        sort: data?.sort ?? '',
        filterSelect: data?.filterSelect ?? '',
        uidStore: data?.uidStore ?? '',
        numberViews: data?.numberViews ?? 0,
        isViewed: data?.isViewed ?? false,
      ),
      isViewed: isViewed ?? false,
    );
  }
}
