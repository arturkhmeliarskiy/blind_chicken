part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.preloadData({
    String? phone,
    String? name,
    String? email,
  }) = InitAccountEvent;
  const factory AccountEvent.updateInfo({
    String? phone,
    String? name,
    String? email,
  }) = UpdateInfoAccountEvent;
  const factory AccountEvent.paginationProduct() = PaginationOrdersAccountEvent;
  const factory AccountEvent.getOrders() = GetOrdersAccountEvent;
  const factory AccountEvent.paginationListOrdersBlank() = PaginationListOrdersBlankAccountEvent;
  const factory AccountEvent.getListOrdersBlank() = GetListOrdersBlankAccountEvent;
  const factory AccountEvent.getOrderPdfBlank({
    required String fileName,
    required String id,
  }) = GetOrderPdfBlankAccountEvent;
  const factory AccountEvent.paginationListTailoringBlank() =
      PaginationListTailoringBlankAccountEvent;
  const factory AccountEvent.getListTailoringBlank() = GetListTailoringBlankAccountEvent;
  const factory AccountEvent.getTailoringPdfBlank({
    required String fileName,
    required String id,
  }) = GetTailoringPdfBlankAccountEvent;
  const factory AccountEvent.getInfoOrder({
    required String id,
  }) = GetInfoOrderAccountEvent;
  const factory AccountEvent.getInfoPayOrder({
    required String id,
    String? searchQuery,
  }) = GetInfoPayOrderAccountEvent;
  const factory AccountEvent.payOrder({
    required String idForPay,
  }) = PayOrderAccountEvent;
  const factory AccountEvent.logOut() = LogOutAccountEvent;
  const factory AccountEvent.removeAccount() = RemoveAccountEvent;
  const factory AccountEvent.virtualCardsCod() = VirtualCardsCodAccountEvent;
  const factory AccountEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductAccountEvent;
  const factory AccountEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductAccountEvent;
  const factory AccountEvent.getInfoProduct({
    required String code,
    required String titleScreen,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
    SkuProductDataModel? size,
    bool? isUpdate,
  }) = GetInfoProductAccountEvent;
  const factory AccountEvent.changeSizeProduct({
    required SkuProductDataModel selectSizeProduct,
  }) = ChangeSizeProductAccountEvent;
  const factory AccountEvent.saveDocument({
    required String fileName,
    required Uint8List bytes,
  }) = SaveDocumentAccountEvent;
  const factory AccountEvent.goBackProductInfo() = GoBackProductInfoCategotyAccountEvent;
  const factory AccountEvent.addProductToSoppingCart({
    required SkuProductDataModel size,
    required String typeAddProductToShoppingCart,
    required String identifierAddProductToShoppingCart,
  }) = AddProductToSoppingCartCAccountEvent;
  const factory AccountEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToSoppingCartAccountEvent;
  const factory AccountEvent.getInfoProductSize({
    required String code,
    required bool isShop,
  }) = GetInfoProductSizeAccountEvent;
}
