import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_data_model.freezed.dart';

@freezed
class BasketDataModel with _$BasketDataModel {
  const BasketDataModel._();
  factory BasketDataModel({
    required String r,
    required String e,
    required int count,
  }) = _BasketDataModel;
}
