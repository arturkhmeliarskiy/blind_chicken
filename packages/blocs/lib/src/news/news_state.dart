part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.init() = InitNewsState;
  const factory NewsState.load({
    int? countBadgesTotal,
    int? countBadgesNews,
    int? countBadgesMedia,
    int? countBadgesNotificatios,
  }) = LoadingNewsState;
  const factory NewsState.loadErrorButton() = LoadingErrorButtonNewsState;
  const factory NewsState.error({
    required String errorMessage,
  }) = ErrorNewsState;
  const factory NewsState.preloadDataCompleted({
    required NewsInfoDataModel news,
    required MediaInfoDataModel media,
    required NotificationInfoDataModel notificatios,
    required int offsetNews,
    required int offsetMedia,
    required int offsetNotificatios,
    required List<String> listNewsPath,
    required bool isUpdateVersionApp,
    required bool isNotification,
    required int countBadgesTotal,
    required int countBadgesNews,
    required int countBadgesMedia,
    required int countBadgesNotificatios,
    required bool isButtonTop,
    OneNewsInfoDataModel? oneNews,
    OneMediaInfoDataModel? oneMedia,
    OneNotificationInfoDataModel? oneNotification,
    String? typeError,
    String? errorMessage,
    bool? isError,
    bool? isLoadErrorButton,
  }) = PreloadDataCompletedNewsState;
}
