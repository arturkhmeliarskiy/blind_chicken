import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_blank_pdf_response.freezed.dart';
part 'order_blank_pdf_response.g.dart';

@freezed
class OrderBlankPdfResponse with _$OrderBlankPdfResponse {
  const OrderBlankPdfResponse._();
  factory OrderBlankPdfResponse({
    String? r,
    @JsonKey(name: 'e') String? message,
    String? pdf,
  }) = _OrderBlankPdfResponse;
  factory OrderBlankPdfResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderBlankPdfResponseFromJson(json);
}
