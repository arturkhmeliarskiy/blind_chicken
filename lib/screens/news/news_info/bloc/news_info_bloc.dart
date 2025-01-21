import 'dart:async';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:blind_chicken/core/bloc/base_bloc_state.dart';
import 'package:blind_chicken/core/bloc/bloc_action.dart';
import 'package:blind_chicken/core_config/data/repositories/local/local_repository.dart';
import 'package:blind_chicken/core_config/data/repositories/remote/remote_repository.dart';
import 'package:blind_chicken/core_config/models/error_response.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:blind_chicken/old_repos/api_models/src/news/notification_info_response.dart';
import 'package:blind_chicken/old_repos/models/src/news/notification_info_item_data_model.dart';
import 'package:blind_chicken/old_repos/shared/src/constants/shared_pref_keys.dart';
import 'package:blind_chicken/old_repos/shared/src/services/shared_preferences_service.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/news/news_info/models/news_info_transformer.dart';
import 'package:blind_chicken/screens/news/news_info/models/news_model.dart';
import 'package:blind_chicken/screens/news/news_info/models/unread_model.dart';
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
    this._localRepository,
  ) : super(NewsInfoState()) {
    on<_Init>(_init);
    on<_LoadMore>(_loadMore);
    on<_PressedOnNotification>(_pressedOnNotification);
    on<_ItemWasRead>(_itemWasRead);
    on<_SwitchTab>(_switchTab);
    on<_LikeSelected>(_likeSelected);
    on<_OnScrollUp>(_onScrollUp);
    on<_HideArrow>(_hideArrow);
    add(const NewsInfoEvent.init());
  }

  final AppRouter _appRouter;
  final RemoteRepository _remoteRepository;
  final LocalRepository _localRepository;

  FutureOr<void> _init(
    _Init event,
    Emitter<NewsInfoState> emit,
  ) async {
    _appRouter;
    Either<ErrorResponse?, News?> newsResponse = await _remoteRepository.news.getNews(page: 1);
    Either<ErrorResponse?, UnreadModel?> newsResponseUnread = await _remoteRepository.news.getUnread(
      typeContent: TypeContent.news,
    );
    newsResponseUnread.fold(
      (l) {
        emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
      },
      (r) {
        emit(state.copyWith(unreadModel: r));
      },
    );
    Either<ErrorResponse?, NotificationInfoResponse?> notificationsResponse =
        await _remoteRepository.news.getNotification(page: 1);
    newsResponse.fold(
      (l) {
        emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
      },
      (r) {
        List<NewsElement> list = [];
        for (var item in r?.list ?? []) {
          if (_localRepository.getNewsWasReadValue(item.id)) {
            item.isViewed = true;
          }
          list.add(item);
        }
        emit(state.copyWith(listNews: list));
      },
    );
    notificationsResponse.fold(
      (l) {
        emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
      },
      (r) {
        List<NotificationInfoItemDataModel> list = [];
        for (var item in r?.list ?? []) {
          list.add(NewsInfoTransformer.transformNotificationResponseToDataModel(item));
        }
        emit(state.copyWith(listNotifications: list));
      },
    );
    emit(state.copyWith(isLoading: false));
  }

  FutureOr<void> _loadMore(_LoadMore event, Emitter<NewsInfoState> emit) async {
    // Чтобы не дублировать новости, мы используем длину списка новостей,
    // разделенную на 10 (количество новостей на странице) + 1 (номер следующей страницы)
    // и используем полученный номер страницы в вызове getNews.

    Either<ErrorResponse?, News?> newsResponse = await _remoteRepository.news.getNews(
      page: state.listNews.length ~/ 10 + 1,
    );

    newsResponse.fold(
      (l) {
        emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
      },
      (r) {
        List<NewsElement> list = [];
        for (var item in state.listNews) {
          list.add(item);
        }
        for (var item in r?.list ?? []) {
          if (_localRepository.getNewsWasReadValue(item.id)) {
            item.isViewed = true;
          }
          list.add(item);
        }
        emit(state.copyWith(listNews: list.toList()));
      },
    );
  }

  FutureOr<void> _pressedOnNotification(_PressedOnNotification event, Emitter<NewsInfoState> emit) async {
    await _appRouter.push(NotificationInfoDescriptionRoute(info: event.item));
  }

  FutureOr<void> _itemWasRead(_ItemWasRead event, Emitter<NewsInfoState> emit) async {
    //Either<ErrorResponse?, UnreadModel?> newsResponseUnread = await _remoteRepository.news.sendWhatRead(
    //  idRead: event.item.id,
    //  typeContent: state.typeContentActive,
    //);
    //newsResponseUnread.fold(
    //  (l) {
    //    emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
    //  },
    //  (r) {
    //    emit(state.copyWith(unreadModel: r));
    //  },
    //);
//
    //for (var item in state.listNews) {
    //  if (item.id == event.item.id) {
    //    logging(item.toRawJson(), name: 'item');
    //  }
    //}
    //await _localRepository.setNewsWasReadValue(event.item.id);
    //List<NewsElement> list = [];
    //for (var item in state.listNews) {
    //  if (item.id == event.item.id) {
    //    NewsElement newsElement = NewsElement.fromRawJson(item.toRawJson());
    //    newsElement.isViewed = true;
    //    list.add(newsElement);
    //  } else {
    //    list.add(item);
    //  }
    //}
    //emit(state.copyWith(listNews: list.toList()));
    //for (var item in state.listNews) {
    //  if (item.id == event.item.id) {
    //    logging(item.toRawJson(), name: 'item');
    //  }
    //}
  }

  FutureOr<void> _switchTab(_SwitchTab event, Emitter<NewsInfoState> emit) {
    emit(state.copyWith(typeContentActive: event.typeContent));
    AppMetrica.reportEvent(_getAppMetricaEvent(event.typeContent));
  }

  String _getAppMetricaEvent(TypeContent typeContent) {
    switch (typeContent) {
      case TypeContent.news:
        return 'Переход на страницу новостей из верхней панели навигации';
      case TypeContent.notice:
        return 'Переход на страницу уведомлений из верхней панели навигации';
      case TypeContent.media:
        return 'Переход на страницу медиа из верхней панели навигации';
      default:
        return '';
    }
  }

  FutureOr<void> _likeSelected(_LikeSelected event, Emitter<NewsInfoState> emit) async {
    SharedPreferencesService sharedPreferencesService = SharedPreferencesService();
    await sharedPreferencesService.initialize();
    final isAuth = sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;

    if (isAuth == false) {
      emit(state.copyWith(action: LogInToLike()));
    } else {
      await _remoteRepository.news.likeNews(
        idNews: event.item.id,
        isLiked: event.isLike,
      );
    }
  }

  FutureOr<void> _onScrollUp(_OnScrollUp event, Emitter<NewsInfoState> emit) {
    emit(state.copyWith(isArrowVisible: event.scrollPosition < 90));
  }

  FutureOr<void> _hideArrow(_HideArrow event, Emitter<NewsInfoState> emit) {
    emit(state.copyWith(isArrowVisible: false));
  }
}
