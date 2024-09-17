part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.init() = InitCatalogState;
  const factory CatalogState.upload() = UploadCatalogState;
  const factory CatalogState.load() = LoadingCatalogState;
  const factory CatalogState.openSoppingCart() = OpenSoppingCartCatalogState;
  const factory CatalogState.getSizeProduct({
    required String code,
    required List<SkuProductDataModel> listSize,
    required List<SkuProductDataModel> listSizeToSoppingCart,
    required String titleScreen,
    required List<String> sectionCategoriesPath,
    required List<String> productCategoriesPath,
  }) = GetSizeProductCatalogState;
  const factory CatalogState.addProductToSoppingCart({
    required String code,
    required String titleScreen,
    required List<String> sectionCategoriesPath,
    required List<String> productCategoriesPath,
  }) = AddProductCatalogState;
  const factory CatalogState.error({
    required String errorMessage,
  }) = ErrorCatalogState;
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
    required List<ProductDataModel> listProdcutsComplect,
    required List<ProductDataModel> favouritesProducts,
    required List<int> favouritesProductsId,
    required List<FilterInfoDataModel> filter,
    required List<String> listProductsCode,
    required List<String> listCatalogPath,
    required Map<int, List<FilterItemDataModel>> selectFilter,
    required List<Map<int, FilterItemDataModel>> allSelectFilter,
    required List<MenuItemDataModel> pathMenu,
    required List<MainCategoryModel> category,
    required CatalogProductsRequest request,
    required int selectedGenderIndex,
    required bool isAuth,
    required int offset,
    required int userDiscount,
    required String nowVersionApp,
    required String updateVersionApp,
    required bool isUpdateVersionApp,
    required bool isNotification,
    required List<SkuProductDataModel> listSize,
    required bool isLoadGetSizeProduct,
    required bool isOpenGetSizeProduct,
    required bool isButtonTop,
    required bool isPromotionsForPurchases,
    PushNotificationMessageDataModel? notificationMessage,
    SkuProductDataModel? selectSizeProduct,
    String? errorMessage,
    String? codeProduct,
    bool? isShoppingCart,
    bool? isShoppingCartDetailsProduct,
    bool? isError,
    DetailProductDataModel? detailsProduct,
    CatalogDataModel? catalogInfo,
    String? title,
  }) = PreloadDataCompletedCatalogState;
}
