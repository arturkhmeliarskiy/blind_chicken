part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.init() = InitNewsEvent;
  const factory NewsEvent.getNews() = GetNewsEvent;
  const factory NewsEvent.getMedia() = GetMediaEvent;
  const factory NewsEvent.getNotifications() = GetNotificationsEvent;
  const factory NewsEvent.paginationNews() = PaginationNewsNewsEvent;
  const factory NewsEvent.paginationMedia() = PaginationMediasNewsEvent;
  const factory NewsEvent.paginationNotifications() = PaginationNotificationsNewsEvent;
}
