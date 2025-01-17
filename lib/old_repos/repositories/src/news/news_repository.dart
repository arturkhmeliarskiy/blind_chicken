import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/services/services.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

class NewsRepository {
  final NewsService _newsService;
  final NewsNotificationsService _newsNotificationsService;
  final SharedPreferencesService _sharedPreferencesService;

  NewsRepository(
    this._newsService,
    this._newsNotificationsService,
    this._sharedPreferencesService,
  );

  //news notifications

  List<NewsNotificationInfoDataModel> getNewsNotifications() {
    final listnewsNotifications = _newsNotificationsService.listNewsNotifications();
    return listnewsNotifications.toNewsNotifications(listnewsNotifications);
  }

  void addNewsNotification(NewsNotificationInfoDataModel news) {
    _newsNotificationsService.addNewsNotification(news.toNewsNotification());
  }

  void deleteFavouritesProduct(int index) {
    _newsNotificationsService.deleteNewsNotification(index);
  }

  void deleteAllFavouritesProducts() {
    _newsNotificationsService.deleteAllNewsNotifications();
  }

  //favourites end

  Future<NewsInfoDataModel> getNews({
    required int page,
  }) async {
    final news = await _newsService.getNews(page: page);
    String dateReceiptNewNews = _sharedPreferencesService.getString(
          key: SharedPrefKeys.dateReceiptNewNews,
        ) ??
        '';
    final listnewsNotifications = getNewsNotifications();
    return news.toNews(dateReceiptNewNews, listnewsNotifications);
  }

  Future<MediaInfoDataModel> getMedia({
    required int page,
  }) async {
    final media = await _newsService.getMedia(page: page);
    String dateReceiptNewNews = _sharedPreferencesService.getString(
          key: SharedPrefKeys.dateReceiptNewNews,
        ) ??
        '';
    final listnewsNotifications = getNewsNotifications();
    return media.toMedia(dateReceiptNewNews, listnewsNotifications);
  }

  Future<NotificationInfoDataModel> getNotifications({
    required int page,
  }) async {
    final media = await _newsService.getNotifications(page: page);
    String dateReceiptNewNews = _sharedPreferencesService.getString(
          key: SharedPrefKeys.dateReceiptNewNews,
        ) ??
        '';
    final listnewsNotifications = getNewsNotifications();
    return media.toNotifications(dateReceiptNewNews, listnewsNotifications);
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

  Future<BadgeOperationInfoDataModel> getNumberUnreaNews() async {
    return BadgeOperationInfoDataModel(r: '', e: '', errorMessage: '', news: 0, media: 0, notice: 0, total: 0);
    //final news = await _newsService.getNumberUnreaNews();
    //return news.toNumberUnreaNews();
  }

  Future<BadgeOperationInfoDataModel> postReadNews({
    required String idRead,
    required String idTypeContent,
  }) async {
    final news = await _newsService.postReadNews(
      idRead: idRead,
      idTypeContent: idTypeContent,
    );
    return news.toNumberUnreaNews();
  }
}

extension on NewsInfoResponse {
  NewsInfoDataModel toNews(
    String dateReceiptNewNews,
    List<NewsNotificationInfoDataModel> listnewsNotifications,
  ) {
    return NewsInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      list: List<NewsInfoItemDataModel>.from(
        list?.map((item) {
              final isViewed = listnewsNotifications
                  .where(
                    (element) => element.id == (item.id ?? '') && element.typeNews == 'news',
                  )
                  .isEmpty;
              final videoImage = "https://slepayakurica.ru${item.videoImage ?? ''}";
              List<String> images = item.images?.map((item) => "https://slepayakurica.ru$item").toList() ?? [];
              List<String> videos = item.videos?.map((item) => "https://slepayakurica.ru$item").toList() ?? [];

              return NewsInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: images.isNotEmpty ? images : [],
                videos: videos.isNotEmpty ? videos : [],
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
                isViewed: DateTime.parse(item.createAt ?? '').isAfter(
                      DateTime.parse(dateReceiptNewNews),
                    ) &&
                    isViewed,
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
  MediaInfoDataModel toMedia(
    String dateReceiptNewNews,
    List<NewsNotificationInfoDataModel> listnewsNotifications,
  ) {
    return MediaInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      list: List<MediaInfoItemDataModel>.from(
        list?.map((item) {
              final isViewed = listnewsNotifications
                  .where(
                    (element) => element.id == (item.id ?? '') && element.typeNews == 'media',
                  )
                  .isEmpty;
              final videoImage = "https://slepayakurica.ru${item.videoImage ?? ''}";
              List<String> images = item.images
                      ?.map(
                        (item) => "https://slepayakurica.ru$item",
                      )
                      .toList() ??
                  [];

              return MediaInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: images.isNotEmpty ? images : [],
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
                isViewed: DateTime.parse(item.createAt ?? '').isAfter(
                      DateTime.parse(dateReceiptNewNews),
                    ) &&
                    isViewed,
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

extension on NotificationInfoResponse {
  NotificationInfoDataModel toNotifications(
    String dateReceiptNewNews,
    List<NewsNotificationInfoDataModel> listnewsNotifications,
  ) {
    return NotificationInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      list: List<NotificationInfoItemDataModel>.from(
        list?.map((item) {
              final isViewed = listnewsNotifications
                  .where(
                    (element) => element.id == (item.id ?? '') && element.typeNews == 'notice',
                  )
                  .isEmpty;
              final videoImage = "https://slepayakurica.ru${item.videoImage ?? ''}";
              List<String> images = item.images
                      ?.map(
                        (item) => "https://slepayakurica.ru$item",
                      )
                      .toList() ??
                  [];
              return NotificationInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                createAt: item.createAt ?? '',
                images: images.isNotEmpty ? images : [],
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
                isViewed: DateTime.parse(item.createAt ?? '').isAfter(
                      DateTime.parse(dateReceiptNewNews),
                    ) &&
                    isViewed,
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

extension on OneNewsInfoResponse {
  OneNewsInfoDataModel toOneNews() {
    final videoImage = "https://slepayakurica.ru${data?.videoImage ?? ''}";
    List<String> images = data?.images
            ?.map(
              (item) => "https://slepayakurica.ru$item",
            )
            .toList() ??
        [];
    List<String> videos = data?.videos?.map((item) => "https://slepayakurica.ru$item").toList() ?? [];

    return OneNewsInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      data: NewsInfoItemDataModel(
        id: data?.id ?? '',
        title: data?.title ?? '',
        createAt: data?.createAt ?? '',
        images: images.isNotEmpty ? images : [],
        videos: videos.isNotEmpty ? images : [],
        video:
            (data?.typeVideo ?? '') == 'original' ? "https://slepayakurica.ru${data?.video ?? ''}" : data?.video ?? '',
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
    List<String> images = data?.images
            ?.map(
              (item) => "https://slepayakurica.ru$item",
            )
            .toList() ??
        [];
    return OneMediaInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      data: MediaInfoItemDataModel(
        id: data?.id ?? '',
        title: data?.title ?? '',
        createAt: data?.createAt ?? '',
        images: images.isNotEmpty ? images : [],
        video:
            (data?.typeVideo ?? '') == 'original' ? "https://slepayakurica.ru${data?.video ?? ''}" : data?.video ?? '',
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
        videoImageHeight: 0,
        videoImageWeight: 0,
      ),
      isViewed: isViewed ?? false,
    );
  }
}

extension on OneNotificationInfoResponse {
  OneNotificationInfoDataModel toOneNotification() {
    final videoImage = "https://slepayakurica.ru${data?.videoImage ?? ''}";
    List<String> images = data?.images
            ?.map(
              (item) => "https://slepayakurica.ru$item",
            )
            .toList() ??
        [];
    return OneNotificationInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      data: NotificationInfoItemDataModel(
        id: data?.id ?? '',
        title: data?.title ?? '',
        createAt: data?.createAt ?? '',
        images: images.isNotEmpty ? images : [],
        video:
            (data?.typeVideo ?? '') == 'original' ? "https://slepayakurica.ru${data?.video ?? ''}" : data?.video ?? '',
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
        videoImageHeight: 0,
        videoImageWeight: 0,
      ),
    );
  }
}

extension on BadgeOperationInfoResponse {
  BadgeOperationInfoDataModel toNumberUnreaNews() {
    return BadgeOperationInfoDataModel(
      r: r ?? '',
      errorMessage: errorMessage ?? '',
      e: e ?? '',
      news: news ?? 0,
      media: media ?? 0,
      notice: notice ?? 0,
      total: total ?? 0,
    );
  }
}

extension on NewsNotificationInfoDataModel {
  NewsNotificationDataModel toNewsNotification() {
    return NewsNotificationDataModel(
      id: id,
      typeNews: typeNews,
    );
  }
}

extension on List<NewsNotificationDataModel> {
  List<NewsNotificationInfoDataModel> toNewsNotifications(
    List<NewsNotificationDataModel> listnewsNotifications,
  ) {
    return List<NewsNotificationInfoDataModel>.from(
      listnewsNotifications.map(
        (item) {
          return NewsNotificationInfoDataModel(
            id: item.id,
            typeNews: item.typeNews,
          );
        },
      ),
    );
  }
}
