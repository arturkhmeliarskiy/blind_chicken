import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_address_data_model.freezed.dart';

@freezed
class DeliveryAddressDataModel with _$DeliveryAddressDataModel {
  const DeliveryAddressDataModel._();
  factory DeliveryAddressDataModel({
    required String id,
    required String addr,
    required String zip,
    required String cityId,
  }) = _DeliveryAddressDataModel;
}
