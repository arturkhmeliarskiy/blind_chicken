part of 'top_banner_bloc.dart';

@freezed
class TopBannerEvent with _$TopBannerEvent {
  const factory TopBannerEvent.preloadData() = PreloadDataTopBannerEvent;
}
