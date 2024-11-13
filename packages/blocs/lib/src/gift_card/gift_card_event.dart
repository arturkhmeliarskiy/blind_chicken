part of 'gift_card_bloc.dart';

@freezed
class GiftCardEvent with _$GiftCardEvent {
  const factory GiftCardEvent.preloadData({
    required bool isNotification,
    required String searchQuery,
    String? messageId,
  }) = InitGiftCardEvent;
  const factory GiftCardEvent.changeTypeGiftCard({
    required String typeGiftCard,
  }) = ChangeTypeGiftCardGiftCardEvent;
  const factory GiftCardEvent.changeAmountPaid({
    required int amountPaid,
  }) = ChangeAmountPaidGiftCardEvent;
  const factory GiftCardEvent.changeReceivingType({
    required String receivingType,
  }) = ChangeReceivingTypeGiftCardEvent;
  const factory GiftCardEvent.addAddressDelivery({
    required BasketAddressDataModel addressDelivery,
    required int delivery,
    required String cityId,
  }) = AddAddressDeliveryGiftCardEvent;
  const factory GiftCardEvent.selectAddressDelivery({
    required int index,
  }) = SelectAddressDeliveryGiftCardEvent;
  const factory GiftCardEvent.deleteAddressDelivery({
    required String id,
  }) = DeleteAddressDeliveryGiftCardEvent;
  const factory GiftCardEvent.changeUidPickUpPoint({
    required String uidPickUpPoint,
  }) = ChangeUidPickUpPointGiftCardEvent;
  const factory GiftCardEvent.changePaymentType({
    required PaymentItemDataModel typePay,
  }) = ChangePaymentTypeGiftCardEvent;
  const factory GiftCardEvent.createOrder({
    required CatalogGiftCardRequest request,
  }) = CreateOrderGiftCardEvent;
}
