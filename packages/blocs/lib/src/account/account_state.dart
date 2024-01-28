part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.init() = InitAccountState;
  const factory AccountState.load() = LoadingAccountState;
  const factory AccountState.preloadDataCompleted({
    required String phone,
    required String name,
    required String email,
    required List<OrderDataModel> listOrders,
    required List<ProductDataModel> favouritesProducts,
  }) = PreloadDataCompletedAccountState;
}
