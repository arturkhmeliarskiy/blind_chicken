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

  bool _isLoadingMore = false; // Флаг для отслеживания выполнения метода

  FutureOr<void> _loadMore(_LoadMore event, Emitter<NewsInfoState> emit) async {
    // Проверяем, запущен ли уже метод
    if (_isLoadingMore) return;
    // Устанавливаем флаг, чтобы предотвратить повторное выполнение
    _isLoadingMore = true;
    try {
      // Чтобы не дублировать новости, мы используем длину списка новостей,
      // разделенную на 10 (количество новостей на странице) + 1 (номер следующей страницы)
      // и используем полученный номер страницы в вызове getNews.
      Either<ErrorResponse?, News?> newsResponse = await _remoteRepository.news.getNews(
        page: (state.listNews.length ~/ 20) + 1,
      );
      newsResponse.fold(
        (l) {
          emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
        },
        (r) {
          // Инициализируем списки
          List<NewsElement> list = [];
          List<String> listIdList = [];

          // Добавляем элементы из текущего состояния
          for (var item in state.listNews) {
            list.add(item);
            listIdList.add(item.id);
          }

          // Добавляем новые элементы, помечаем их как прочитанные, если нужно
          for (var item in r?.list ?? []) {
            if (_localRepository.getNewsWasReadValue(item.id)) {
              item.isViewed = true;
            }
            list.add(item);
            listIdList.add(item.id);
          }

          // Создаем карту для подсчета повторений элементов
          Map<String, int> elementCount = {};

          // Подсчитываем количество элементов
          for (var element in listIdList) {
            elementCount[element] = (elementCount[element] ?? 0) + 1;
          }

          // Удаляем элементы, которые повторяются более одного раза
          List<NewsElement> uniqueList = [];
          for (var item in list) {
            if (elementCount[item.id] == 1) {
              uniqueList.add(item);
            } else if ((elementCount[item.id] ?? 0) > 1) {
              // Уменьшаем количество повторений
              if(elementCount[item.id] != null) {
                elementCount[item.id] = elementCount[item.id]! - 1;
              }
            }
          }

          // Обновляем состояние с уникальными новостями
          emit(state.copyWith(listNews: uniqueList));
        },
      );
    } finally {
      // Сбрасываем флаг, чтобы метод можно было вызвать снова
      _isLoadingMore = false;
    }
  }

  FutureOr<void> _pressedOnNotification(_PressedOnNotification event, Emitter<NewsInfoState> emit) async {
    await _appRouter.push(NotificationInfoDescriptionRoute(info: event.item));
  }

  final _callTimestamps = <DateTime>[];

  FutureOr<void> _itemWasRead(_ItemWasRead event, Emitter<NewsInfoState> emit) async {
    logging('sendWhatRead', stackTrace: StackTrace.current);
    final now = DateTime.now();

    if (shouldSkip(event.item.createAt)==false) {
      // Удаляем старые записи временных меток старше 1/3 секунды
      _callTimestamps.removeWhere((timestamp) => now.difference(timestamp).inMilliseconds > 333);

      // Добавляем текущую временную метку
      _callTimestamps.add(now);

      // Если количество вызовов больше 10 за последние 1/3 секунды, выходим из метода
      if (_callTimestamps.length > 10) {
        logging('Method call limit exceeded', name: 'itemWasRead', stackTrace: StackTrace.current);
        return;
      }

      Either<ErrorResponse?, UnreadModel?> newsResponseUnread = await _remoteRepository.news.sendWhatRead(
        idRead: event.item.id,
        typeContent: state.typeContentActive,
      );
      newsResponseUnread.fold(
        (l) {
          emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
        },
        (r) {
          emit(state.copyWith(unreadModel: r));
        },
      );

      for (var item in state.listNews) {
        if (item.id == event.item.id) {}
      }
      await _localRepository.setNewsWasReadValue(event.item.id);
      List<NewsElement> list = [];
      for (var item in state.listNews) {
        if (item.id == event.item.id) {
          NewsElement newsElement = NewsElement.fromRawJson(item.toRawJson());
          newsElement.isViewed = true;
          list.add(newsElement);
        } else {
          list.add(item);
        }
      }
      emit(state.copyWith(listNews: list.toList()));
      for (var item in state.listNews) {
        if (item.id == event.item.id) {}
      }
    } else {
      logging('Метод не выполнялся ввиду превышения даты', name: 'itemWasRead', stackTrace: StackTrace.current);
    }
  }

  bool shouldSkip(DateTime createAt) {
    DateTime? dateTime = _localRepository.getDateInstall();
    if (dateTime != null) {
      DateTime dateTimeMinusTwoWeeks = dateTime.subtract(Duration(days: 14));
      // Если дата создания новостей позже, чем дата установки минус две недели, пропустить (true)
      if (createAt.isAfter(dateTimeMinusTwoWeeks)) {
        return true; // ничего не делаем
      }
    }
    return false; // выполняем условие
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
      Either<ErrorResponse?, int> value = await _remoteRepository.news.likeNews(
        idNews: event.item.id,
        isLiked: event.isLike,
      );
      value.fold(
        (l) {
          emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l)));
        },
        (r) {
          for (var item in state.listNews) {
            if (item.id == event.item.id) {
              NewsElement newsElement = NewsElement.fromRawJson(item.toRawJson());
              newsElement.countLike = r;
              newsElement.isViewed = event.item.isViewed;
              newsElement.currentUserLikedIt = event.isLike;
              List<NewsElement> list = [];
              for (var item in state.listNews) {
                if (item.id == event.item.id) {
                  list.add(newsElement);
                } else {
                  list.add(item);
                }
              }
              list.add(newsElement);
              emit(state.copyWith(listNews: list.toList()));
            }
          }
        },
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
