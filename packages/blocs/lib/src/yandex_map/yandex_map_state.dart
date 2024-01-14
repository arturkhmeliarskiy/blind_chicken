part of 'yandex_map_bloc.dart';

@freezed
class YandexMapState with _$YandexMapState {
  const factory YandexMapState.load() = LoadingYandexMapState;
  const factory YandexMapState.init() = InitYandexMapState;
  const factory YandexMapState.preloadDataCompleted({
    required ClusterizedPlacemarkCollection collection,
    required List<PlacemarkMapObject> listMapObject,
  }) = PreloadDataCompletedYandexMapState;
}
