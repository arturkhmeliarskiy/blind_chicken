part of 'gift_card_bloc.dart';

@freezed
class GiftCardEvent with _$GiftCardEvent {
  const factory GiftCardEvent.preloadData() = InitGiftCardEvent;
  const factory GiftCardEvent.search(
    String search,
  ) = SearchGiftCardEvent;
}
