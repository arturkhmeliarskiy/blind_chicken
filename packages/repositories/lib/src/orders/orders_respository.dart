import 'dart:async';

import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class OrdersRepository {
  final OrdersService _ordersService;

  OrdersRepository(
    this._ordersService,
  );

  Future<OrdersDataModel> getListOrders({String? nav}) async {
    final orders = await _ordersService.getListOrders(
          nav: nav,
        ) ??
        OrdersResponse();
    return orders.toListOrders();
  }

  Future<OrderInfoDataModel> getOrderInfo({required String id}) async {
    final orders = await _ordersService.getOrderInfo(
          id: id,
        ) ??
        OrderInfoResponse();
    return orders.toOrderInfo();
  }
}

extension on OrderInfoResponse {
  OrderInfoDataModel toOrderInfo() {
    return OrderInfoDataModel(
      r: r ?? '',
      errorMessage: errorMessage ?? '',
      id: id ?? '',
      date: date ?? '',
      status: status ?? '',
      paidInfo: paidInfo ?? '',
      isPaid: isPaid ?? '',
      sumForPaid: sumForPaid ?? '',
      idForPay: idForPay ?? '',
      promo: OrderPromoDataModel(
        promocode: promo?.promocode ?? '',
        promocodeInfo: promo?.promocodeInfo ?? '',
      ),
      paymentsGiftCard: List<OrderPaymentsGiftCardDataModel>.from(
        paymentsGiftCard?.map(
              (item) => OrderPaymentsGiftCardDataModel(
                number: item.number ?? '',
                sum: item.sum ?? '',
              ),
            ) ??
            [],
      ),
      paymentName: paymentName ?? '',
      sumPaymentGiftCard: sumPaymentGiftCard ?? '',
      sumPaymentBonus: sumPaymentBonus ?? '',
      delivery: OrderDeliveryDataModel(
        price: delivery?.price ?? '',
        method: delivery?.method ?? '',
        address: delivery?.address ?? '',
      ),
      products: List<ProductDataModel>.from(
        products?.map(
              (item) => ProductDataModel(
                id: int.parse(item.code ?? '0'),
                title: item.name ?? '',
                images: [item.img?.isNotEmpty ?? false ? item.img ?? '' : ''],
                brend: item.brand ?? '',
                category: '',
                size: [item.sku ?? ''],
                lensDiameter: 0,
                price: int.parse(item.price ?? '0'),
                templeLength: 0,
                country: '',
                variants: [],
                maximumCashback: 0,
                pb: int.parse(item.price ?? '0'),
                maximumPersonalDiscount: 0,
                yourPrice: int.parse(item.price ?? '0'),
                isYourPriceDisplayed: false,
                count: item.count ?? '',
                isShop: false,
                sz: [
                  CatalogSizeProductDataModel(
                    id: '',
                    name: item.sku ?? '',
                  ),
                ],
                titleScreen: item.titleScreen ?? '',
                searchQuery: item.searchQuery ?? '',
                typeAddProductToShoppingCart: item.type ?? '',
                identifierAddProductToShoppingCart: item.identifier ?? '',
                sectionCategoriesPath: item.sectionCategoriesPath ?? [],
                productCategoriesPath: item.productCategoriesPath ?? [],
              ),
            ) ??
            [],
      ),
      giftCard: OrderGiftCardDataModel(
        color: giftCard?.color ?? '',
        type: giftCard?.type ?? '',
        name: giftCard?.name ?? '',
        img: giftCard?.img ?? '',
        sum: giftCard?.sum ?? '',
      ),
    );
  }
}

extension on OrdersResponse {
  OrdersDataModel toListOrders() {
    return OrdersDataModel(
      r: r ?? '',
      errorMessage: errorMessage ?? '',
      orders: List<OrderItemDataModel>.from(
        orders?.map(
              (item) {
                return OrderItemDataModel(
                  date: item.date ?? '',
                  id: item.id ?? '',
                  sum: item.sum ?? 0,
                  status: item.status ?? '',
                );
              },
            ) ??
            [],
      ),
      countOrders: countOrders ?? '',
    );
  }
}
