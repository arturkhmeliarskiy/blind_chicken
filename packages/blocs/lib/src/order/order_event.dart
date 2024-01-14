part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.orderInfo({
    required List<ShoppingCartDataModel> products,
    required List<ProductDataModel> favouritesProducts,
    required int numberProducts,
    required int amountPaid,
  }) = InfoOrderEvent;
}
