import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_card_data_model.freezed.dart';

@freezed
class GiftCardDataModel with _$GiftCardDataModel {
  const GiftCardDataModel._();
  factory GiftCardDataModel({
    required String r,
    required String errorMessage,
  }) = _GiftCardDataModel;
}
