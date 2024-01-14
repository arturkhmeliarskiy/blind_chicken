part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartEvent with _$ShoppingCartEvent {
  const factory ShoppingCartEvent.preloadData() = InitShoppingCartEvent;
  const factory ShoppingCartEvent.addProductToSoppingCart({
    required ShoppingCartDataModel item,
  }) = AddProductToSoppingCartEvent;
  const factory ShoppingCartEvent.deleteProductToSoppingCart({
    required int index,
  }) = DeleteProductToSoppingCartEvent;
  const factory ShoppingCartEvent.updateProductToSoppingCart({
    required ShoppingCartDataModel item,
    required int index,
  }) = UpdateProductToSoppingCartEvent;
}
