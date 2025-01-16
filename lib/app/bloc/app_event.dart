part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.init() = Init;

  const factory AppEvent.appLifecycleStateChanged(AppLifecycleState state) = AppLifecycleStateChanged;

  const factory AppEvent.memoryUsagePressed() = MemoryUsagePressed;

  const factory AppEvent.switchLocale(Locale locale) = SwitchLocale;

  const factory AppEvent.showDebugOverlay({bool? visible}) = ShowDebugOverlay;

  const factory AppEvent.showErrorDialog({BlocAction? action}) = ShowErrorDialog;
}
