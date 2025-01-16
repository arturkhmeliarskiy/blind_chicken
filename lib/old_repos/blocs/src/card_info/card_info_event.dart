part of 'card_info_bloc.dart';

@freezed
class CardInfoEvent with _$CardInfoEvent {
  const factory CardInfoEvent.init(
  ) = InitCardInfoEvent;
 //const factory CardInfoEvent.preloadData() = PreloadDataCardInfoEvent;
  const factory CardInfoEvent.getProduct({
    required String code,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    ProductDataModel? product,
    SkuProductDataModel? size,
    bool? isUpdate,
    String? messageId,
}) = GetProductCardInfoEvent;

  const factory CardInfoEvent.goBackProductInfo() =
  GoBackProductInfoCategotyCardInfoEvent;

  const factory CardInfoEvent.getInfoProductSize({
    required String code,
    required bool isShop,
    required String titleScreen,
  }) = GetInfoProductSizeCardInfoEvent;

  const factory CardInfoEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductCardInfoEvent;

  const factory CardInfoEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductCardInfoEvent;

  const factory CardInfoEvent.addProductToSoppingCart({
    required SkuProductDataModel size,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
  }) = AddProductToSoppingCartCardInfoEvent;
  const factory CardInfoEvent.addProductToSoppingCartInfo() =
  AddProductToSoppingCardInfoEvent;

  const factory CardInfoEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToCardInfoEvent;
  const factory CardInfoEvent.checkOpenGetInfoProductSize({
    required bool isOpenGetSizeProduct,
  }) = CheckOpenGetInfoProductSizeCardInfoEvent;
  const factory CardInfoEvent.changeSizeProduct({
    required SkuProductDataModel selectSizeProduct,
  }) = ChangeSizeProductCardInfoEvent;
}
