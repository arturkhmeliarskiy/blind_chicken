import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_request.freezed.dart';

@freezed
class BasketRequest with _$BasketRequest {
  const BasketRequest._();
  factory BasketRequest({
    required String code,
    required String sku,
    required int count,
  }) = _BasketRequest;
}
