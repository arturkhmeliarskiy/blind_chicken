import 'package:api_models/api_models.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

class BasketRepository {
  final BasketService _basketService;

  BasketRepository(
    this._basketService,
  );

  Future<BasketDataModel> addProductToBasket({
    required String code,
    required String sku,
    required int count,
  }) async {
    final productToBasket = await _basketService.addProductToBasket(
          code: code,
          sku: sku,
          count: count,
        ) ??
        BasketResponse();

    return productToBasket.toAddProductToBasket();
  }

  Future<BasketInfoDataModel> getProductToBasket() async {
    final productToBasket = await _basketService.getProductToBasket() ?? BasketInfoResponse();

    return productToBasket.toProductToBasket();
  }

  Future<BasketFullInfoDataModel> getProductToBasketFullInfo({
    String? promo,
    String? pickup,
    List<BasketInfoItemDataModel>? basket,
  }) async {
    final productToBasket = await _basketService.getProductToBasketFullInfo(
          promo: promo,
          pickup: pickup,
          basket: List<BasketInfoRequest>.from(basket?.map((item) {
                return BasketInfoRequest(
                  code: item.code,
                  sku: item.sku,
                  count: item.count,
                );
              }) ??
              []),
        ) ??
        BasketFullInfoResponse();

    return productToBasket.toProductToBasketFullInfo();
  }

  Future<PaymentsDataModel> getPaymentMethods({
    String? promo,
    String? pickup,
    List<BasketInfoItemDataModel>? basket,
  }) async {
    final productToBasket = await _basketService.getPaymentMethods() ?? PaymentsResponse();

    return productToBasket.toPaymentMethods();
  }

  Future<PaymentBonusDataModel> getPaymentBonus() async {
    final productToBasket = await _basketService.getPaymentBonus() ?? PaymentBonusResponse();

    return productToBasket.toPaymentBonus();
  }

  Future<PaymentBonusDataModel> checkingGiftCardGettingBalance(
      {required String number, required String pin}) async {
    final productToBasket = await _basketService.checkingGiftCardGettingBalance(
          number: number,
          pin: pin,
        ) ??
        PaymentBonusResponse();

    return productToBasket.toPaymentBonus();
  }

  Future<PaymentOrderDataModel> createOrder({
    required BasketOrderRequest request,
  }) async {
    final createOrder = await _basketService.createOrder(
          request: request,
          sert: List<BasketSertDeliveryDataRequest>.from(
            request.sert?.map(
                  (item) => BasketSertDeliveryDataRequest(
                    n: item.n,
                    p: item.p,
                    v: item.v,
                  ),
                ) ??
                [],
          ),
        ) ??
        PaymentOrderResponse();

    return createOrder.toCreateOrder();
  }

  Future<PayOrderDataModel> payOrder({
    required String id,
  }) async {
    final createOrder = await _basketService.payOrder(
          id: id,
        ) ??
        PayOrderResponse();

    return createOrder.toPayOrder();
  }
}

extension on PayOrderResponse {
  PayOrderDataModel toPayOrder() {
    return PayOrderDataModel(
      r: r ?? '',
      e: e ?? '',
      url: url ?? '',
    );
  }
}

extension on PaymentOrderResponse {
  PaymentOrderDataModel toCreateOrder() {
    return PaymentOrderDataModel(
      r: r ?? '',
      e: e ?? '',
      id: id ?? 0,
    );
  }
}

extension on PaymentBonusResponse {
  PaymentBonusDataModel toPaymentBonus() {
    return PaymentBonusDataModel(
      r: r ?? '',
      e: e ?? '',
      balance: balance ?? 0,
    );
  }
}

extension on PaymentsResponse {
  PaymentsDataModel toPaymentMethods() {
    return PaymentsDataModel(
      payments: List<PaymentItemDataModel>.from(payments?.map((item) {
            return PaymentItemDataModel(
              id: item.id ?? '',
              name: item.name ?? '',
            );
          }) ??
          []),
    );
  }
}

extension on BasketResponse {
  BasketDataModel toAddProductToBasket() {
    return BasketDataModel(
      r: r ?? '',
      e: e ?? '',
      count: count ?? 0,
    );
  }
}

extension on BasketInfoResponse {
  BasketInfoDataModel toProductToBasket() {
    return BasketInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      basket: List<BasketInfoItemDataModel>.from(
        basket?.map((item) {
              return BasketInfoItemDataModel(
                code: item.code ?? '',
                sku: item.sku ?? '',
                count: item.count ?? 0,
              );
            }) ??
            [],
      ),
    );
  }
}

extension on BasketFullInfoResponse {
  BasketFullInfoDataModel toProductToBasketFullInfo() {
    return BasketFullInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      basket: List<BasketFullInfoItemDataModel>.from(
        basket?.map(
              (item) {
                return BasketFullInfoItemDataModel(
                  code: item.code ?? '',
                  sku: item.sku ?? '',
                  count: item.count ?? 0,
                  data: BasketDataInfoDataModel(
                    basePrice1: item.data?.basePrice1 ?? 0,
                    foto: item.data?.foto ?? '',
                    price: item.data?.price ?? 0,
                    basePrice: item.data?.basePrice ?? 0,
                    price1: item.data?.price1 ?? 0,
                    promoDiscount1: item.data?.promoDiscount1 ?? 0,
                    loyaltyDiscount1: item.data?.loyaltyDiscount1 ?? 0.0,
                    brand: BasketBrandDataModel(
                      id: item.data?.brand?.id ?? '',
                      n: item.data?.brand?.n ?? '',
                      u: item.data?.brand?.u ?? '',
                    ),
                    category: BasketCategoryDataModel(
                      id: item.data?.category?.id ?? '',
                      n: item.data?.category?.n ?? '',
                      chN: item.data?.category?.chN ?? '',
                    ),
                    nameView: item.data?.nameView ?? '',
                  ),
                  skuName: item.skuName ?? '',
                  product: ProductDataModel(
                    id: int.parse(item.code ?? '0'),
                    title: item.data?.nameView ?? '',
                    category: item.data?.category?.n ?? '',
                    size: [],
                    price: item.data?.price ?? 0,
                    yourPrice: item.data?.price ?? 0,
                    brend: '',
                    lensDiameter: 0,
                    templeLength: 0,
                    country: '',
                    images: [],
                    variants: [],
                    maximumCashback: 0,
                    maximumPersonalDiscount: 0,
                    isYourPriceDisplayed: false,
                    pb: item.data?.price1 ?? 0,
                  ),
                );
              },
            ) ??
            [],
      ),
      promoDescription: promoDescription ?? '',
    );
  }
}
