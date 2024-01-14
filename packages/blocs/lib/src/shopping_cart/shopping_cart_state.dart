part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartState with _$ShoppingCartState {
  const factory ShoppingCartState.init() = InitShoppingCartState;
  const factory ShoppingCartState.load() = LoadingShoppingCartState;
  const factory ShoppingCartState.productsShoppingCart({
    required List<ShoppingCartDataModel> products,
    required List<ProductDataModel> favouritesProducts,
    required int numberProducts,
    required int amountPaid,
  }) = ProductsShoppingCartState;
}
