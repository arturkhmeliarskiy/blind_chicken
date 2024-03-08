part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartState with _$ShoppingCartState {
  const factory ShoppingCartState.init() = InitShoppingCartState;
  const factory ShoppingCartState.load() = LoadingShoppingCartState;
  const factory ShoppingCartState.createOrderSuccessfully({
    required int orderId,
  }) = CreateOrderSuccessfullyShoppingCartState;
  const factory ShoppingCartState.productsShoppingCart({
    required BasketFullInfoDataModel shoppingCart,
    required List<PaymentItemDataModel> payments,
    required String promoCodeMessage,
    required int numberProducts,
    required int delivery,
    required int amountPaid,
    required int giftCards,
    required int bonuses,
    required bool isLoadPaymentBonus,
    required bool isLoadPaymentGift,
    required bool isLoadPaymentPromoCode,
    required bool isActivePromoCode,
    required bool isLoadCreateOrder,
    required String promoCode,
    required String pickup,
    required BoutiquesDataModel boutiques,
    required List<BasketSertDeliveryRequest> listGiftCard,
    String? creatOrderMessage,
    PaymentBonusDataModel? paymentBonus,
    PaymentBonusDataModel? paymentGift,
    bool? isRemovePromoCode,
    required List<ProductDataModel> favouritesProducts,
    required List<String> listProductsCode,
    required List<ProductDataModel> listProdcutsStyle,
    required List<ProductDataModel> listProdcutsAlso,
    required List<ProductDataModel> listProdcutsBrand,
    required List<int> favouritesProductsId,
    required bool isAuth,
    FavouritesCatalogInfoDataModel? favouritesProductsInfo,
    DetailProductDataModel? detailsProduct,
  }) = ProductsShoppingCartState;
}
