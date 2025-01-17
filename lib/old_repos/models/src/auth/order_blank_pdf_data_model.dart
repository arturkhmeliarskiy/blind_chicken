import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_blank_pdf_data_model.freezed.dart';

@freezed
class OrderBlankPdfDataModel with _$OrderBlankPdfDataModel {
  const OrderBlankPdfDataModel._();
  factory OrderBlankPdfDataModel({
    required String r,
    required String message,
    required String pdf,
  }) = _OrderBlankPdfDataModel;
}
