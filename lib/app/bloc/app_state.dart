part of 'app_bloc.dart';

@freezed
class AppState extends BaseBlocState with _$AppState {
  factory AppState({
    BlocAction? action,
    @Default(null) Locale? locale,
    @Default(false) bool visibleDebugOverlay,
  }) = _AppState;
}
