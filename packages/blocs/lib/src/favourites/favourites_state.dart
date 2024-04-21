part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
  const factory FavouritesState.init() = InitFavouritesState;
  const factory FavouritesState.load() = LoadingFavouritesState;
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
    required bool isAuth,
    required int offset,
    required bool isButtonTop,
    bool? isSoppingCart,
    bool? isUpdate,
    FavouritesCatalogInfoDataModel? favouritesProductsInfo,
    DetailProductDataModel? detailsProduct,
  }) = ProductsFavouritesState;
}
