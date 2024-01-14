part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.preloadData() = InitFavouritesEvent;
  const factory FavouritesEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductFavouritesEvent;
  const factory FavouritesEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductFavouritesEvent;
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
  const factory FavouritesEvent.deleteCatalogFilter({
    required int key,
    required int index,
    required FilterItemDataModel item,
  }) = DeleteCatalogFavouritesEvent;
}
