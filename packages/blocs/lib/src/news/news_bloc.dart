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
        paginationNews: (event) => _paginationNews(event, emit),
        paginationMedia: (event) => _paginationMedia(event, emit),
        paginationNotificatios: (event) => _paginationNotificatios(event, emit),
      ),
    );
  }
  Future<void> _init(
    InitNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    final news = await _newsRepository.getNews();
    final media = await _newsRepository.getMedia();
    final notificatios = await _newsRepository.getNotifications();

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

  Future<void> _paginationNews(
    PaginationNewsNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        offsetNews: initState.offsetNews + 1,
      ));
    });
  }

  Future<void> _paginationMedia(
    PaginationMediasNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        offsetMedia: initState.offsetMedia + 1,
      ));
    });
  }

  Future<void> _paginationNotificatios(
    PaginationNotificatiosNewsEvent event,
    Emitter<NewsState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        offsetNotificatios: initState.offsetNotificatios + 1,
      ));
    });
  }
}
