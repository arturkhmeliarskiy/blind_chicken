import 'package:api_models/src/basket/basket_data_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_full_info_item_response.freezed.dart';
part 'basket_full_info_item_response.g.dart';

@freezed
class BasketFullInfoItemResponse with _$BasketFullInfoItemResponse {
  const BasketFullInfoItemResponse._();
  factory BasketFullInfoItemResponse({
    String? code,
    String? sku,
    int? count,
    BasketDataInfoResponse? data,
    @JsonKey(name: 'sku_name') String? skuName,
  }) = _BasketFullInfoItemResponse;
  factory BasketFullInfoItemResponse.fromJson(Map<String, dynamic> json) =>
      _$BasketFullInfoItemResponseFromJson(json);
}
