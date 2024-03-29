part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.init() = InitSearchState;
  const factory SearchState.load() = LoadingSearchState;
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
    required List<int> favouritesProductsId,
    required String query,
    required bool isLoading,
    required CatalogSearchProductsRequest request,
    required List<String> listProductsCode,
    required bool isAuth,
    required int offset,
    bool? isSoppingCart,
    DetailProductDataModel? detailsProduct,
    List<ProductDataModel>? favouritesProducts,
    CatalogSearchInfoDataModel? searchResultInfo,
  }) = SearchProductsResultSearchState;
}
