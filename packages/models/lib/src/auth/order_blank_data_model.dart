import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_blank_data_model.freezed.dart';

@freezed
class OrderBlankDataModel with _$OrderBlankDataModel {
  const OrderBlankDataModel._();
  factory OrderBlankDataModel({
    required String id,
    required String number,
    required String date,
  }) = _OrderBlankDataModel;
}
