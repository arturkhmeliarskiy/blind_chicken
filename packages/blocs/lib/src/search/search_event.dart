part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.init() = InitSearchEvent;
  const factory SearchEvent.searchProfucts(
    String query,
  ) = ProfuctsSearchEvent;
  const factory SearchEvent.searchProfuctsInfo(
    String query,
  ) = ProfuctsInfoSearchEvent;
  const factory SearchEvent.selectFilter({
    required int index,
    required int indexItem,
    required FilterItemDataModel item,
  }) = SelectFilterSearchEvent;
  const factory SearchEvent.deleteFilter({
    required int index,
    required int indexItem,
    required FilterItemDataModel item,
  }) = DeleteFilterSearchEvent;
  const factory SearchEvent.removeSelectFilterCategory({
    required int index,
  }) = RemoveSelectFilterCategotySearchEvent;
  const factory SearchEvent.removeSelectAllFilters() = RemoveSelectAllFiltersCategotySearchEvent;
  const factory SearchEvent.deleteCatalogFilter({
    required int key,
    required int index,
    required FilterItemDataModel item,
  }) = DeleteCatalogSearchEvent;
  const factory SearchEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
    String? typeError,
  }) = AddFavouriteProductSearchEvent;
  const factory SearchEvent.deleteFavouriteProduct({
    required int index,
    String? typeError,
  }) = DeleteFavouriteProductSearchEvent;
  const factory SearchEvent.getInfoProduct({
    required String code,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    SkuProductDataModel? size,
    bool? isUpdate,
    String? typeError,
  }) = GetInfoProductSearchEvent;
  const factory SearchEvent.changeSizeProduct({
    required SkuProductDataModel selectSizeProduct,
  }) = ChangeSizeProductSearchEvent;
  const factory SearchEvent.goBackProductInfo() = GoBackProductInfoCategotySearchEvent;
  const factory SearchEvent.paginationProduct() = PaginationProductSearchEvent;
  const factory SearchEvent.addProductToSoppingCart({
    required int code,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    SkuProductDataModel? size,
  }) = AddProductToSoppingCartSearchEvent;
  const factory SearchEvent.checkButtonTop({
    required bool isButtonTop,
  }) = CheckButtonTopSearchEvent;
  const factory SearchEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToSoppingCartSearchEvent;
  const factory SearchEvent.getInfoProductSize({
    required String code,
    required bool isShop,
    required String titleScreen,
  }) = GetInfoProductSizeSearchEvent;
  const factory SearchEvent.updateInfoProducts({
    required String titleScreen,
  }) = UpdateInfoProductsSearchEvent;
}
