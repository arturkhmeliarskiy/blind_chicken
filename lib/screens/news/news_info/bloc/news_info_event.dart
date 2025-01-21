part of 'news_info_bloc.dart';

@freezed
class NewsInfoEvent with _$NewsInfoEvent {
  const factory NewsInfoEvent.init() = _Init;

  const factory NewsInfoEvent.loadMore() = _LoadMore;

  const factory NewsInfoEvent.itemWasRead(NewsElement item) = _ItemWasRead;

  const factory NewsInfoEvent.switchTab(TypeContent typeContent) = _SwitchTab;

  const factory NewsInfoEvent.likeSelected(NewsElement item, bool isLike) = _LikeSelected;


  const factory NewsInfoEvent.pressedOnNotification(
    NotificationInfoItemDataModel item,
  ) = _PressedOnNotification;

  const factory NewsInfoEvent.onScrollUp(double scrollPosition) = _OnScrollUp;
  const factory NewsInfoEvent.hideArrow(double scrollPosition) = _HideArrow;

}

class TabPressed extends BlocAction {
  int tabIndex = 0;

  TabPressed({required this.tabIndex});
}

class LogInToLike extends BlocAction {}
