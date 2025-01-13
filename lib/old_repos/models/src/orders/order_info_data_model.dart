import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

part 'order_info_data_model.freezed.dart';

@freezed
class OrderInfoDataModel with _$OrderInfoDataModel {
  const OrderInfoDataModel._();
  factory OrderInfoDataModel({
    required String r,
    required String errorMessage,
    required String id,
    required String date,
    required String status,
    required String paidInfo,
    required String isPaid,
    required String sumForPaid,
    required String idForPay,
    required OrderPromoDataModel promo,
    required String paymentName,
    required List<OrderPaymentsGiftCardDataModel> paymentsGiftCard,
    required String sumPaymentGiftCard,
    required String sumPaymentBonus,
    required OrderDeliveryDataModel delivery,
    required List<ProductDataModel> products,
    required OrderGiftCardDataModel giftCard,
  }) = _OrderInfoDataModel;
}
