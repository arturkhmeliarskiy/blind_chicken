import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;
  final StoreVersionAppRepository _storeVersionAppRepository;
  final ImageService _imageService;
  NewsInfoDataModel _news =
      NewsInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
  MediaInfoDataModel _media =
      MediaInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
  NotificationInfoDataModel _notificatios =
      NotificationInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);

  NewsBloc(
    this._newsRepository,
    this._storeVersionAppRepository,
    this._imageService,
  ) : super(const NewsState.init()) {
    on<NewsEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        getNews: (event) => _getNews(event, emit),
        getMedia: (event) => _getMedia(event, emit),
        getNotifications: (event) => _getNotifications(event, emit),
        paginationNews: (event) => _paginationNews(event, emit),
        paginationMedia: (event) => _paginationMedia(event, emit),
        paginationNotifications: (event) => _paginationNotifications(event, emit),
        getNewsDescriptionInfo: (event) => _getNewsDescriptionInfo(event, emit),
        getMediaDescriptionInfo: (event) => _getMediaDescriptionInfo(event, emit),
        getNotificationDescriptionInfo: (event) => _getNotificationDescriptionInfo(event, emit),
        goBackNewsInfo: (event) => _goBackNewsInfo(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    emit(
      NewsState.preloadDataCompleted(
        news: _news,
        media: _media,
        notificatios: _notificatios,
        offsetNews: 1,
        offsetMedia: 1,
        offsetNotificatios: 1,
        listNewsPath: [],
        isUpdateVersionApp: false,
        isNotification: false,
      ),
    );
  }

  Future<void> _getNews(
    GetNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<NewsInfoItemDataModel> listNews = [];
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const NewsState.load());
      }

      List<String> listNewsPath = initState.listNewsPath.toList();
      NewsInfoDataModel news = await _newsRepository.getNews(page: 1);
      if (news.errorMessage.isEmpty) {
        listNewsPath.add('0');
      }

      for (int i = 0; i < news.list.length; i++) {
        double videoImageHeight = 0.0;
        double videoImageWeight = 0.0;
        if (news.list[i].videoImage.isNotEmpty) {
          final imageInfo = await _imageService.getImageUrlInfo(news.list[i].videoImage);
          videoImageHeight = imageInfo.image.height.toDouble();
          videoImageWeight = imageInfo.image.width.toDouble();
        }

        listNews.add(news.list[i].copyWith(
          videoImageHeight: videoImageHeight,
          videoImageWeight: videoImageWeight,
        ));
      }
      _news = NewsInfoDataModel(
        e: news.e,
        r: news.r,
        errorMessage: news.errorMessage,
        list: listNews,
        isViewed: news.isViewed,
      );

      emit(
        initState.copyWith(
          news: _news,
          offsetNews: 1,
          listNewsPath: listNewsPath,
          isError: news.errorMessage.isNotEmpty,
          errorMessage: news.errorMessage,
          typeError: 'новости',
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _getMedia(
    GetMediaEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<MediaInfoItemDataModel> listMedia = [];
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const NewsState.load());
      }
      List<String> listNewsPath = initState.listNewsPath.toList();
      MediaInfoDataModel media = await _newsRepository.getMedia(page: 1);
      if (media.errorMessage.isEmpty) {
        listNewsPath.add('1');
      }

      for (int i = 0; i < media.list.length; i++) {
        double videoImageHeight = 0.0;
        double videoImageWeight = 0.0;
        if (media.list[i].videoImage.isNotEmpty) {
          final imageInfo = await _imageService.getImageUrlInfo(media.list[i].videoImage);
          videoImageHeight = imageInfo.image.height.toDouble();
          videoImageWeight = imageInfo.image.width.toDouble();
        }

        listMedia.add(media.list[i].copyWith(
          videoImageHeight: videoImageHeight,
          videoImageWeight: videoImageWeight,
        ));
      }

      _media = MediaInfoDataModel(
        e: media.e,
        r: media.r,
        errorMessage: media.errorMessage,
        list: listMedia,
        isViewed: media.isViewed,
      );

      emit(
        initState.copyWith(
          media: _media,
          offsetMedia: 1,
          listNewsPath: listNewsPath,
          isError: media.errorMessage.isNotEmpty,
          errorMessage: media.errorMessage,
          typeError: 'медиа',
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _getNotifications(
    GetNotificationsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<NotificationInfoItemDataModel> listNotifications = [];
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const NewsState.load());
      }
      List<String> listNewsPath = initState.listNewsPath.toList();
      NotificationInfoDataModel notificatios = await _newsRepository.getNotifications(page: 1);
      if (notificatios.errorMessage.isEmpty) {
        listNewsPath.add('2');
      }

      for (int i = 0; i < notificatios.list.length; i++) {
        double videoImageHeight = 0.0;
        double videoImageWeight = 0.0;
        if (notificatios.list[i].videoImage.isNotEmpty) {
          final imageInfo = await _imageService.getImageUrlInfo(notificatios.list[i].videoImage);
          videoImageHeight = imageInfo.image.height.toDouble();
          videoImageWeight = imageInfo.image.width.toDouble();
        }

        listNotifications.add(notificatios.list[i].copyWith(
          videoImageHeight: videoImageHeight,
          videoImageWeight: videoImageWeight,
        ));
      }

      _notificatios = NotificationInfoDataModel(
        e: notificatios.e,
        r: notificatios.r,
        errorMessage: notificatios.errorMessage,
        list: listNotifications,
        isViewed: notificatios.isViewed,
      );

      emit(
        initState.copyWith(
          notificatios: _notificatios,
          offsetNotificatios: 1,
          listNewsPath: listNewsPath,
          isError: notificatios.errorMessage.isNotEmpty,
          errorMessage: notificatios.errorMessage,
          typeError: 'уведомления',
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _paginationNews(
    PaginationNewsNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      int offsetNews = initState.offsetNews + 1;
      List<NewsInfoItemDataModel> listNews = [];
      NewsInfoDataModel news = await _newsRepository.getNews(page: offsetNews);

      for (int i = 0; i < news.list.length; i++) {
        double videoImageHeight = 0.0;
        double videoImageWeight = 0.0;
        if (news.list[i].videoImage.isNotEmpty) {
          final imageInfo = await _imageService.getImageUrlInfo(news.list[i].videoImage);
          videoImageHeight = imageInfo.image.height.toDouble();
          videoImageWeight = imageInfo.image.width.toDouble();
        }

        listNews.add(news.list[i].copyWith(
          videoImageHeight: videoImageHeight,
          videoImageWeight: videoImageWeight,
        ));
      }

      _news = initState.news.copyWith(
        list: [
          ...initState.news.list,
          ...listNews,
        ],
      );

      emit(initState.copyWith(
        news: _news,
        offsetNews: offsetNews,
      ));
    });
  }

  Future<void> _paginationMedia(
    PaginationMediasNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      int offsetMedia = initState.offsetMedia + 1;
      List<MediaInfoItemDataModel> listMedia = [];
      MediaInfoDataModel media = await _newsRepository.getMedia(page: offsetMedia);

      for (int i = 0; i < media.list.length; i++) {
        double videoImageHeight = 0.0;
        double videoImageWeight = 0.0;
        if (media.list[i].videoImage.isNotEmpty) {
          final imageInfo = await _imageService.getImageUrlInfo(media.list[i].videoImage);
          videoImageHeight = imageInfo.image.height.toDouble();
          videoImageWeight = imageInfo.image.width.toDouble();
        }

        listMedia.add(media.list[i].copyWith(
          videoImageHeight: videoImageHeight,
          videoImageWeight: videoImageWeight,
        ));
      }

      _media = initState.media.copyWith(
        list: [
          ...initState.media.list,
          ...listMedia,
        ],
      );

      emit(initState.copyWith(
        media: _media,
        offsetMedia: offsetMedia,
      ));
    });
  }

  Future<void> _paginationNotifications(
    PaginationNotificationsNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      int offsetNotificatios = initState.offsetNotificatios + 1;
      List<NotificationInfoItemDataModel> listNotifications = [];
      NotificationInfoDataModel notificatios =
          await _newsRepository.getNotifications(page: offsetNotificatios);

      for (int i = 0; i < notificatios.list.length; i++) {
        double videoImageHeight = 0.0;
        double videoImageWeight = 0.0;
        if (notificatios.list[i].videoImage.isNotEmpty) {
          final imageInfo = await _imageService.getImageUrlInfo(notificatios.list[i].videoImage);
          videoImageHeight = imageInfo.image.height.toDouble();
          videoImageWeight = imageInfo.image.width.toDouble();
        }

        listNotifications.add(notificatios.list[i].copyWith(
          videoImageHeight: videoImageHeight,
          videoImageWeight: videoImageWeight,
        ));
      }

      _notificatios = initState.notificatios.copyWith(
        list: [
          ...initState.notificatios.list,
          ...listNotifications,
        ],
      );

      emit(initState.copyWith(
        notificatios: _notificatios,
        offsetNotificatios: offsetNotificatios,
      ));
    });
  }

  Future<void> _getNewsDescriptionInfo(
    GetNewsDescriptionInfoNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    if (state is ErrorNewsState) {
      emit(const NewsState.loadErrorButton());
    } else {
      emit(const NewsState.load());
    }

    String appStoreInfoVersion = '';
    bool isUpdateVersionApp = false;

    OneNewsInfoDataModel oneNews = await _newsRepository.getOneNews(
      id: event.id,
      messageId: event.messageId,
    );

    double videoImageHeight = 0.0;
    double videoImageWeight = 0.0;
    if (oneNews.data.videoImage.isNotEmpty) {
      final imageInfo = await _imageService.getImageUrlInfo(oneNews.data.videoImage);
      videoImageHeight = imageInfo.image.height.toDouble();
      videoImageWeight = imageInfo.image.width.toDouble();
    }

    oneNews = OneNewsInfoDataModel(
      r: oneNews.r,
      e: oneNews.e,
      errorMessage: oneNews.errorMessage,
      data: oneNews.data.copyWith(
        videoImageHeight: videoImageHeight,
        videoImageWeight: videoImageWeight,
      ),
      isViewed: oneNews.isViewed,
    );

    final result = await _storeVersionAppRepository.getStoreVersion();
    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoVersion.isNotEmpty) {
      final appStoreVersion = int.parse((appStoreInfoVersion).replaceAll('.', ''));
      final packageInfoVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreVersion > packageInfoVersion) {
        isUpdateVersionApp = true;
      }
    }

    if (oneNews.errorMessage.isNotEmpty) {
      emit(
        NewsState.error(
          errorMessage: oneNews.errorMessage,
        ),
      );
    } else {
      emit(
        NewsState.preloadDataCompleted(
          news: _news,
          media: _media,
          notificatios: _notificatios,
          offsetNews: 1,
          offsetMedia: 1,
          offsetNotificatios: 1,
          oneNews: oneNews,
          listNewsPath: [],
          isNotification: true,
          isUpdateVersionApp: isUpdateVersionApp,
        ),
      );
    }
  }

  Future<void> _getMediaDescriptionInfo(
    GetMediaDescriptionInfoNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    if (state is ErrorNewsState) {
      emit(const NewsState.loadErrorButton());
    } else {
      emit(const NewsState.load());
    }
    String appStoreInfoVersion = '';
    bool isUpdateVersionApp = false;

    OneMediaInfoDataModel oneMedia = await _newsRepository.getOneMedia(
      id: event.id,
      messageId: event.messageId,
    );

    double videoImageHeight = 0.0;
    double videoImageWeight = 0.0;
    if (oneMedia.data.videoImage.isNotEmpty) {
      final imageInfo = await _imageService.getImageUrlInfo(oneMedia.data.videoImage);
      videoImageHeight = imageInfo.image.height.toDouble();
      videoImageWeight = imageInfo.image.width.toDouble();
    }

    oneMedia = OneMediaInfoDataModel(
      r: oneMedia.r,
      e: oneMedia.e,
      errorMessage: oneMedia.errorMessage,
      data: oneMedia.data.copyWith(
        videoImageHeight: videoImageHeight,
        videoImageWeight: videoImageWeight,
      ),
      isViewed: oneMedia.isViewed,
    );

    final result = await _storeVersionAppRepository.getStoreVersion();
    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoVersion.isNotEmpty) {
      final appStoreVersion = int.parse((appStoreInfoVersion).replaceAll('.', ''));
      final packageInfoVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreVersion > packageInfoVersion) {
        isUpdateVersionApp = true;
      }
    }

    if (oneMedia.errorMessage.isNotEmpty) {
      emit(
        NewsState.error(
          errorMessage: oneMedia.errorMessage,
        ),
      );
    } else {
      emit(
        NewsState.preloadDataCompleted(
          news: _news,
          media: _media,
          notificatios: _notificatios,
          offsetNews: 1,
          offsetMedia: 1,
          offsetNotificatios: 1,
          oneMedia: oneMedia,
          listNewsPath: [],
          isNotification: true,
          isUpdateVersionApp: isUpdateVersionApp,
        ),
      );
    }
  }

  Future<void> _getNotificationDescriptionInfo(
    GetNotificationDescriptionInfoNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    if (state is ErrorNewsState) {
      emit(const NewsState.loadErrorButton());
    } else {
      emit(const NewsState.load());
    }
    String appStoreInfoVersion = '';
    bool isUpdateVersionApp = false;

    OneNotificationInfoDataModel oneNotifcation = await _newsRepository.getOneNotifcation(
      id: event.id,
      messageId: event.messageId,
    );

    double videoImageHeight = 0.0;
    double videoImageWeight = 0.0;
    if (oneNotifcation.data.videoImage.isNotEmpty) {
      final imageInfo = await _imageService.getImageUrlInfo(oneNotifcation.data.videoImage);
      videoImageHeight = imageInfo.image.height.toDouble();
      videoImageWeight = imageInfo.image.width.toDouble();
    }

    oneNotifcation = OneNotificationInfoDataModel(
      r: oneNotifcation.r,
      e: oneNotifcation.e,
      errorMessage: oneNotifcation.errorMessage,
      data: oneNotifcation.data.copyWith(
        videoImageHeight: videoImageHeight,
        videoImageWeight: videoImageWeight,
      ),
    );

    final result = await _storeVersionAppRepository.getStoreVersion();
    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoVersion.isNotEmpty) {
      final appStoreVersion = int.parse((appStoreInfoVersion).replaceAll('.', ''));
      final packageInfoVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreVersion > packageInfoVersion) {
        isUpdateVersionApp = true;
      }
    }

    if (oneNotifcation.errorMessage.isNotEmpty) {
      emit(
        NewsState.error(
          errorMessage: oneNotifcation.errorMessage,
        ),
      );
    } else {
      emit(
        NewsState.preloadDataCompleted(
          news: _news,
          media: _media,
          notificatios: _notificatios,
          offsetNews: 1,
          offsetMedia: 1,
          offsetNotificatios: 1,
          oneNotification: oneNotifcation,
          listNewsPath: [],
          isNotification: true,
          isUpdateVersionApp: isUpdateVersionApp,
        ),
      );
    }
  }

  Future<void> _goBackNewsInfo(
    GoBackNewsInfoNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<String> listNewsPath = initState.listNewsPath.toList();
      if (listNewsPath.isNotEmpty) {
        listNewsPath.removeLast();
      }

      emit(initState.copyWith(
        listNewsPath: listNewsPath,
      ));

      if (listNewsPath.isNotEmpty) {
        emit(const NewsState.load());
        if (listNewsPath.last == '0') {
          NewsInfoDataModel news = await _newsRepository.getNews(page: 1);
          emit(
            initState.copyWith(
              news: news,
              offsetNews: 1,
              listNewsPath: listNewsPath,
            ),
          );
        } else if (listNewsPath.last == '1') {
          MediaInfoDataModel media = await _newsRepository.getMedia(page: 1);
          emit(
            initState.copyWith(
              media: media,
              offsetMedia: 1,
              listNewsPath: listNewsPath,
            ),
          );
        } else if (listNewsPath.last == '2') {
          NotificationInfoDataModel notificatios = await _newsRepository.getNotifications(page: 1);
          emit(
            initState.copyWith(
              notificatios: notificatios,
              offsetNotificatios: 1,
              listNewsPath: listNewsPath,
            ),
          );
        }
      }
    });
  }
}
