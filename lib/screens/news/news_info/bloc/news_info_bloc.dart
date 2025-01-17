import 'dart:async';

import 'package:blind_chicken/core/bloc/base_bloc_state.dart';
import 'package:blind_chicken/core/bloc/bloc_action.dart';
import 'package:blind_chicken/old_repos/models/src/news/news_info_item_data_model.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'news_info_bloc.freezed.dart';
part 'news_info_event.dart';
part 'news_info_state.dart';

class NewsInfoBloc extends Bloc<NewsInfoEvent, NewsInfoState> {
  NewsInfoBloc(
    this._appRouter,
  ) : super(NewsInfoState()) {
    on<_Init>(_init);
    add(const NewsInfoEvent.init());
  }


  final AppRouter _appRouter;

  FutureOr<void> _init(
    _Init event,
    Emitter<NewsInfoState> emit,
  ) async {
    _appRouter;
    emit(state.copyWith(isLoading: false));
  }
}
