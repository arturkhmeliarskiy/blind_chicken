part of 'card_info_bloc.dart';

@freezed
class CardInfoEvent with _$CardInfoEvent {
  const factory CardInfoEvent.init({
    required List<ProductDataModel> favouritesProducts,
    required List<String> listProductsCode,
    required List<int> favouritesProductsId,
    required bool isLoadGetSizeProduct,
    required String codeProduct,
    BasketInfoItemDataModel? itemInfo,
    required ProductDataModel product,
    int? indexItem,
    bool? isLoadErrorButton,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    bool? isShopGetSizeProduct,
  }) = InitCardInfoEvent;
  const factory CardInfoEvent.preloadData() = PreloadDataCardInfoEvent;
  const factory CardInfoEvent.getProduct({
    required String code,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    SkuProductDataModel? size,
    bool? isUpdate,
}) = GetProductCardInfoEvent;

  const factory CardInfoEvent.goBackProductInfo() =
  GoBackProductInfoCategotyCardInfoEvent;

  const factory CardInfoEvent.getInfoProductSize({
    required String code,
    required bool isShop,
  }) = GetInfoProductSizeCardInfoEvent;

  const factory CardInfoEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductCardInfoEvent;

  const factory CardInfoEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductCardInfoEvent;

  const factory CardInfoEvent.addProductToSoppingCart({
    required BasketInfoItemDataModel item,
  }) = AddProductToShoppingCartCardInfoEvent;

  const factory CardInfoEvent.addProductToSoppingCartInfo() =
  AddProductToSoppingCardInfoEvent;

  const factory CardInfoEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToCardInfoEvent;

  const factory CardInfoEvent.changeSizeProduct({
    required SkuProductDataModel selectSizeProduct,
  }) = ChangeSizeProductCardInfoEvent;
}
