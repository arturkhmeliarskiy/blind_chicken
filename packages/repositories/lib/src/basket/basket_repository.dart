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
    required String titleScreen, // экран добавления в корзину
    required String searchQuery, // поисковой запрос
    required String typeAddProductToShoppingCart, // с помощью чего добавляется в корзину
    required String
        identifierAddProductToShoppingCart, // идентификатор отарвителя товара в корзину (1 кнопка, 2 выпадающий список)
    required List<String>
        sectionCategoriesPath, // категории в к оторых находится товар "Акции", "Красная цена"
    required List<String>
        productCategoriesPath, // категории тоарва "Продукты", "Молочные продукты", "Йогурты"
  }) async {
    final productToBasket = await _basketService.addProductToBasket(
          code: code,
          sku: sku,
          count: count,
          sectionCategoriesPath: sectionCategoriesPath,
          productCategoriesPath: productCategoriesPath,
          titleScreen: titleScreen,
          type: typeAddProductToShoppingCart,
          identifier: identifierAddProductToShoppingCart,
          searchQuery: searchQuery,
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
                  type: item.typeAddProductToShoppingCart,
                  identifier: item.identifierAddProductToShoppingCart,
                  sectionCategoriesPath: item.sectionCategoriesPath,
                  productCategoriesPath: item.productCategoriesPath,
                  titleScreen: item.titleScreen,
                  searchQuery: item.searchQuery,
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
      info: info ?? '',
    );
  }
}

extension on PaymentsResponse {
  PaymentsDataModel toPaymentMethods() {
    return PaymentsDataModel(
      payments: List<PaymentItemDataModel>.from(
        payments?.map(
              (item) {
                return PaymentItemDataModel(
                  id: item.id ?? '',
                  name: item.name ?? '',
                );
              },
            ) ??
            [],
      ),
      errorMessage: errorMessage ?? '',
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
                titleScreen: item.titleScreen ?? '',
                searchQuery: item.searchQuery ?? '',
                typeAddProductToShoppingCart: item.type ?? '',
                identifierAddProductToShoppingCart: item.identifier ?? '',
                sectionCategoriesPath: item.sectionCategoriesPath ?? [],
                productCategoriesPath: item.productCategoriesPath ?? [],
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
      errorMessage: errorMessage ?? '',
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
                    promo: item.data?.promo ?? '',
                    promoValue: item.data?.promoValue ?? 0,
                  ),
                  skuName: item.skuName ?? '',
                  product: ProductDataModel(
                    id: int.parse(item.code ?? '0'),
                    title: item.data?.nameView ?? '',
                    category: item.data?.category?.n ?? '',
                    size: [
                      item.sku ?? '',
                    ],
                    price: item.data?.price ?? 0,
                    yourPrice: item.data?.price ?? 0,
                    brend: '',
                    lensDiameter: 0,
                    templeLength: 0,
                    country: '',
                    isShop: true,
                    images: [],
                    variants: [],
                    maximumCashback: 0,
                    maximumPersonalDiscount: 0,
                    isYourPriceDisplayed: false,
                    pb: item.data?.price1 ?? 0,
                    sz: [
                      CatalogSizeProductDataModel(
                        id: item.sku ?? '',
                        name: item.skuName ?? '',
                      ),
                    ],
                    count: (item.count ?? 0).toString(),
                    titleScreen: item.titleScreen ?? '',
                    searchQuery: item.searchQuery ?? '',
                    typeAddProductToShoppingCart: item.type ?? '',
                    identifierAddProductToShoppingCart: item.identifier ?? '',
                    sectionCategoriesPath: item.sectionCategoriesPath ?? [],
                    productCategoriesPath: item.productCategoriesPath ?? [],
                    promo: item.data?.promo ?? '',
                    promoValue: item.data?.promoValue ?? 0,
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
