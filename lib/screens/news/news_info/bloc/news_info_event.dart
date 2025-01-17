part of 'news_info_bloc.dart';

@freezed
class NewsInfoEvent with _$NewsInfoEvent {
  const factory NewsInfoEvent.init() = _Init;
  const factory NewsInfoEvent.loadMore() = _LoadMore;
  const factory NewsInfoEvent.itemWasRead(NewsInfoItemDataModel item) = _ItemWasRead;
  const factory NewsInfoEvent.switchTab(int tabIndex) = _SwitchTab;
  const factory NewsInfoEvent.likeSelected() = _LikeSelected;
}

class TabPressed extends BlocAction {
  int tabIndex = 0;

  TabPressed({required this.tabIndex});
}
