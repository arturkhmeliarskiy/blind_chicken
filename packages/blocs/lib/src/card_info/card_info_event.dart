part of 'card_info_bloc.dart';

@freezed
class CardInfoEvent with _$CardInfoV2Event {
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
  }) = InitCardInfoV2Event;
  const factory CardInfoEvent.preloadData() = PreloadDataCardInfoV2Event;
  const factory CardInfoEvent.getProduct({
    required String code,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    SkuProductDataModel? size,
    bool? isUpdate,
}) = GetProductCardInfoV2Event;

  const factory CardInfoEvent.goBackProductInfo() =
  GoBackProductInfoCategotyCardInfoV2Event;

  const factory CardInfoEvent.getInfoProductSize({
    required String code,
    required bool isShop,
  }) = GetInfoProductSizeCardInfoV2Event;

  const factory CardInfoEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductCardInfoV2Event;

  const factory CardInfoEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductCardInfoV2Event;

  const factory CardInfoEvent.addProductToSoppingCart({
    required BasketInfoItemDataModel item,
  }) = AddProductToShoppingCartCardInfoV2Event;

  const factory CardInfoEvent.addProductToSoppingCartInfo() =
  AddProductToSoppingCardInfoV2Event;

  const factory CardInfoEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToCardInfoV2Event;

  const factory CardInfoEvent.changeSizeProduct({
    required SkuProductDataModel selectSizeProduct,
  }) = ChangeSizeProductCardInfoV2Event;
}
