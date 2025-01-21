part of 'news_info_bloc.dart';

@freezed
class NewsInfoState extends BaseBlocState with _$NewsInfoState {
  factory NewsInfoState({
    BlocAction? action,
    @Default(true) bool isLoading,
    @Default([]) List<NewsElement> listNews,
    @Default([]) List<NotificationInfoItemDataModel> listNotifications,
    @Default(null) UnreadModel? unreadModel,
    @Default(TypeContent.news) TypeContent typeContentActive,
    @Default(false) bool isArrowVisible,
  }) = _StartState;
}
