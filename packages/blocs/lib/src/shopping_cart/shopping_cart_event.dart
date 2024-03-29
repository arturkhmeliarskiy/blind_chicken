part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartEvent with _$ShoppingCartEvent {
  const factory ShoppingCartEvent.init() = InitShoppingCartEvent;
  const factory ShoppingCartEvent.preloadData() = PreloadDataShoppingCartEvent;
  const factory ShoppingCartEvent.addProductToSoppingCart({
    required BasketInfoItemDataModel item,
  }) = AddProductToSoppingCartEvent;
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
  const factory ShoppingCartEvent.delivery({
    required int delivery,
  }) = DeliverySoppingCartEvent;
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
  const factory ShoppingCartEvent.openAuthModel() = OpenAuthModelSoppingCartEvent;
  const factory ShoppingCartEvent.closeAuthModel() = CloseAuthModelSoppingCartEvent;
}
