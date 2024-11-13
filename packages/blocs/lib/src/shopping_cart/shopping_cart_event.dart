part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartEvent with _$ShoppingCartEvent {
  const factory ShoppingCartEvent.init() = InitShoppingCartEvent;
  const factory ShoppingCartEvent.preloadData() = PreloadDataShoppingCartEvent;
  const factory ShoppingCartEvent.addProductToSoppingCart({
    required BasketInfoItemDataModel item,
  }) = AddProductToSoppingCartEvent;
  const factory ShoppingCartEvent.addOtherProductToSoppingCart({
    required BasketInfoItemDataModel item,
    String? titleScreen,
    String? typeAddProductToShoppingCart,
  }) = AddOtherProductToSoppingCartEvent;
  const factory ShoppingCartEvent.deleteProductToSoppingCart({
    required BasketInfoItemDataModel item,
    required int index,
  }) = DeleteProductToSoppingCartEvent;
  const factory ShoppingCartEvent.updateProductToSoppingCart({
    required BasketInfoItemDataModel item,
    required int index,
  }) = UpdateProductToSoppingCartEvent;
  const factory ShoppingCartEvent.paymentBonus() = PaymentBonusSoppingCartEvent;
  const factory ShoppingCartEvent.initGiftCard() = InitGiftCardSoppingCartEvent;
  const factory ShoppingCartEvent.giftCard({
    required String number,
    required String pin,
  }) = GiftCardSoppingCartEvent;
  const factory ShoppingCartEvent.addGiftCard({
    required BasketSertDeliveryRequest giftCard,
  }) = AddGiftCardSoppingCartEvent;
  const factory ShoppingCartEvent.promoCode({
    required String promoCode,
    required String uid,
  }) = PromoCodeSoppingCartEvent;
  const factory ShoppingCartEvent.removePromoCode() = RemovePromoCodeSoppingCartEvent;
  const factory ShoppingCartEvent.createOrder({
    required BasketOrderRequest request,
  }) = CreateOrderPromoCodeSoppingCartEvent;
  const factory ShoppingCartEvent.bonuses({
    required int bonuses,
  }) = BonusesSoppingCartEvent;
  const factory ShoppingCartEvent.getInfoProduct({
    required String code,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    SkuProductDataModel? size,
    bool? isUpdate,
  }) = GetInfoProductShoppingCartEvent;
  const factory ShoppingCartEvent.goBackProductInfo() = GoBackProductInfoCategotyShoppingCartEvent;
  const factory ShoppingCartEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductShoppingCartEvent;
  const factory ShoppingCartEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductShoppingCartEvent;
  const factory ShoppingCartEvent.addProductToSoppingCartInfo() = AddProductToSoppingCartInfoEvent;
  const factory ShoppingCartEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToSoppingCartEvent;
  const factory ShoppingCartEvent.changeSizeProduct({
    required SkuProductDataModel selectSizeProduct,
  }) = ChangeSizeProductSoppingCartEvent;
  const factory ShoppingCartEvent.openAuthModel() = OpenAuthModelSoppingCartEvent;
  const factory ShoppingCartEvent.closeAuthModel() = CloseAuthModelSoppingCartEvent;
  const factory ShoppingCartEvent.changeReceivingType({
    required String receivingType,
  }) = ChangeReceivingTypeSoppingCartEvent;
  const factory ShoppingCartEvent.changeUidPickUpPoint({
    required String uidPickUpPoint,
  }) = ChangeUidPickUpPointSoppingCartEvent;
  const factory ShoppingCartEvent.selectAddressDelivery({
    required int index,
  }) = SelectAddressDeliverySoppingCartEvent;
  const factory ShoppingCartEvent.addAddressDelivery({
    required BasketAddressDataModel addressDelivery,
    required int delivery,
    required String cityId,
  }) = AddAddressDeliverySoppingCartEvent;
  const factory ShoppingCartEvent.deleteAddressDelivery({
    required String id,
  }) = DeleteAddressDeliverySoppingCartEvent;
  const factory ShoppingCartEvent.changePaymentType({
    required String paymentId,
    required String typePay,
  }) = ChangePaymentTypeSoppingCartEvent;
  const factory ShoppingCartEvent.changeTitlePromocode({
    required String titlePromocode,
  }) = ChangeTitlePromocodeSoppingCartEvent;
  const factory ShoppingCartEvent.getInfoProductSize({
    required String code,
    required bool isShop,
  }) = GetInfoProductSizeShoppingCartEvent;
}
