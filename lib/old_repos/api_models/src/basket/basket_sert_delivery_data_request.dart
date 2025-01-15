import 'package:json_annotation/json_annotation.dart';

part 'basket_sert_delivery_data_request.g.dart';

@JsonSerializable()
class BasketSertDeliveryDataRequest {
  final String n;
  final String p;
  final String v;

  BasketSertDeliveryDataRequest({
    required this.n,
    required this.p,
    required this.v,
  });

  factory BasketSertDeliveryDataRequest.fromJson(Map<String, dynamic> json) =>
      _$BasketSertDeliveryDataRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BasketSertDeliveryDataRequestToJson(this);
}
