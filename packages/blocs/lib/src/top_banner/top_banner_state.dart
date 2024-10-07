part of 'top_banner_bloc.dart';

@freezed
class TopBannerState with _$TopBannerState {
  const factory TopBannerState.init() = InitTopBannerState;
  const factory TopBannerState.load() = LoadingTopBannerState;
  const factory TopBannerState.error({
    required String errorMessage,
  }) = ErrorTopBannerState;
  const factory TopBannerState.preloadData({
    required TopBannerDataModel info,
  }) = PreloadDataCompletedTopBannerState;
}
