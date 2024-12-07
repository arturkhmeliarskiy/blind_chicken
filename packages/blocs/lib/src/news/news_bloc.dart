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
  final SharedPreferencesService _sharedPreferencesService;
  final ImageService _imageService;

  NewsBloc(
    this._newsRepository,
    this._storeVersionAppRepository,
    this._imageService,
    this._sharedPreferencesService,
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
        updateReadNews: (event) => _updateReadNews(event, emit),
        checkingReadNews: (event) => _checkingReadNews(event, emit),
        checkButtonTop: (event) => _checkButtonTop(event, emit),
        checkiDisabledVideo: (event) => _checkiDisabledVideo(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    final countBadges = await _newsRepository.getNumberUnreaNews();

    NewsInfoDataModel news =
        NewsInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    MediaInfoDataModel media =
        MediaInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    NotificationInfoDataModel notificatios =
        NotificationInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    emit(
      NewsState.preloadDataCompleted(
        news: news,
        media: media,
        notificatios: notificatios,
        offsetNews: 1,
        offsetMedia: 1,
        offsetNotificatios: 1,
        listNewsPath: [],
        isUpdateVersionApp: false,
        isNotification: false,
        isButtonTop: false,
        countBadgesTotal: countBadges.total,
        countBadgesNews: countBadges.news,
        countBadgesMedia: countBadges.media,
        countBadgesNotificatios: countBadges.notice,
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
        emit(NewsState.load(
          countBadgesTotal: initState.countBadgesTotal,
          countBadgesNews: initState.countBadgesNews,
          countBadgesMedia: initState.countBadgesMedia,
          countBadgesNotificatios: initState.countBadgesNotificatios,
        ));
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

        if (news.list[i].typeMedia == 'images' && news.list[i].images.length > 1) {
          List<NewsSliderImageItemDataModel> images = [];
          for (int j = 0; j < news.list[i].images.length; j++) {
            final imageInfo = await _imageService.getImageUrlInfo(news.list[i].images[j].imageUrl);
            images.add(NewsSliderImageItemDataModel(
              imageUrl: news.list[i].images[j].imageUrl,
              imageHeight: imageInfo.image.height.toDouble(),
              imageWeight: imageInfo.image.width.toDouble(),
            ));
          }

          listNews.add(news.list[i].copyWith(
            images: images,
          ));
        } else {
          listNews.add(news.list[i].copyWith(
            videoImageHeight: videoImageHeight,
            videoImageWeight: videoImageWeight,
          ));
        }
      }
      news = NewsInfoDataModel(
        e: news.e,
        r: news.r,
        errorMessage: news.errorMessage,
        list: listNews,
        isViewed: news.isViewed,
      );

      final countBadges = await _newsRepository.getNumberUnreaNews();

      emit(
        initState.copyWith(
          news: news,
          offsetNews: 1,
          listNewsPath: listNewsPath,
          isError: news.errorMessage.isNotEmpty,
          errorMessage: news.errorMessage,
          typeError: 'новости',
          isLoadErrorButton: false,
          countBadgesTotal: countBadges.total,
          countBadgesNews: countBadges.news,
          countBadgesMedia: countBadges.media,
          countBadgesNotificatios: countBadges.notice,
          isNotification: false,
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
        emit(NewsState.load(
          countBadgesTotal: initState.countBadgesTotal,
          countBadgesNews: initState.countBadgesNews,
          countBadgesMedia: initState.countBadgesMedia,
          countBadgesNotificatios: initState.countBadgesNotificatios,
        ));
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

        if (media.list[i].typeMedia == 'images' && media.list[i].images.length > 1) {
          List<NewsSliderImageItemDataModel> images = [];
          for (int j = 0; j < media.list[i].images.length; j++) {
            final imageInfo = await _imageService.getImageUrlInfo(media.list[i].images[j].imageUrl);
            images.add(NewsSliderImageItemDataModel(
              imageUrl: media.list[i].images[j].imageUrl,
              imageHeight: imageInfo.image.height.toDouble(),
              imageWeight: imageInfo.image.width.toDouble(),
            ));
          }

          listMedia.add(media.list[i].copyWith(
            images: images,
          ));
        } else {
          listMedia.add(media.list[i].copyWith(
            videoImageHeight: videoImageHeight,
            videoImageWeight: videoImageWeight,
          ));
        }
      }

      media = MediaInfoDataModel(
        e: media.e,
        r: media.r,
        errorMessage: media.errorMessage,
        list: listMedia,
        isViewed: media.isViewed,
      );

      final countBadges = await _newsRepository.getNumberUnreaNews();

      emit(
        initState.copyWith(
          media: media,
          offsetMedia: 1,
          listNewsPath: listNewsPath,
          isError: media.errorMessage.isNotEmpty,
          errorMessage: media.errorMessage,
          typeError: 'медиа',
          isLoadErrorButton: false,
          countBadgesTotal: countBadges.total,
          countBadgesNews: countBadges.news,
          countBadgesMedia: countBadges.media,
          countBadgesNotificatios: countBadges.notice,
          isNotification: false,
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
        emit(NewsState.load(
          countBadgesTotal: initState.countBadgesTotal,
          countBadgesNews: initState.countBadgesNews,
          countBadgesMedia: initState.countBadgesMedia,
          countBadgesNotificatios: initState.countBadgesNotificatios,
        ));
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

        if (notificatios.list[i].typeMedia == 'images' && notificatios.list[i].images.length > 1) {
          List<NewsSliderImageItemDataModel> images = [];
          for (int j = 0; j < notificatios.list[i].images.length; j++) {
            final imageInfo =
                await _imageService.getImageUrlInfo(notificatios.list[i].images[j].imageUrl);
            images.add(NewsSliderImageItemDataModel(
              imageUrl: notificatios.list[i].images[j].imageUrl,
              imageHeight: imageInfo.image.height.toDouble(),
              imageWeight: imageInfo.image.width.toDouble(),
            ));
          }

          listNotifications.add(notificatios.list[i].copyWith(
            images: images,
          ));
        } else {
          listNotifications.add(notificatios.list[i].copyWith(
            videoImageHeight: videoImageHeight,
            videoImageWeight: videoImageWeight,
          ));
        }
      }

      notificatios = NotificationInfoDataModel(
        e: notificatios.e,
        r: notificatios.r,
        errorMessage: notificatios.errorMessage,
        list: listNotifications,
        isViewed: notificatios.isViewed,
      );

      final countBadges = await _newsRepository.getNumberUnreaNews();

      emit(
        initState.copyWith(
          notificatios: notificatios,
          offsetNotificatios: 1,
          listNewsPath: listNewsPath,
          isError: notificatios.errorMessage.isNotEmpty,
          errorMessage: notificatios.errorMessage,
          typeError: 'уведомления',
          isLoadErrorButton: false,
          countBadgesTotal: countBadges.total,
          countBadgesNews: countBadges.news,
          countBadgesMedia: countBadges.media,
          countBadgesNotificatios: countBadges.notice,
          isNotification: false,
        ),
      );
    });
  }

  Future<void> _paginationNews(
    PaginationNewsNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        isLoadPagination: true,
      ));
      int offsetNews = initState.offsetNews + 1;
      List<NewsInfoItemDataModel> listNews = [];
      late NewsInfoDataModel news;

      if (initState.offsetNews != offsetNews) {
        news = await _newsRepository.getNews(page: offsetNews);

        if (news.errorMessage.isEmpty) {
          for (int i = 0; i < (news.list.length); i++) {
            double videoImageHeight = 0.0;
            double videoImageWeight = 0.0;
            if (news.list[i].videoImage.isNotEmpty) {
              final imageInfo = await _imageService.getImageUrlInfo(news.list[i].videoImage);
              videoImageHeight = imageInfo.image.height.toDouble();
              videoImageWeight = imageInfo.image.width.toDouble();
            }

            if ((news.list[i].typeMedia) == 'images' && (news.list[i].images.length) > 1) {
              List<NewsSliderImageItemDataModel> images = [];
              for (int j = 0; j < (news.list[i].images.length); j++) {
                final imageInfo =
                    await _imageService.getImageUrlInfo(news.list[i].images[j].imageUrl);
                images.add(NewsSliderImageItemDataModel(
                  imageUrl: news.list[i].images[j].imageUrl,
                  imageHeight: imageInfo.image.height.toDouble(),
                  imageWeight: imageInfo.image.width.toDouble(),
                ));
              }

              listNews.add(news.list[i].copyWith(
                images: images,
              ));
            } else {
              listNews.add(news.list[i].copyWith(
                videoImageHeight: videoImageHeight,
                videoImageWeight: videoImageWeight,
              ));
            }
          }

          news = initState.news.copyWith(
            list: [
              ...initState.news.list,
              ...listNews,
            ],
          );

          emit(initState.copyWith(
            news: news,
            offsetNews: offsetNews,
            isNotification: false,
            isLoadPagination: false,
          ));
        }
      }
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

      if (media.errorMessage.isEmpty) {
        for (int i = 0; i < media.list.length; i++) {
          double videoImageHeight = 0.0;
          double videoImageWeight = 0.0;
          if (media.list[i].videoImage.isNotEmpty) {
            final imageInfo = await _imageService.getImageUrlInfo(media.list[i].videoImage);
            videoImageHeight = imageInfo.image.height.toDouble();
            videoImageWeight = imageInfo.image.width.toDouble();
          }

          if (media.list[i].typeMedia == 'images' && media.list[i].images.length > 1) {
            List<NewsSliderImageItemDataModel> images = [];
            for (int j = 0; j < media.list[i].images.length; j++) {
              final imageInfo =
                  await _imageService.getImageUrlInfo(media.list[i].images[j].imageUrl);
              images.add(NewsSliderImageItemDataModel(
                imageUrl: media.list[i].images[j].imageUrl,
                imageHeight: imageInfo.image.height.toDouble(),
                imageWeight: imageInfo.image.width.toDouble(),
              ));
            }

            listMedia.add(media.list[i].copyWith(
              images: images,
            ));
          } else {
            listMedia.add(media.list[i].copyWith(
              videoImageHeight: videoImageHeight,
              videoImageWeight: videoImageWeight,
            ));
          }
        }

        media = initState.media.copyWith(
          list: [
            ...initState.media.list,
            ...listMedia,
          ],
        );

        emit(initState.copyWith(
          media: media,
          offsetMedia: offsetMedia,
          isNotification: false,
        ));
      }
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

      if (notificatios.errorMessage.isEmpty) {
        for (int i = 0; i < notificatios.list.length; i++) {
          double videoImageHeight = 0.0;
          double videoImageWeight = 0.0;
          if (notificatios.list[i].videoImage.isNotEmpty) {
            final imageInfo = await _imageService.getImageUrlInfo(notificatios.list[i].videoImage);
            videoImageHeight = imageInfo.image.height.toDouble();
            videoImageWeight = imageInfo.image.width.toDouble();
          }

          if (notificatios.list[i].typeMedia == 'images' &&
              notificatios.list[i].images.length > 1) {
            List<NewsSliderImageItemDataModel> images = [];
            for (int j = 0; j < notificatios.list[i].images.length; j++) {
              final imageInfo =
                  await _imageService.getImageUrlInfo(notificatios.list[i].images[j].imageUrl);
              images.add(NewsSliderImageItemDataModel(
                imageUrl: notificatios.list[i].images[j].imageUrl,
                imageHeight: imageInfo.image.height.toDouble(),
                imageWeight: imageInfo.image.width.toDouble(),
              ));
            }

            listNotifications.add(notificatios.list[i].copyWith(
              images: images,
            ));
          } else {
            listNotifications.add(notificatios.list[i].copyWith(
              videoImageHeight: videoImageHeight,
              videoImageWeight: videoImageWeight,
            ));
          }
        }

        notificatios = initState.notificatios.copyWith(
          list: [
            ...initState.notificatios.list,
            ...listNotifications,
          ],
        );

        emit(initState.copyWith(
          notificatios: notificatios,
          offsetNotificatios: offsetNotificatios,
          isNotification: false,
        ));
      }
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

    NewsInfoDataModel news =
        NewsInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    MediaInfoDataModel media =
        MediaInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    NotificationInfoDataModel notificatios =
        NotificationInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    String appStoreInfoVersion = '';
    bool isUpdateVersionApp = false;
    List<NewsSliderImageItemDataModel> images = [];
    BadgeOperationInfoDataModel? countBadges;

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

    if (oneNews.data.typeMedia == 'images') {
      for (int j = 0; j < oneNews.data.images.length; j++) {
        final imageInfo = await _imageService.getImageUrlInfo(oneNews.data.images[j].imageUrl);
        images.add(NewsSliderImageItemDataModel(
          imageUrl: oneNews.data.images[j].imageUrl,
          imageHeight: imageInfo.image.height.toDouble(),
          imageWeight: imageInfo.image.width.toDouble(),
        ));
      }
    }

    oneNews = OneNewsInfoDataModel(
      r: oneNews.r,
      e: oneNews.e,
      errorMessage: oneNews.errorMessage,
      data: oneNews.data.copyWith(
        videoImageHeight: videoImageHeight,
        videoImageWeight: videoImageWeight,
        images: images,
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

    final listNewsNotifications = _newsRepository.getNewsNotifications();

    final isCheckReadNews = listNewsNotifications
        .where((element) => element.id == event.id && element.typeNews == 'news')
        .isEmpty;

    if (isCheckReadNews) {
      countBadges = await _newsRepository.postReadNews(
        idRead: event.id,
        idTypeContent: 'news',
      );
      _newsRepository.addNewsNotification(
        NewsNotificationInfoDataModel(
          id: event.id,
          typeNews: 'news',
        ),
      );
    }

    if (oneNews.errorMessage.isNotEmpty || (countBadges?.errorMessage.isNotEmpty ?? false)) {
      emit(
        NewsState.error(
          errorMessage: oneNews.errorMessage,
        ),
      );
    } else {
      emit(
        NewsState.preloadDataCompleted(
          news: news,
          media: media,
          notificatios: notificatios,
          offsetNews: 1,
          offsetMedia: 1,
          offsetNotificatios: 1,
          oneNews: oneNews,
          listNewsPath: [],
          isNotification: true,
          isButtonTop: false,
          isUpdateVersionApp: isUpdateVersionApp,
          countBadgesTotal: countBadges?.total ?? 0,
          countBadgesNews: countBadges?.news ?? 0,
          countBadgesMedia: countBadges?.media ?? 0,
          countBadgesNotificatios: countBadges?.notice ?? 0,
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
    List<NewsSliderImageItemDataModel> images = [];
    BadgeOperationInfoDataModel? countBadges;

    OneMediaInfoDataModel oneMedia = await _newsRepository.getOneMedia(
      id: event.id,
      messageId: event.messageId,
    );

    NewsInfoDataModel news =
        NewsInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    MediaInfoDataModel media =
        MediaInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    NotificationInfoDataModel notificatios =
        NotificationInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    double videoImageHeight = 0.0;
    double videoImageWeight = 0.0;
    if (oneMedia.data.videoImage.isNotEmpty) {
      final imageInfo = await _imageService.getImageUrlInfo(oneMedia.data.videoImage);
      videoImageHeight = imageInfo.image.height.toDouble();
      videoImageWeight = imageInfo.image.width.toDouble();
    }

    if (oneMedia.data.typeMedia == 'images') {
      for (int j = 0; j < oneMedia.data.images.length; j++) {
        final imageInfo = await _imageService.getImageUrlInfo(oneMedia.data.images[j].imageUrl);
        images.add(NewsSliderImageItemDataModel(
          imageUrl: oneMedia.data.images[j].imageUrl,
          imageHeight: imageInfo.image.height.toDouble(),
          imageWeight: imageInfo.image.width.toDouble(),
        ));
      }
    }

    oneMedia = OneMediaInfoDataModel(
      r: oneMedia.r,
      e: oneMedia.e,
      errorMessage: oneMedia.errorMessage,
      data: oneMedia.data.copyWith(
        videoImageHeight: videoImageHeight,
        videoImageWeight: videoImageWeight,
        images: images,
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

    final listNewsNotifications = _newsRepository.getNewsNotifications();

    final isCheckReadNews = listNewsNotifications
        .where((element) => element.id == event.id && element.typeNews == 'media')
        .isEmpty;

    if (isCheckReadNews) {
      countBadges = await _newsRepository.postReadNews(
        idRead: event.id,
        idTypeContent: 'media',
      );
      _newsRepository.addNewsNotification(
        NewsNotificationInfoDataModel(
          id: event.id,
          typeNews: 'media',
        ),
      );
    }

    if (oneMedia.errorMessage.isNotEmpty || (countBadges?.errorMessage.isNotEmpty ?? false)) {
      emit(
        NewsState.error(
          errorMessage: oneMedia.errorMessage,
        ),
      );
    } else {
      emit(
        NewsState.preloadDataCompleted(
          news: news,
          media: media,
          notificatios: notificatios,
          offsetNews: 1,
          offsetMedia: 1,
          offsetNotificatios: 1,
          oneMedia: oneMedia,
          listNewsPath: [],
          isNotification: true,
          isButtonTop: false,
          isUpdateVersionApp: isUpdateVersionApp,
          countBadgesTotal: countBadges?.total ?? 0,
          countBadgesNews: countBadges?.news ?? 0,
          countBadgesMedia: countBadges?.media ?? 0,
          countBadgesNotificatios: countBadges?.notice ?? 0,
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
    List<NewsSliderImageItemDataModel> images = [];
    BadgeOperationInfoDataModel? countBadges;

    OneNotificationInfoDataModel oneNotifcation = await _newsRepository.getOneNotifcation(
      id: event.id,
      messageId: event.messageId,
    );

    NewsInfoDataModel news =
        NewsInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    MediaInfoDataModel media =
        MediaInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    NotificationInfoDataModel notificatios =
        NotificationInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
    double videoImageHeight = 0.0;
    double videoImageWeight = 0.0;
    if (oneNotifcation.data.videoImage.isNotEmpty) {
      final imageInfo = await _imageService.getImageUrlInfo(oneNotifcation.data.videoImage);
      videoImageHeight = imageInfo.image.height.toDouble();
      videoImageWeight = imageInfo.image.width.toDouble();
    }

    if (oneNotifcation.data.typeMedia == 'images') {
      for (int j = 0; j < oneNotifcation.data.images.length; j++) {
        final imageInfo =
            await _imageService.getImageUrlInfo(oneNotifcation.data.images[j].imageUrl);
        images.add(NewsSliderImageItemDataModel(
          imageUrl: oneNotifcation.data.images[j].imageUrl,
          imageHeight: imageInfo.image.height.toDouble(),
          imageWeight: imageInfo.image.width.toDouble(),
        ));
      }
    }

    oneNotifcation = OneNotificationInfoDataModel(
      r: oneNotifcation.r,
      e: oneNotifcation.e,
      errorMessage: oneNotifcation.errorMessage,
      data: oneNotifcation.data.copyWith(
        videoImageHeight: videoImageHeight,
        videoImageWeight: videoImageWeight,
        images: images,
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

    final listNewsNotifications = _newsRepository.getNewsNotifications();

    final isCheckReadNews = listNewsNotifications
        .where((element) => element.id == event.id && element.typeNews == 'notice')
        .isEmpty;

    if (isCheckReadNews) {
      countBadges = await _newsRepository.postReadNews(
        idRead: event.id,
        idTypeContent: 'notice',
      );
      _newsRepository.addNewsNotification(
        NewsNotificationInfoDataModel(
          id: event.id,
          typeNews: 'notice',
        ),
      );
    }

    if (oneNotifcation.errorMessage.isNotEmpty || (countBadges?.errorMessage.isNotEmpty ?? false)) {
      emit(
        NewsState.error(
          errorMessage: oneNotifcation.errorMessage,
        ),
      );
    } else {
      emit(
        NewsState.preloadDataCompleted(
          news: news,
          media: media,
          notificatios: notificatios,
          offsetNews: 1,
          offsetMedia: 1,
          offsetNotificatios: 1,
          oneNotification: oneNotifcation,
          listNewsPath: [],
          isNotification: true,
          isButtonTop: false,
          isUpdateVersionApp: isUpdateVersionApp,
          countBadgesTotal: countBadges?.total ?? 0,
          countBadgesNews: countBadges?.news ?? 0,
          countBadgesMedia: countBadges?.media ?? 0,
          countBadgesNotificatios: countBadges?.notice ?? 0,
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
              isNotification: false,
            ),
          );
        }
      }
    });
  }

  Future<void> _updateReadNews(
    UpdateReadNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      int indexNews = 0;
      BadgeOperationInfoDataModel? countBadges;
      final listNewsNotifications = _newsRepository.getNewsNotifications();
      NewsInfoDataModel news = initState.news;
      MediaInfoDataModel media = initState.media;
      NotificationInfoDataModel notificatios = initState.notificatios;

      String dateReceiptNewNews = _sharedPreferencesService.getString(
            key: SharedPrefKeys.dateReceiptNewNews,
          ) ??
          '';

      final isCheckReadNews = listNewsNotifications
          .where((element) => element.id == event.id && element.typeNews == event.typeNews)
          .isEmpty;

      if (isCheckReadNews) {
        switch (event.typeNews) {
          case 'news':
            indexNews = news.list.indexWhere((element) => element.id == event.id);
            List<NewsInfoItemDataModel> listNews = news.list.toList();
            NewsInfoItemDataModel item = listNews[indexNews].copyWith(isViewed: false);
            if (DateTime.parse(item.createAt).isAfter(
              DateTime.parse(dateReceiptNewNews),
            )) {
              countBadges = await _newsRepository.postReadNews(
                idRead: event.id,
                idTypeContent: event.typeNews,
              );
              _newsRepository.addNewsNotification(
                NewsNotificationInfoDataModel(
                  id: event.id,
                  typeNews: event.typeNews,
                ),
              );
              listNews[indexNews] = item;
              news = initState.news.copyWith(list: listNews);
            }

            break;
          case 'media':
            indexNews = media.list.indexWhere((element) => element.id == event.id);
            List<MediaInfoItemDataModel> listMedia = media.list.toList();
            MediaInfoItemDataModel item = media.list[indexNews].copyWith(isViewed: false);
            if (DateTime.parse(item.createAt).isAfter(
              DateTime.parse(dateReceiptNewNews),
            )) {
              countBadges = await _newsRepository.postReadNews(
                idRead: event.id,
                idTypeContent: event.typeNews,
              );
              _newsRepository.addNewsNotification(
                NewsNotificationInfoDataModel(
                  id: event.id,
                  typeNews: event.typeNews,
                ),
              );
              listMedia[indexNews] = item;
              media = initState.media.copyWith(list: listMedia);
            }

            break;
          case 'notice':
            indexNews = notificatios.list.indexWhere((element) => element.id == event.id);
            List<NotificationInfoItemDataModel> listNotificatios = notificatios.list.toList();
            NotificationInfoItemDataModel item =
                notificatios.list[indexNews].copyWith(isViewed: false);
            if (DateTime.parse(item.createAt).isAfter(
              DateTime.parse(dateReceiptNewNews),
            )) {
              countBadges = await _newsRepository.postReadNews(
                idRead: event.id,
                idTypeContent: event.typeNews,
              );
              _newsRepository.addNewsNotification(
                NewsNotificationInfoDataModel(
                  id: event.id,
                  typeNews: event.typeNews,
                ),
              );
              listNotificatios[indexNews] = item;
              notificatios = initState.notificatios.copyWith(list: listNotificatios);
            }

            break;
        }
      } else {
        countBadges = await _newsRepository.getNumberUnreaNews();
      }

      emit(
        initState.copyWith(
          news: news,
          media: media,
          notificatios: notificatios,
          isError: countBadges?.errorMessage.isNotEmpty ?? false,
          errorMessage: countBadges?.errorMessage ?? '',
          typeError: 'описание ${event.typeNews}',
          isLoadErrorButton: false,
          countBadgesTotal: countBadges?.total ?? 0,
          countBadgesNews: countBadges?.news ?? 0,
          countBadgesMedia: countBadges?.media ?? 0,
          countBadgesNotificatios: countBadges?.notice ?? 0,
          isNotification: initState.isNotification,
        ),
      );
    });
  }

  Future<void> _checkingReadNews(
    CheckingReadNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      final countBadges = await _newsRepository.getNumberUnreaNews();

      emit(
        initState.copyWith(
          countBadgesTotal: countBadges.total,
          countBadgesNews: countBadges.news,
          countBadgesMedia: countBadges.media,
          countBadgesNotificatios: countBadges.notice,
        ),
      );
    });
  }

  Future<void> _checkButtonTop(
    CheckButtonTopNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        isButtonTop: event.isButtonTop,
      ));
    });
  }

  Future<void> _checkiDisabledVideo(
    CheckDisabledVideoNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        isDisabledVideo: event.isDisabledVideo,
      ));
    });
  }
}
