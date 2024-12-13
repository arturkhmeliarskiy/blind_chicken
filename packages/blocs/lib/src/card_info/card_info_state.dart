part of 'card_info_bloc.dart';

@freezed
class CardInfoState with _$CardInfoState {
  const factory CardInfoState.init() = InitCardInfoState;
  const factory CardInfoState.load() = LoadingCardInfoState;
  const factory CardInfoState.productInfoCard({
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
    required bool isOpenGetSizeProduct,
    required bool isBlocBackBotton, // нужна для блокировки навигации назад при переходе из каталога
    required String codeProduct,
    SkuProductDataModel? selectSizeProduct,
    bool? isShoppingCart,
    bool? isShoppingCartDetailsProduct,
    DetailProductDataModel? detailsProduct,
    BasketInfoItemDataModel? itemInfo,
    ProductDataModel? product,
    bool? isLoadErrorButton,
    String? errorMessage,
    String? typeError,
    bool? isError,
    required String titleScreen,
    String? typeAddProductToShoppingCart,
    String? identifierAddProductToShoppingCart,
    bool? isShopGetSizeProduct,
  }) = ProductsCardInfoState;
  const factory CardInfoState.openSoppingCart() = OpenSoppingCartCardInfoState;
  const factory CardInfoState.addProductToSoppingCart({
    required String code,
    required String titleScreen,
  }) = AddProductCardInfoState;
  const factory CardInfoState.getSizeProduct({
    required String code,
    required List<SkuProductDataModel> listSize,
    required List<SkuProductDataModel> listSizeToSoppingCart,
    required String titleScreen,
  }) = GetSizeProductCardInfoState;
}
