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
  const factory AccountEvent.paginationProduct({
    required int offset,
    required int limit,
  }) = PaginationOrdersAccountEvent;
  const factory AccountEvent.getOrders() = GetOrdersAccountEvent;
  const factory AccountEvent.getInfoOrder({
    required String id,
  }) = GetInfoOrderAccountEvent;
  const factory AccountEvent.getInfoPayOrder({
    required String id,
  }) = GetInfoPayOrderAccountEvent;
  const factory AccountEvent.payOrder({
    required String idForPay,
  }) = PayOrderAccountEvent;
  const factory AccountEvent.logOut() = LogOutAccountEvent;
  const factory AccountEvent.removeAccount() = RemoveAccountEvent;
  const factory AccountEvent.addFavouriteProduct({
    required int index,
    required ProductDataModel product,
  }) = AddFavouriteProductAccountEvent;
  const factory AccountEvent.deleteFavouriteProduct({
    required int index,
  }) = DeleteFavouriteProductAccountEvent;
  const factory AccountEvent.getInfoProduct({
    required String code,
    bool? isUpdate,
  }) = GetInfoProductAccountEvent;
  const factory AccountEvent.goBackProductInfo() = GoBackProductInfoCategotyAccountEvent;
  const factory AccountEvent.addProductToSoppingCart() = AddProductToSoppingCartCAccountEvent;
  const factory AccountEvent.checkProductToSoppingCart({
    required SkuProductDataModel size,
  }) = CheckProductToSoppingCartAccountEvent;
}
