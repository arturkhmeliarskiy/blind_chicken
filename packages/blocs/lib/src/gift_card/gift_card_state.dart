part of 'gift_card_bloc.dart';

@freezed
class GiftCardState with _$GiftCardState {
  const factory GiftCardState.init() = InitGiftCardState;
  const factory GiftCardState.load() = LoadingGiftCardState;
  const factory GiftCardState.preloadDataCompleted({
    required List<String> searchResult,
  }) = PreloadDataGiftCardState;
}
