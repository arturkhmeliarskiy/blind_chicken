part of 'boutiques_bloc.dart';

@freezed
class BoutiquesState with _$BoutiquesState {
  const factory BoutiquesState.init() = InitBoutiquesState;
  const factory BoutiquesState.load() = LoadingBoutiquesState;
  const factory BoutiquesState.loadErrorButton() = LoadingErrorButtonBoutiquesState;
  const factory BoutiquesState.error({
    required String errorMessage,
    String? uid,
  }) = ErrorBoutiquesState;
  const factory BoutiquesState.preloadDataCompleted({
    required List<BoutiqueDataModel> boutiques,
    required bool isUpdateVersionApp,
    required bool isNotification,
    List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
    BoutiqueDataInfoDataModel? boutiqueDetails,
  }) = PreloadDataCompletedBoutiquesState;
}
