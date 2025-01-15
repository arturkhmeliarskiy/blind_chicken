import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_info_response.freezed.dart';
part 'delivery_info_response.g.dart';

@freezed
class DeliveryInfoRsponse with _$DeliveryInfoRsponse {
  const DeliveryInfoRsponse._();
  factory DeliveryInfoRsponse({
    String? r,
    String? e,
    String? errorMessage,
  }) = _DeliveryInfoRsponse;
  factory DeliveryInfoRsponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInfoRsponseFromJson(json);
}
