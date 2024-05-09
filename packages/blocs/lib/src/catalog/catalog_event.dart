part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.init() = InitCatalogEvent;
  const factory CatalogEvent.preloadData() = PreloadDataCatalogEvent;
  const factory CatalogEvent.updateFavouritesProducts() = UpdateFavouritesProductsCatalogEvent;
  const factory CatalogEvent.subCategory({
    required String a,
    required int b,
    required int id,
    required String u,
    required int pid,
    MenuItemDataModel? item,
    int? selectedGenderIndex,
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
  const factory CatalogEvent.paginationProduct() = PaginationProductCatalogEvent;
  const factory CatalogEvent.searchBrand({
    required String query,
  }) = SearchBrandCatalogEvent;
  const factory CatalogEvent.pathMenu({
    MenuItemDataModel? item,
  }) = PathMenuCatalogEvent;
  const factory CatalogEvent.removePathMenu({
    required List<MenuItemDataModel> items,
  }) = RemovePathMenuCatalogEvent;
  const factory CatalogEvent.pathBrandMenu({
    required List<MenuItemDataModel> items,
  }) = PathBrandMenuCatalogEvent;
  const factory CatalogEvent.switchTypePeople({
    required int selectIndexType,
  }) = SwitchTypePeopleCatalogEvent;
  const factory CatalogEvent.getInfoProducts({
    required String path,
  }) = GetInfoProductsCatalogEvent;
  const factory CatalogEvent.getInfoProductsPushNotification({
    required String path,
    required String sort,
    required String filterSelect,
  }) = GetInfoProductsPushNotificationCatalogEvent;
  const factory CatalogEvent.getInfoProduct({
    required String code,
    bool? isUpdate,
  }) = GetInfoProductCatalogEvent;
  const factory CatalogEvent.sortProducts({
    required String value,
  }) = SortProductsCatalogEvent;
  const factory CatalogEvent.goBackProductInfo() = GoBackProductInfoCategotyCatalogEvent;
  const factory CatalogEvent.changeSizeProduct({
    required SkuProductDataModel selectSizeProduct,
  }) = ChangeSizeProductCatalogEvent;
  const factory CatalogEvent.removeSelectFilterCategory({
    required int index,
  }) = RemoveSelectFilterCategotyCatalogEvent;
  const factory CatalogEvent.removeSelectAllFilters() = RemoveSelectAllFiltersCategotyCatalogEvent;
  const factory CatalogEvent.addProductToSoppingCart() = AddProductToSoppingCartCatalogEvent;
  const factory CatalogEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToSoppingCartCatalogEvent;
}
