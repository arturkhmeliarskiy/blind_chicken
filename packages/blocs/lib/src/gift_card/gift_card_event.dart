part of 'gift_card_bloc.dart';

@freezed
class GiftCardEvent with _$GiftCardEvent {
  const factory GiftCardEvent.preloadData({
    required bool isNotification,
  }) = InitGiftCardEvent;
  const factory GiftCardEvent.createOrder({
    required CatalogGiftCardRequest request,
  }) = CreateOrderGiftCardEvent;
}
