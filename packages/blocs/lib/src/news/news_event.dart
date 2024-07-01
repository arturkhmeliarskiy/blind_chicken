part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.init() = InitNewsEvent;
  const factory NewsEvent.paginationNews() = PaginationNewsNewsEvent;
  const factory NewsEvent.paginationMedia() = PaginationMediasNewsEvent;
  const factory NewsEvent.paginationNotificatios() = PaginationNotificatiosNewsEvent;
}
