part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.init() = InitNewsState;
  const factory NewsState.load() = LoadingNewsState;
  const factory NewsState.preloadDataCompleted({
    required NewsInfoDataModel news,
    required MediaInfoDataModel media,
    required NotificationInfoDataModel notificatios,
    required int offsetNews,
    required int offsetMedia,
    required int offsetNotificatios,
  }) = PreloadDataCompletedNewsState;
}
