part of 'search_location_bloc.dart';

@freezed
class SearchLocationState with _$SearchLocationState {
  const factory SearchLocationState.init() = InitSearchLocationState;
  const factory SearchLocationState.load() = LoadingSearchLocationState;
  const factory SearchLocationState.preloadData({
    required SearchLocationDataModel searchResult,
    required int price,
  }) = PreloadDataCompletedSearchLocationState;
}
