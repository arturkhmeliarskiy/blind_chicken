part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartState with _$ShoppingCartState {
  const factory ShoppingCartState.init() = InitShoppingCartState;
  const factory ShoppingCartState.load() = LoadingShoppingCartState;
  const factory ShoppingCartState.loadErrorButton() = LoadingErrorButtonShoppingCartState;
  const factory ShoppingCartState.error({
    required String errorMessage,
    BasketInfoItemDataModel? item,
    String? typeAddProductToShoppingCart,
    String? titleScreen,
  }) = ErrorShoppingCartState;
  const factory ShoppingCartState.createOrderSuccessfully({
    required int orderId,
  }) = CreateOrderSuccessfullyShoppingCartState;
  const factory ShoppingCartState.openSoppingCart() = OpenSoppingCartShoppingCartState;
  const factory ShoppingCartState.getSizeProduct({
    required String code,
    required List<SkuProductDataModel> listSize,
    required List<SkuProductDataModel> listSizeToSoppingCart,
  }) = GetSizeProductShoppingCartState;
  const factory ShoppingCartState.addProductToSoppingCart({
    required String code,
  }) = AddProductShoppingCartState;
  const factory ShoppingCartState.openShowDialog() = OpenShowDialogShoppingCartState;
  const factory ShoppingCartState.productsShoppingCart({
    required BasketFullInfoDataModel shoppingCart,
    required List<PaymentItemDataModel> payments,
    required String promoCodeMessage,
    required int numberProducts,
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
    required String receivingType,
    required BoutiquesDataModel boutiques,
    required bool isUponReceipt,
    required List<BasketSertDeliveryRequest> listGiftCard,
    required String address,
    required BasketAddressDataModel addressDelivery,
    required String uidPickUpPoint,
    required String paymentId,
    required String typePay,
    required String titlePromocode,
    int? delivery,
    String? creatOrderMessage,
    PaymentBonusDataModel? paymentBonus,
    PaymentBonusDataModel? paymentGift,
    bool? isRemovePromoCode,
    required List<ProductDataModel> favouritesProducts,
    required List<String> listProductsCode,
    required List<ProductDataModel> listProdcutsStyle,
    required List<ProductDataModel> listProdcutsAlso,
    required List<ProductDataModel> listProdcutsBrand,
    required List<ProductDataModel> listProdcutsComplect,
    required List<SkuProductDataModel> listSize,
    required List<int> favouritesProductsId,
    required bool isAuth,
    required bool isLoadGetSizeProduct,
    required bool isLoadAddProductToShopingCart,
    required bool isBlocBackBotton, // нужна для блокировки навигации назад при переходе из каталога
    String? codeProduct,
    SkuProductDataModel? selectSizeProduct,
    bool? isShoppingCart,
    bool? isShoppingCartDetailsProduct,
    bool? isAuthModel,
    FavouritesCatalogInfoDataModel? favouritesProductsInfo,
    DetailProductDataModel? detailsProduct,
    BasketInfoItemDataModel? itemInfo,
    ProductDataModel? product,
    int? indexItem,
    bool? isLoadErrorButton,
    String? errorMessage,
    String? typeError,
    bool? isError,
    String? titleScreen,
    String? typeAddProductToShoppingCart,
    String? identifierAddProductToShoppingCart,
    bool? isShopGetSizeProduct,
  }) = ProductsShoppingCartState;
}
