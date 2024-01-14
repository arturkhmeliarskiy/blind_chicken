part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.init() = InitFilterState;
  const factory FilterState.load() = LoadingFilterState;
  const factory FilterState.preloadDataCompleted({
    required List<FilterInfoDataModel> filter,
  }) = PreloadDataCompletedFilterState;
}
