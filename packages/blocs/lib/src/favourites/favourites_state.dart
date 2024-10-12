part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.init() = InitFavouritesState;
  const factory FavouritesState.load() = LoadingFavouritesState;
  const factory FavouritesState.loadErrorButton() = LoadingErrorButtonFavouritesState;
  const factory FavouritesState.openSoppingCart() = OpenSoppingCartFavouritesState;
  const factory FavouritesState.getSizeProduct({
    required String code,
    required List<SkuProductDataModel> listSize,
    required List<SkuProductDataModel> listSizeToSoppingCart,
    required String titleScreen,
  }) = GetSizeProductFavouritesState;
  const factory FavouritesState.addProductToSoppingCart({
    required String code,
    required String titleScreen,
  }) = AddProductFavouritesState;
  const factory FavouritesState.error({
    required String errorMessage,
  }) = ErrorFavouritesState;
  const factory FavouritesState.productsFavourites({
    required List<ProductDataModel> favouritesProducts,
    required List<ProductDataModel> favouritesDefaultProducts,
    required List<FilterInfoDataModel> filter,
    required Map<int, List<FilterItemDataModel>> selectFilter,
    required List<Map<int, FilterItemDataModel>> allSelectFilter,
    required FavouritesCatalogProductsRequest request,
    required List<String> listProductsCode,
    required List<int> favouritesProductsId,
    required List<ProductDataModel> listProdcutsStyle,
    required List<ProductDataModel> listProdcutsAlso,
    required List<ProductDataModel> listProdcutsBrand,
    required List<ProductDataModel> listProdcutsComplect,
    required bool isAuth,
    required int offset,
    required bool isButtonTop,
    required List<SkuProductDataModel> listSize,
    required bool isLoadGetSizeProduct,
    required int userDiscount,
    String? typeError,
    String? errorMessage,
    bool? isError,
    bool? isLoadErrorButton,
    int? keyFilterCatalog,
    int? indexFileter,
    int? indexItemFileter,
    int? indexFilterCategory,
    FilterItemDataModel? itemFileter,
    int? indexProduct,
    ProductDataModel? favouriteProduct,
    bool? isShopGetSizeProduct,
    String? codeProduct,
    SkuProductDataModel? selectSizeProduct,
    bool? isShoppingCart,
    bool? isShoppingCartDetailsProduct,
    bool? isUpdate,
    FavouritesCatalogInfoDataModel? favouritesProductsInfo,
    DetailProductDataModel? detailsProduct,
  }) = ProductsFavouritesState;
}
