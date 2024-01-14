part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.preloadData() = InitCatalogEvent;
  const factory CatalogEvent.updateFavouritesProducts() = UpdateFavouritesProductsCatalogEvent;
  const factory CatalogEvent.subCategory({
    required String a,
    required int b,
    required int id,
    required String u,
    required int pid,
    MenuItemDataModel? item,
  }) = SubCategoryatalogEvent;
  const factory CatalogEvent.backPathMenu({
    required int idParent,
  }) = BackPathMenuCatalogEvent;
  const factory CatalogEvent.selectFilter({
    required int index,
    required int indexItem,
    required FilterItemDataModel item,
  }) = SelectFilterCatalogEvent;
  const factory CatalogEvent.deleteFilter({
    required int index,
    required int indexItem,
    required FilterItemDataModel item,
  }) = DeleteFilterCatalogEvent;
  const factory CatalogEvent.deleteCatalogFilter({
    required int key,
    required int index,
    required FilterItemDataModel item,
  }) = DeleteCatalogFilterEvent;
  const factory CatalogEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductCatalogEvent;
  const factory CatalogEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductCatalogEvent;
  const factory CatalogEvent.paginationProduct({
    required int offset,
    required int limit,
  }) = PaginationProductCatalogEvent;
}
