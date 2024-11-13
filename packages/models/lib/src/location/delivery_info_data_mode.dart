import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_info_data_mode.freezed.dart';

@freezed
class DeliveryInfoDataModel with _$DeliveryInfoDataModel {
  const DeliveryInfoDataModel._();
  factory DeliveryInfoDataModel({
    required String r,
    required String e,
    required String errorMessage,
  }) = _DeliveryInfoDataModel;
}
