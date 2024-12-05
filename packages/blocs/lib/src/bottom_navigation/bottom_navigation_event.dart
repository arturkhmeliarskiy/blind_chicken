part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.init() = InitBottomNavigationEvent;
  const factory BottomNavigationEvent.switchBlocked({
    required bool isBlocked,
  }) = SwitchBlockedBottomNavigationEvent;
}
