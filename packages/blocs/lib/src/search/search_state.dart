part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.init() = InitSearchState;
  const factory SearchState.load() = LoadingSearchState;
  const factory SearchState.searchProductsResult({
    required List<ProductDataModel> searchDefaultProducts,
    required List<ProductDataModel> searchProducts,
    List<ProductDataModel>? favouritesProducts,
    required List<Map<String, dynamic>> searchSections,
    required List<FilterInfoDataModel> filter,
    required Map<int, List<FilterItemDataModel>> selectFilter,
    required List<Map<int, FilterItemDataModel>> allSelectFilter,
    required String query,
    required bool isLoading,
  }) = SearchProductsResultSearchState;
}
