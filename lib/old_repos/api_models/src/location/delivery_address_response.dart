import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_address_response.freezed.dart';
part 'delivery_address_response.g.dart';

@freezed
class DeliveryAddressRsponse with _$DeliveryAddressRsponse {
  const DeliveryAddressRsponse._();
  factory DeliveryAddressRsponse({
    String? id,
    String? addr,
    String? zip,
    @JsonKey(name: 'city_id') String? cityId,
  }) = _DeliveryAddressRsponse;
  factory DeliveryAddressRsponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressRsponseFromJson(json);
}
