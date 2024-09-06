part of 'gift_card_bloc.dart';

@freezed
class GiftCardEvent with _$GiftCardEvent {
  const factory GiftCardEvent.preloadData({
    required bool isNotification,
    required String searchQuery,
    String? messageId,
  }) = InitGiftCardEvent;
  const factory GiftCardEvent.createOrder({
    required CatalogGiftCardRequest request,
  }) = CreateOrderGiftCardEvent;
}
