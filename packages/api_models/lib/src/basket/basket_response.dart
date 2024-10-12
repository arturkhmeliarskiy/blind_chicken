import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_response.freezed.dart';
part 'basket_response.g.dart';

@freezed
class BasketResponse with _$BasketResponse {
  const BasketResponse._();
  factory BasketResponse({
    String? r,
    String? e,
    int? count,
    String? errorMessage,
  }) = _BasketResponse;
  factory BasketResponse.fromJson(Map<String, dynamic> json) => _$BasketResponseFromJson(json);
}
