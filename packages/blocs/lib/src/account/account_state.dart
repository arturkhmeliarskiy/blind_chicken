part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.init() = InitAccountState;
  const factory AccountState.load() = LoadingAccountState;
  const factory AccountState.error({
    required String message,
  }) = ErrorAccountState;
  const factory AccountState.errorOpenPdf({
    required String message,
  }) = ErrorOpenPdfAccountState;
  const factory AccountState.payOrder({
    required String url,
  }) = PayOrderAccountState;
  const factory AccountState.openSoppingCart() = OpenSoppingCartAccountState;
  const factory AccountState.getSizeProduct({
    required String code,
    required List<SkuProductDataModel> listSize,
    required List<SkuProductDataModel> listSizeToSoppingCart,
  }) = GetSizeProductAccountState;
  const factory AccountState.addProductToSoppingCart({
    required String code,
  }) = AddProductAccountState;
  const factory AccountState.preloadDataCompleted({
    required String phone,
    required String name,
    required String email,
    required String countOrders,
    required String applicationVersion,
    required List<OrderItemDataModel> orders,
    required List<ProductDataModel> favouritesProducts,
    required List<int> favouritesProductsId,
    required List<String> listProductsCode,
    required List<ProductDataModel> listProdcutsStyle,
    required List<ProductDataModel> listProdcutsAlso,
    required List<ProductDataModel> listProdcutsBrand,
    required List<ProductDataModel> listProdcutsComplect,
    required bool isAuth,
    required String virtualCardsCod,
    required List<OrderBlankDataModel> listOrdersBlank,
    required List<OrderBlankDataModel> listTailoringBlank,
    required List<SkuProductDataModel> listSize,
    required Uint8List file,
    required String fileName,
    required bool isLoadGetSizeProduct,
    required int offsetOrders,
    required int offsetOrdersBlank,
    required int offsetTailoringBlank,
    String? codeProduct,
    SkuProductDataModel? selectSizeProduct,
    bool? isShoppingCart,
    bool? isError,
    String? errorMessage,
    bool? isShoppingCartDetailsProduct,
    bool? isSuccessfullySavedFile,
    bool? isLoadVirtualCardsCod,
    bool? isLoadOpenPdf,
    FavouritesCatalogInfoDataModel? favouritesProductsInfo,
    DetailProductDataModel? detailsProduct,
    UserDataModel? user,
    OrderInfoDataModel? orderInfo,
  }) = PreloadDataCompletedAccountState;
  const factory AccountState.logOut() = LogOutAccountState;
  const factory AccountState.removeAccount() = RemoveAccountState;
}
