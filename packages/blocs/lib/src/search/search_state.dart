part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.init() = InitSearchState;
  const factory SearchState.load() = LoadingSearchState;
  const factory SearchState.openSoppingCart() = OpenSoppingCartSearchState;
  const factory SearchState.getSizeProduct({
    required String code,
    required List<SkuProductDataModel> listSize,
    required List<SkuProductDataModel> listSizeToSoppingCart,
    required String titleScreen,
    required String query,
  }) = GetSizeProductSearchState;
  const factory SearchState.error({
    required String errorMessage,
  }) = ErrorSearchState;
  const factory SearchState.addProductToSoppingCart({
    required String code,
    required String titleScreen,
    required String query,
  }) = AddProductSearchState;
  const factory SearchState.searchProductsResult({
    required List<ProductDataModel> searchDefaultProducts,
    required List<ProductDataModel> searchProducts,
    required List<ProductDataModel> products,
    required List<CatalogSectionDataModel> searchSections,
    required List<FilterInfoDataModel> filter,
    required Map<int, List<FilterItemDataModel>> selectFilter,
    required List<Map<int, FilterItemDataModel>> allSelectFilter,
    required List<ProductDataModel> listProdcutsStyle,
    required List<ProductDataModel> listProdcutsAlso,
    required List<ProductDataModel> listProdcutsBrand,
    required List<ProductDataModel> listProdcutsComplect,
    required List<int> favouritesProductsId,
    required String query,
    required bool isLoading,
    required CatalogSearchProductsRequest request,
    required List<String> listProductsCode,
    required bool isAuth,
    required int offset,
    required bool isButtonTop,
    required List<SkuProductDataModel> listSize,
    required bool isLoadGetSizeProduct,
    required int userDiscount,
    required int productsCount,
    String? codeProduct,
    SkuProductDataModel? selectSizeProduct,
    bool? isShoppingCart,
    bool? isShoppingCartDetailsProduct,
    DetailProductDataModel? detailsProduct,
    List<ProductDataModel>? favouritesProducts,
    bool? isLoadErrorButton,
    CatalogSearchInfoDataModel? searchResultInfo,
    int? indexProduct,
    ProductDataModel? favouriteProduct,
    bool? isShopGetSizeProduct,
    String? errorMessage,
    String? typeError,
    bool? isError,
    int? keyFilterCatalog,
    int? indexFileter,
    int? indexItemFileter,
    int? indexFilterCategory,
    FilterItemDataModel? itemFileter,
  }) = SearchProductsResultSearchState;
}
