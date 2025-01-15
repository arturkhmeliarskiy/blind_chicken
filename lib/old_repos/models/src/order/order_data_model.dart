import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'order_data_model.freezed.dart';

@freezed
class OrderDataModel with _$OrderDataModel {
  const OrderDataModel._();
  factory OrderDataModel({
    required List<ShoppingCartDataModel> products,
    required int numberProducts,
    required int amountPaid,
    required int orderNumber,
    required String receivingType,
    required String status,
    required String createAt,
    required String typePay,
    required String adress,
    required String workingHours,
  }) = _OrderDataModel;
}
