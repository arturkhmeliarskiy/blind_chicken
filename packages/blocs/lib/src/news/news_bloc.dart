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
        offsetNews: 1,
        offsetMedia: 1,
        offsetNotificatios: 1,
      ),
    );
  }

  Future<void> _getNews(
    GetNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const NewsState.load());
      NewsInfoDataModel news = await _newsRepository.getNews(page: 1);

      news = NewsInfoDataModel(
        e: news.e,
        r: news.r,
        errorMessage: news.errorMessage,
        list: news.list,
        isViewed: news.isViewed,
      );

      emit(
        initState.copyWith(
          news: news,
          offsetNews: 1,
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

      MediaInfoDataModel media = await _newsRepository.getMedia(page: 1);

      media = MediaInfoDataModel(
        e: media.e,
        r: media.r,
        errorMessage: media.errorMessage,
        list: media.list,
        isViewed: media.isViewed,
      );

      emit(
        initState.copyWith(
          media: media,
          offsetMedia: 1,
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

      NotificationInfoDataModel notificatios = await _newsRepository.getNotifications(page: 1);

      notificatios = NotificationInfoDataModel(
        e: notificatios.e,
        r: notificatios.r,
        errorMessage: notificatios.errorMessage,
        list: notificatios.list,
        isViewed: notificatios.isViewed,
      );

      emit(
        initState.copyWith(
          notificatios: notificatios,
          offsetNotificatios: 1,
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
}
