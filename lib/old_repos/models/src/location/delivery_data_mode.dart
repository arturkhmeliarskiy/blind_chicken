import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'delivery_data_mode.freezed.dart';

@freezed
class DeliveryDataModel with _$DeliveryDataModel {
  const DeliveryDataModel._();
  factory DeliveryDataModel({
    required String r,
    required String e,
    required String errorMessage,
    required String deliveryId,
    required DeliveryPickDataModel pick,
    required List<DeliveryAddressDataModel> address,
  }) = _DeliveryDataModel;
}
