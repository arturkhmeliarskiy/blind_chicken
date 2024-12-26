part of 'news_app_bar_bloc.dart';

@freezed
class NewsAppBarEvent with _$NewsAppBarEvent {
  const factory NewsAppBarEvent.init() = InitNewsAppBarEvent;
  const factory NewsAppBarEvent.showHeader({
    required bool isShowHeader,
  }) = ShowHeaderNewsAppBarEvent;
}
