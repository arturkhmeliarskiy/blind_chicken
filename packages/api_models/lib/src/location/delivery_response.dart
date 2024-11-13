import 'package:api_models/api_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_response.freezed.dart';
part 'delivery_response.g.dart';

@freezed
class DeliveryRsponse with _$DeliveryRsponse {
  const DeliveryRsponse._();
  factory DeliveryRsponse({
    String? r,
    String? e,
    String? errorMessage,
    @JsonKey(name: 'delivery_id') String? deliveryId,
    DeliveryPickRsponse? pick,
    List<DeliveryAddressRsponse>? address,
  }) = _DeliveryRsponse;
  factory DeliveryRsponse.fromJson(Map<String, dynamic> json) => _$DeliveryRsponseFromJson(json);
}
