import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/src/basket/basket_order_delivery_request.dart';

part 'catalog_gift_card_request.freezed.dart';

@freezed
class CatalogGiftCardRequest with _$CatalogGiftCardRequest {
  const CatalogGiftCardRequest._();
  factory CatalogGiftCardRequest({
    required String type,
    required String color,
    required BasketOrderDeliveryRequest delivery,
    required String payment,
    required String city,
    required String sum,
  }) = _CatalogGiftCardRequest;
}
