part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.load() = LoadingOrderState;
  const factory OrderState.init() = InitOrderState;
  const factory OrderState.productsOrder({
    required List<ShoppingCartDataModel> products,
    required List<ProductDataModel> favouritesProducts,
    required int numberProducts,
    required int amountPaid,
    required int orderNumber,
    required String dateRegistration,
  }) = ProductsOrderState;
}
