part of 'news_app_bar_bloc.dart';

@freezed
class NewsAppBarState with _$NewsAppBarState {
  const factory NewsAppBarState.init() = InitNewsAppBarState;
  const factory NewsAppBarState.preloadDataCompleted({
    required bool isShowHeader,
  }) = PreloadDataCompletedNewsAppBarState;
}
