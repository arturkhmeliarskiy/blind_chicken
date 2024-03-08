part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.init() = InitAccountState;
  const factory AccountState.load() = LoadingAccountState;
  const factory AccountState.payOrder({
    required String url,
  }) = PayOrderAccountState;
  const factory AccountState.preloadDataCompleted({
    required String phone,
    required String name,
    required String email,
    required String countOrders,
    required List<OrderItemDataModel> orders,
    required List<ProductDataModel> favouritesProducts,
    required List<int> favouritesProductsId,
    required List<String> listProductsCode,
    required List<ProductDataModel> listProdcutsStyle,
    required List<ProductDataModel> listProdcutsAlso,
    required List<ProductDataModel> listProdcutsBrand,
    required bool isAuth,
    FavouritesCatalogInfoDataModel? favouritesProductsInfo,
    DetailProductDataModel? detailsProduct,
    UserDataModel? user,
    OrderInfoDataModel? orderInfo,
  }) = PreloadDataCompletedAccountState;
  const factory AccountState.logOut() = LogOutAccountState;
}
