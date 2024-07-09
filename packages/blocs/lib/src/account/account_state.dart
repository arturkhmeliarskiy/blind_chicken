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
    required Uint8List file,
    required String fileName,
    SkuProductDataModel? selectSizeProduct,
    bool? isSoppingCart,
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
