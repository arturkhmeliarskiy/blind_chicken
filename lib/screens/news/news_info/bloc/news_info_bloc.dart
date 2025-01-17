import 'dart:async';

import 'package:blind_chicken/core/bloc/base_bloc_state.dart';
import 'package:blind_chicken/core/bloc/bloc_action.dart';
import 'package:blind_chicken/core_config/data/repositories/remote/remote_repository.dart';
import 'package:blind_chicken/core_config/models/error_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/news/news_info_response.dart';
import 'package:blind_chicken/old_repos/models/src/news/news_info_data_model.dart';
import 'package:blind_chicken/old_repos/models/src/news/news_info_item_data_model.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/news_info/models/news_info_transformer.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_info_bloc.freezed.dart';

part 'news_info_event.dart';

part 'news_info_state.dart';

class NewsInfoBloc extends Bloc<NewsInfoEvent, NewsInfoState> {
  NewsInfoBloc(
    this._appRouter,
    this._remoteRepository,
  ) : super(NewsInfoState()) {
    on<_Init>(_init);
    on<_LoadMore>(_loadMore);
    add(const NewsInfoEvent.init());
  }

  final AppRouter _appRouter;
  final RemoteRepository _remoteRepository;

  FutureOr<void> _init(
    _Init event,
    Emitter<NewsInfoState> emit,
  ) async {
    _appRouter;
    Either<ErrorResponse?, NewsInfoResponse?> newsResponse = await _remoteRepository.news.getNews(page: 1);
    newsResponse.fold(
      (l) {
        emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
      },
      (r) {
        List<NewsInfoItemDataModel> list = [];
        for (var item in r?.list ?? []) {
          list.add(NewsInfoTransformer.transformResponseToDataModel(item));
        }
        emit(state.copyWith(listNews: list));
      },
    );
    emit(state.copyWith(isLoading: false));
  }

  FutureOr<void> _loadMore(_LoadMore event, Emitter<NewsInfoState> emit) async {
    // Чтобы не дублировать новости, мы используем длину списка новостей,
    // разделенную на 10 (количество новостей на странице) + 1 (номер следующей страницы)
    // и используем полученный номер страницы в вызове getNews.

    Either<ErrorResponse?, NewsInfoResponse?> newsResponse = await _remoteRepository.news.getNews(
      page: state.listNews.length ~/ 10 + 1,
    );

    newsResponse.fold(
      (l) {
        emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
      },
      (r) {
        List<NewsInfoItemDataModel> list = [];
        for(var item in state.listNews) {
          list.add(item);
        }
        for (var item in r?.list ?? []) {
          list.add(NewsInfoTransformer.transformResponseToDataModel(item));
        }
        emit(state.copyWith(listNews: list.toList()));
      },
    );
  }
}
