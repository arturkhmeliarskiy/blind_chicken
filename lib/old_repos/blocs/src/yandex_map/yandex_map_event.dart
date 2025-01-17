part of 'yandex_map_bloc.dart';

@freezed
class YandexMapEvent with _$YandexMapEvent {
  const factory YandexMapEvent.preloadData() = InitYandexMapEvent;
}
