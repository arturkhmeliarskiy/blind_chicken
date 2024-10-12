import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:repositories/repositories.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;
  final StoreVersionAppRepository _storeVersionAppRepository;
  NewsInfoDataModel _news =
      NewsInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
  MediaInfoDataModel _media =
      MediaInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);
  NotificationInfoDataModel _notificatios =
      NotificationInfoDataModel(e: '', r: '', errorMessage: '', list: [], isViewed: false);

  NewsBloc(
    this._newsRepository,
    this._storeVersionAppRepository,
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

      _news = NewsInfoDataModel(
        e: news.e,
        r: news.r,
        errorMessage: news.errorMessage,
        list: news.list,
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

      _media = MediaInfoDataModel(
        e: media.e,
        r: media.r,
        errorMessage: media.errorMessage,
        list: media.list,
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

      _notificatios = NotificationInfoDataModel(
        e: notificatios.e,
        r: notificatios.r,
        errorMessage: notificatios.errorMessage,
        list: notificatios.list,
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

      NewsInfoDataModel news = await _newsRepository.getNews(page: offsetNews);

      emit(initState.copyWith(
        news: initState.news.copyWith(
          list: [
            ...initState.news.list,
            ...news.list,
          ],
        ),
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

      MediaInfoDataModel media = await _newsRepository.getMedia(page: offsetMedia);

      emit(initState.copyWith(
        media: initState.media.copyWith(
          list: [
            ...initState.media.list,
            ...media.list,
          ],
        ),
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

      NotificationInfoDataModel notificatios =
          await _newsRepository.getNotifications(page: offsetNotificatios);

      emit(initState.copyWith(
        notificatios: initState.notificatios.copyWith(
          list: [
            ...initState.notificatios.list,
            ...notificatios.list,
          ],
        ),
        offsetNotificatios: offsetNotificatios,
      ));
    });
  }

  Future<void> _getNewsDescriptionInfo(
    GetNewsDescriptionInfoNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    emit(const NewsState.load());
    String appStoreInfoVersion = '';
    bool isUpdateVersionApp = false;

    final oneNews = await _newsRepository.getOneNews(
      id: event.id,
      messageId: event.messageId,
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

  Future<void> _getMediaDescriptionInfo(
    GetMediaDescriptionInfoNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    emit(const NewsState.load());
    String appStoreInfoVersion = '';
    bool isUpdateVersionApp = false;

    final oneMedia = await _newsRepository.getOneMedia(
      id: event.id,
      messageId: event.messageId,
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

  Future<void> _getNotificationDescriptionInfo(
    GetNotificationDescriptionInfoNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    emit(const NewsState.load());
    String appStoreInfoVersion = '';
    bool isUpdateVersionApp = false;

    final oneNotifcation = await _newsRepository.getOneNotifcation(
      id: event.id,
      messageId: event.messageId,
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
