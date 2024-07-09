import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;

  NewsBloc(
    this._newsRepository,
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
      ),
    );
  }

  Future<void> _init(
    InitNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    NewsInfoDataModel news = NewsInfoDataModel(
      e: '',
      r: '',
      errorMessage: '',
      list: [],
      isViewed: false,
    );

    MediaInfoDataModel media = MediaInfoDataModel(
      e: '',
      r: '',
      errorMessage: '',
      list: [],
      isViewed: false,
    );

    NotificationInfoDataModel notificatios = NotificationInfoDataModel(
      e: '',
      r: '',
      errorMessage: '',
      list: [],
      isViewed: false,
    );

    emit(
      NewsState.preloadDataCompleted(
        news: news,
        media: media,
        notificatios: notificatios,
        offsetNews: 0,
        offsetMedia: 0,
        offsetNotificatios: 0,
      ),
    );
  }

  Future<void> _getNews(
    GetNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const NewsState.load());
      NewsInfoDataModel news = await _newsRepository.getNews();

      List<NewsInfoItemDataModel> list = [];

      for (int i = 0; i < 9; i++) {
        list.add(news.list[i]);
      }

      news = NewsInfoDataModel(
        e: news.e,
        r: news.r,
        errorMessage: news.errorMessage,
        list: list,
        isViewed: news.isViewed,
      );

      emit(
        initState.copyWith(
          news: news,
        ),
      );
    });
  }

  Future<void> _getMedia(
    GetMediaEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const NewsState.load());

      MediaInfoDataModel media = await _newsRepository.getMedia();

      List<MediaInfoItemDataModel> list = [];

      for (int i = 0; i < 15; i++) {
        list.add(media.list[i]);
      }

      media = MediaInfoDataModel(
        e: media.e,
        r: media.r,
        errorMessage: media.errorMessage,
        list: list,
        isViewed: media.isViewed,
      );

      emit(
        initState.copyWith(
          media: media,
        ),
      );
    });
  }

  Future<void> _getNotifications(
    GetNotificationsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const NewsState.load());

      NotificationInfoDataModel notificatios = await _newsRepository.getNotifications();

      List<NotificationInfoItemDataModel> list = [];

      for (int i = 0; i < 9; i++) {
        list.add(notificatios.list[i]);
      }

      notificatios = NotificationInfoDataModel(
        e: notificatios.e,
        r: notificatios.r,
        errorMessage: notificatios.errorMessage,
        list: list,
        isViewed: notificatios.isViewed,
      );

      emit(
        initState.copyWith(
          notificatios: notificatios,
        ),
      );
    });
  }

  Future<void> _paginationNews(
    PaginationNewsNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      NewsInfoDataModel news = await _newsRepository.getNews();
      List<NewsInfoItemDataModel> listNews = news.list.toList();
      int offsetNews = initState.offsetNews + 1;
      List<NewsInfoItemDataModel> list = [];

      if (9 * (offsetNews + 1) <= listNews.length) {
        for (int i = 9 * offsetNews; i < 9 * (offsetNews + 1); i++) {
          list.add(listNews[i]);
        }
      }

      emit(initState.copyWith(
        news: initState.news.copyWith(
          list: [
            ...initState.news.list,
            ...list,
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
      MediaInfoDataModel media = await _newsRepository.getMedia();
      List<MediaInfoItemDataModel> listMedia = media.list.toList();
      int offsetMedia = initState.offsetMedia + 1;
      List<MediaInfoItemDataModel> list = [];

      if (15 * (offsetMedia + 1) <= listMedia.length) {
        for (int i = 15 * offsetMedia; i < 15 * (offsetMedia + 1); i++) {
          list.add(listMedia[i]);
        }
      }

      emit(initState.copyWith(
        media: initState.media.copyWith(
          list: [
            ...initState.media.list,
            ...list,
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
      NotificationInfoDataModel notificatios = await _newsRepository.getNotifications();
      List<NotificationInfoItemDataModel> listNotificatios = notificatios.list.toList();
      int offsetNotificatios = initState.offsetNotificatios + 1;
      List<NotificationInfoItemDataModel> list = [];

      if (9 * (offsetNotificatios + 1) <= listNotificatios.length) {
        for (int i = 9 * offsetNotificatios; i < 9 * (offsetNotificatios + 1); i++) {
          list.add(listNotificatios[i]);
        }
      }

      emit(initState.copyWith(
        notificatios: initState.notificatios.copyWith(
          list: [
            ...initState.notificatios.list,
            ...list,
          ],
        ),
        offsetNotificatios: offsetNotificatios,
      ));
    });
  }
}
