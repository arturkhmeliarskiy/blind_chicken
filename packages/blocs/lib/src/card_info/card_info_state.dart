part of 'card_info_bloc.dart';

@freezed
class CardInfoState with _$CardInfoV2State {
  const factory CardInfoState.init() = InitInfoCardV2State;
  const factory CardInfoState.load() = LoadingInfoCardV2State;
  const factory CardInfoState.productInfoCard({
    required List<ProductDataModel> favouritesProducts,
    required List<String> listProductsCode,
    required List<ProductDataModel> listProdcutsStyle,
    required List<ProductDataModel> listProdcutsAlso,
    required List<ProductDataModel> listProdcutsBrand,
    required List<ProductDataModel> listProdcutsComplect,
    required List<int> favouritesProductsId,
    required bool isAuth,
    required bool isLoadGetSizeProduct,
    required bool isBlocBackBotton, // нужна для блокировки навигации назад при переходе из каталога
    required String codeProduct,
    SkuProductDataModel? selectSizeProduct,
    bool? isShoppingCart,
    bool? isShoppingCartDetailsProduct,
    DetailProductDataModel? detailsProduct,
    BasketInfoItemDataModel? itemInfo,
    ProductDataModel? product,
    int? indexItem,
    bool? isLoadErrorButton,
    String? errorMessage,
    String? typeError,
    bool? isError,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    bool? isShopGetSizeProduct,
  }) = ProductsInfoCardV2State;
  const factory CardInfoState.openSoppingCart() = OpenSoppingCartCardInfoV2State;
  const factory CardInfoState.addProductToSoppingCart({
    required String code,
  }) = AddProductCardInfoV2State;
  const factory CardInfoState.getSizeProduct({
    required String code,
    required List<SkuProductDataModel> listSize,
    required List<SkuProductDataModel> listSizeToSoppingCart,
  }) = GetSizeProductCardInfoV2State;
}
