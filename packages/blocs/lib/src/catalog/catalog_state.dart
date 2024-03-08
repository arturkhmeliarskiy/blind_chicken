part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.init() = InitCatalogState;
  const factory CatalogState.upload() = UploadCatalogState;
  const factory CatalogState.load() = LoadingCatalogState;
  const factory CatalogState.preloadDataCompleted({
    required List<String> allBrands,
    required List<String> defaultBrands,
    required List<String> brands,
    required List<MenuItemDataModel> menu,
    required List<ProductDataModel> defaultProducts,
    required List<ProductDataModel> products,
    required List<ProductDataModel> listProdcutsStyle,
    required List<ProductDataModel> listProdcutsAlso,
    required List<ProductDataModel> listProdcutsBrand,
    required List<ProductDataModel> favouritesProducts,
    required List<int> favouritesProductsId,
    required List<FilterInfoDataModel> filter,
    required List<String> listProductsCode,
    required Map<int, List<FilterItemDataModel>> selectFilter,
    required List<Map<int, FilterItemDataModel>> allSelectFilter,
    required List<MenuItemDataModel> pathMenu,
    required List<MainCategoryModel> category,
    required CatalogProductsRequest request,
    required int selectedGenderIndex,
    required bool isAuth,
    required int offset,
    DetailProductDataModel? detailsProduct,
    CatalogDataModel? catalogInfo,
    String? title,
  }) = PreloadDataCompletedCatalogState;
}
