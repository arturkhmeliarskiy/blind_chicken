part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.init() = InitBottomNavigationState;
  const factory BottomNavigationState.preloadDataCompleted({
    required bool absorbing,
  }) = PreloadDataCompletedBottomNavigationState;
}
