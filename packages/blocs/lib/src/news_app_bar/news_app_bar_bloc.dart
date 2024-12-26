import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_app_bar_bloc.freezed.dart';
part 'news_app_bar_event.dart';
part 'news_app_bar_state.dart';

class NewsAppBarBloc extends Bloc<NewsAppBarEvent, NewsAppBarState> {
  NewsAppBarBloc() : super(const NewsAppBarState.init()) {
    on<NewsAppBarEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        showHeader: (event) => _showHeader(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitNewsAppBarEvent event,
    Emitter<NewsAppBarState> emit,
  ) async {
    emit(NewsAppBarState.preloadDataCompleted(
      isShowHeader: true,
    ));
  }

  Future<void> _showHeader(
    ShowHeaderNewsAppBarEvent event,
    Emitter<NewsAppBarState> emit,
  ) async {
    emit(NewsAppBarState.preloadDataCompleted(
      isShowHeader: event.isShowHeader,
    ));
  }
}
