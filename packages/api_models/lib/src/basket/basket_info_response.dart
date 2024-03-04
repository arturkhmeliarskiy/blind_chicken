import 'package:api_models/src/basket/basket_info_item_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_info_response.freezed.dart';
part 'basket_info_response.g.dart';

@freezed
class BasketInfoResponse with _$BasketInfoResponse {
  const BasketInfoResponse._();
  factory BasketInfoResponse({
    String? r,
    String? e,
    List<BasketInfoItemResponse>? basket,
  }) = _BasketInfoResponse;
  factory BasketInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketInfoResponseFromJson(json);
}
