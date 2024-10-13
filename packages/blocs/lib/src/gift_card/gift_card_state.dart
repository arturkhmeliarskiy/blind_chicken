part of 'gift_card_bloc.dart';

@freezed
class GiftCardState with _$GiftCardState {
  const factory GiftCardState.init() = InitGiftCardState;
  const factory GiftCardState.load() = LoadingGiftCardState;
  const factory GiftCardState.loadErrorButton() = LoadingErrorButtonGiftCardState;
  const factory GiftCardState.error({
    required String errorMessage,
  }) = ErrorGiftCardState;
  const factory GiftCardState.preloadDataCompleted({
    required List<PaymentItemDataModel> payments,
    required bool isLoadCreateOrder,
    required bool isUpdateVersionApp,
    required bool isNotification,
    required String searchQuery,
    String? creatOrderMessage,
  }) = PreloadDataGiftCardState;
  const factory GiftCardState.createOrderSuccessfully({
    required int orderId,
    required String searchQuery,
  }) = CreateOrderSuccessfullyGiftCardState;
}
