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
    String? messageId,
  }) async {
    final news = await _newsService.getOneNews(
      id: id,
      messageId: messageId,
    );
    return news.toOneNews();
  }

  Future<OneMediaInfoDataModel> getOneMedia({
    required String id,
    String? messageId,
  }) async {
    final media = await _newsService.getOneMedia(
      id: id,
      messageId: messageId,
    );
    return media.toOneMedia();
  }

  Future<OneNotificationInfoDataModel> getOneNotifcation({
    required String id,
    String? messageId,
  }) async {
    final media = await _newsService.getOneNotifcation(
      id: id,
      messageId: messageId,
    );
    return media.toOneNotification();
  }
}

extension on NewsInfoResponse {
  NewsInfoDataModel toNews() {
    return NewsInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      list: List<NewsInfoItemDataModel>.from(
        list?.map((item) {
              final videoImage = "https://slepayakurica.ru${item.videoImage ?? ''}";

              return NewsInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: item.images?.isNotEmpty ?? false
                    ? item.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
                    : [],
                video: (item.typeVideo ?? '') == 'original'
                    ? "https://slepayakurica.ru${item.video ?? ''}"
                    : item.video ?? '',
                typeVideo: item.typeVideo ?? '',
                videoImage: item.videoImage?.isNotEmpty ?? false ? videoImage : '',
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
                videoImageHeight: 0,
                videoImageWeight: 0,
              );
            }) ??
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
        list?.map((item) {
              final videoImage = "https://slepayakurica.ru${item.videoImage ?? ''}";
              return MediaInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: item.images?.isNotEmpty ?? false
                    ? item.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
                    : [],
                video: (item.typeVideo ?? '') == 'original'
                    ? "https://slepayakurica.ru${item.video ?? ''}"
                    : item.video ?? '',
                typeVideo: item.typeVideo ?? '',
                videoImage: item.videoImage?.isNotEmpty ?? false ? videoImage : '',
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
              );
            }) ??
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
        list?.map((item) {
              final videoImage = "https://slepayakurica.ru${item.videoImage ?? ''}";
              return NotificationInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: item.images?.isNotEmpty ?? false
                    ? item.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
                    : [],
                video: (item.typeVideo ?? '') == 'original'
                    ? "https://slepayakurica.ru${item.video ?? ''}"
                    : item.video ?? '',
                typeVideo: item.typeVideo ?? '',
                videoImage: item.videoImage?.isNotEmpty ?? false ? videoImage : '',
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
              );
            }) ??
            [],
      ),
      isViewed: isViewed ?? false,
    );
  }
}

extension on OneNewsInfoResponse {
  OneNewsInfoDataModel toOneNews() {
    final videoImage = "https://slepayakurica.ru${data?.videoImage ?? ''}";

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
        video: (data?.typeVideo ?? '') == 'original'
            ? "https://slepayakurica.ru${data?.video ?? ''}"
            : data?.video ?? '',
        typeVideo: data?.typeVideo ?? '',
        videoImage: data?.videoImage?.isNotEmpty ?? false ? videoImage : '',
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
        videoImageHeight: 0,
        videoImageWeight: 0,
      ),
      isViewed: isViewed ?? false,
    );
  }
}

extension on OneMediaInfoResponse {
  OneMediaInfoDataModel toOneMedia() {
    final videoImage = "https://slepayakurica.ru${data?.videoImage ?? ''}";
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
        video: (data?.typeVideo ?? '') == 'original'
            ? "https://slepayakurica.ru${data?.video ?? ''}"
            : data?.video ?? '',
        typeVideo: data?.typeVideo ?? '',
        videoImage: data?.videoImage?.isNotEmpty ?? false ? videoImage : '',
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

extension on OneNotificationInfoResponse {
  OneNotificationInfoDataModel toOneNotification() {
    final videoImage = "https://slepayakurica.ru${data?.videoImage ?? ''}";
    return OneNotificationInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      data: NotificationInfoItemDataModel(
        id: data?.id ?? '',
        title: data?.title ?? '',
        createAt: data?.createAt ?? '',
        images: data?.images?.isNotEmpty ?? false
            ? data?.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? []
            : [],
        video: (data?.typeVideo ?? '') == 'original'
            ? "https://slepayakurica.ru${data?.video ?? ''}"
            : data?.video ?? '',
        typeVideo: data?.typeVideo ?? '',
        videoImage: data?.videoImage?.isNotEmpty ?? false ? videoImage : '',
        typeMedia: data?.typeMedia ?? '',
        description: data?.description ?? '',
        titleButton: data?.titleButton ?? '',
        typePath: data?.typePath ?? '',
        path: data?.path ?? '',
        code: data?.code ?? '',
        sort: data?.sort ?? '',
        filterSelect: data?.filterSelect ?? '',
        uidStore: data?.uidStore ?? '',
        isViewed: data?.isViewed ?? false,
      ),
    );
  }
}
