part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.init() = InitFavouritesEvent;
  const factory FavouritesEvent.preloadData() = PreloadDataFavouritesEvent;
  const factory FavouritesEvent.selectFilter({
    required int index,
    required int indexItem,
    required FilterItemDataModel item,
  }) = SelectFilterFavouritesEvent;
  const factory FavouritesEvent.deleteFilter({
    required int index,
    required int indexItem,
    required FilterItemDataModel item,
  }) = DeleteFilterFavouritesEvent;
  const factory FavouritesEvent.removeSelectFilterCategory({
    required int index,
  }) = RemoveSelectFilterCategotyFavouritesEvent;
  const factory FavouritesEvent.removeSelectAllFilters() =
      RemoveSelectAllFiltersCategotyFavouritesEvent;
  const factory FavouritesEvent.deleteCatalogFilter({
    required int key,
    required int index,
    required FilterItemDataModel item,
  }) = DeleteCatalogFavouritesEvent;
  const factory FavouritesEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductFavouritesEvent;
  const factory FavouritesEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductFavouritesEvent;
  const factory FavouritesEvent.getInfoProduct({
    required String code,
    SkuProductDataModel? size,
    bool? isUpdate,
  }) = GetInfoProductFavouritesEvent;
  const factory FavouritesEvent.checkButtonTop({
    required bool isButtonTop,
  }) = CheckButtonTopFavouritesEvent;
  const factory FavouritesEvent.changeSizeProduct({
    required SkuProductDataModel selectSizeProduct,
  }) = ChangeSizeProductFavouritesEvent;
  const factory FavouritesEvent.goBackProductInfo() = GoBackProductInfoCategotyFavouritesEvent;
  const factory FavouritesEvent.paginationProduct() = PaginationProductFavouritesEvent;
  const factory FavouritesEvent.addProductToSoppingCart({
    required int code,
    SkuProductDataModel? size,
  }) = AddProductToSoppingCartFavouritesEvent;
  const factory FavouritesEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToSoppingCartFavouritesEvent;
  const factory FavouritesEvent.getInfoProductSize({
    required String code,
    required bool isShop,
  }) = GetInfoProductSizeFavouritesEvent;
  const factory FavouritesEvent.updateInfoProducts() = UpdateInfoProductsFavouritesEvent;
}
