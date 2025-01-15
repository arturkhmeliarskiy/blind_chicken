part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.init() = InitNewsEvent;
  const factory NewsEvent.getNews({
    required bool isGoBack,
    bool? isCleanListNewsPath,
  }) = GetNewsEvent;
  const factory NewsEvent.getNewsDescriptionInfo({
    required String id,
    bool? isNotification,
    String? messageId,
  }) = GetNewsDescriptionInfoNewsEvent;
  const factory NewsEvent.getMedia() = GetMediaEvent;
  const factory NewsEvent.getMediaDescriptionInfo({
    required String id,
    bool? isNotification,
    String? messageId,
  }) = GetMediaDescriptionInfoNewsEvent;
  const factory NewsEvent.getNotifications() = GetNotificationsEvent;
  const factory NewsEvent.getNotificationDescriptionInfo({
    required String id,
    bool? isNotification,
    String? messageId,
  }) = GetNotificationDescriptionInfoNewsEvent;
  const factory NewsEvent.paginationNews() = PaginationNewsNewsEvent;
  const factory NewsEvent.paginationMedia() = PaginationMediasNewsEvent;
  const factory NewsEvent.paginationNotifications() = PaginationNotificationsNewsEvent;
  const factory NewsEvent.goBackNewsInfo() = GoBackNewsInfoNewsEvent;
  const factory NewsEvent.updateReadNews({
    required String id,
    required String typeNews,
  }) = UpdateReadNewsEvent;
  const factory NewsEvent.checkingReadNews() = CheckingReadNewsEvent;
  const factory NewsEvent.checkButtonTop({
    required bool isButtonTop,
  }) = CheckButtonTopNewsEvent;
  const factory NewsEvent.checkiDisabledVideo({
    required bool isDisabledVideo,
  }) = CheckDisabledVideoNewsEvent;
}
