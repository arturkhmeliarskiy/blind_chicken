import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_blank_response.freezed.dart';
part 'order_blank_response.g.dart';

@freezed
class OrderBlankResponse with _$OrderBlankResponse {
  const OrderBlankResponse._();
  factory OrderBlankResponse({
    String? id,
    @JsonKey(name: 'num') String? number,
    String? date,
  }) = _OrderBlankResponse;
  factory OrderBlankResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderBlankResponseFromJson(json);
}
