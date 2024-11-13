import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_pick_response.freezed.dart';
part 'delivery_pick_response.g.dart';

@freezed
class DeliveryPickRsponse with _$DeliveryPickRsponse {
  const DeliveryPickRsponse._();
  factory DeliveryPickRsponse({
    String? id,
    String? name,
    String? shedule,
  }) = _DeliveryPickRsponse;
  factory DeliveryPickRsponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPickRsponseFromJson(json);
}
