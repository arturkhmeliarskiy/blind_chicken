part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.init() = InitCatalogState;
  const factory CatalogState.load() = LoadingCatalogState;
  const factory CatalogState.preloadDataCompleted({
    required List<MenuItemDataModel> menu,
    required List<ProductDataModel> defaultProducts,
    required List<ProductDataModel> products,
    required List<ProductDataModel> favouritesProducts,
    required List<FilterInfoDataModel> filter,
    required Map<int, List<FilterItemDataModel>> selectFilter,
    required List<Map<int, FilterItemDataModel>> allSelectFilter,
    required List<MenuItemDataModel> pathMenu,
  }) = PreloadDataCompletedCatalogState;
}
