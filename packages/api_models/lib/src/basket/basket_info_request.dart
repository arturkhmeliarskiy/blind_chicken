import 'package:json_annotation/json_annotation.dart';

part 'basket_info_request.g.dart';

@JsonSerializable()
class BasketInfoRequest {
  final String code;
  final String sku;
  final int count;

  BasketInfoRequest({
    required this.code,
    required this.sku,
    required this.count,
  });

  factory BasketInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$BasketInfoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BasketInfoRequestToJson(this);
}
