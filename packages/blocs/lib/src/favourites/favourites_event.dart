part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.preloadData() = InitFavouritesEvent;

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
  }) = GetInfoProductFavouritesEvent;
  const factory FavouritesEvent.goBackProductInfo() = GoBackProductInfoCategotyFavouritesEvent;
}
