part of 'boutiques_bloc.dart';

@freezed
class BoutiquesState with _$BoutiquesState {
  const factory BoutiquesState.init() = InitBoutiquesState;
  const factory BoutiquesState.load() = LoadingBoutiquesState;
  const factory BoutiquesState.preloadDataCompleted({
    required List<BoutiquesDataModel> boutiques,
  }) = PreloadDataCompletedBoutiquesState;
}
