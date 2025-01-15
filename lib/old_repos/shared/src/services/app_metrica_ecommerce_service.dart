import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:decimal/decimal.dart';
import 'package:blind_chicken/old_repos/models/models.dart';

class AppMetricaEcommerceService {
  // Добавление или удаление товара из корзины
  void addOrRemoveProductToSoppingCart({
    required String titleScreen, // экран добавления в корзину
    required String titleProduct, // название товара
    required String codeProduct, // код товара
    AppMetricaShoppingCartEnum typeProductToSoppingCart =
        AppMetricaShoppingCartEnum.addProductToShoppingCart,
    String type = '', // с помощью чего добавляется в корзину
    String identifier =
        '', // идентификатор отпрввителя товара в корзину (1 (3,4,5) кнопка, 2 выпадающий список)
    String searchQuery = '', // поисковой запрос
    int quantity = 0, // количество товаров
    List<String>?
        sectionCategoriesPath, // категории в к оторых находится товар "Акции", "Красная цена"
    List<String>?
        productCategoriesPath, // категории тоарва "Продукты", "Молочные продукты", "Йогурты"
    int priceActual = 0, // текущая стоимость товара
    int priceOriginal = 0, // базовая цена на товар
    List<AppMetricaECommerceAmount>?
        internalComponentsActualPrice, // дополнительные настройки для текущей стоимости
    List<AppMetricaECommerceAmount>?
        internalComponentsOriginalPrice, // дополнительные настройки для текущей стоимости
    List<String>? promocodes, // промокоды
  }) {
    // Payload
    Map<String, String> payload = {
      "configuration": "landscape",
      "full_screen": "true",
    };

    // Creating a screen object.
    AppMetricaECommerceScreen screen = AppMetricaECommerceScreen(
      name: titleScreen,
      searchQuery: searchQuery,
      payload: payload,
      categoriesPath: sectionCategoriesPath,
    );

    AppMetricaECommerceAmount amountActualPrice = AppMetricaECommerceAmount(
      amount: Decimal.parse(priceActual.toString()),
      currency: "RUB",
    );

    // Creating an actualPrice object.
    AppMetricaECommercePrice actualPrice = AppMetricaECommercePrice(
      fiat: amountActualPrice,
      internalComponents: internalComponentsActualPrice,
    );

    AppMetricaECommerceAmount amountOriginaPrice = AppMetricaECommerceAmount(
      amount: Decimal.parse(priceOriginal.toString()),
      currency: "RUB",
    );

    // Creating an originalPrice object.
    AppMetricaECommercePrice originalPrice = AppMetricaECommercePrice(
      fiat: amountOriginaPrice,
      internalComponents: internalComponentsOriginalPrice,
    );

    // Creating a product object.
    AppMetricaECommerceProduct product = AppMetricaECommerceProduct(
      sku: codeProduct,
      name: titleProduct,
      actualPrice: actualPrice,
      originalPrice: originalPrice,
      promocodes: promocodes,
      payload: payload,
      categoriesPath: productCategoriesPath,
    );

    AppMetricaECommerceReferrer referrer = AppMetricaECommerceReferrer(
      type: type,
      identifier: identifier,
      screen: screen,
    );

    // Creating a cartItem object.
    AppMetricaECommerceCartItem addedItems1 = AppMetricaECommerceCartItem(
      product: product,
      revenue: actualPrice,
      quantity: Decimal.parse(quantity.toString()),
      referrer: referrer,
    );

    switch (typeProductToSoppingCart) {
      case AppMetricaShoppingCartEnum.addProductToShoppingCart:
        AppMetricaECommerceEvent addCartItemEvent =
            AppMetricaECommerce.addCartItemEvent(addedItems1);
        AppMetrica.reportECommerce(addCartItemEvent);
        AppMetrica.reportEvent('Добавление товара в корзину');
        break;
      case AppMetricaShoppingCartEnum.removeProductToShoppingCart:
        AppMetricaECommerceEvent removeCartItemEvent =
            AppMetricaECommerce.removeCartItemEvent(addedItems1);
        AppMetrica.reportECommerce(removeCartItemEvent);
        AppMetrica.reportEvent('Удаление товара из корзины');
        break;
    }
  }

  // Начало оформления и завершение покупки товаров
  void startAndEndCreatePurchaseProducts({
    required List<ProductDataModel> products, // товары
    String orderId = '', // id заказа
    String promocode = '',
    AppMetricaTypeCreatePurchaseEnum typeProductToSoppingCart =
        AppMetricaTypeCreatePurchaseEnum.startCreatePurchase,
  }) {
    List<AppMetricaECommerceCartItem> items = [];

    Map<String, String> payload = {
      "configuration": "landscape",
      "full_screen": "true",
    };

    for (int i = 0; i < products.length; i++) {
      AppMetricaECommerceScreen screen = AppMetricaECommerceScreen(
        name: products[i].titleScreen,
        searchQuery: products[i].searchQuery,
        payload: payload,
        categoriesPath: products[i].sectionCategoriesPath,
      );
      AppMetricaECommerceAmount amountActualPrice = AppMetricaECommerceAmount(
        amount: Decimal.fromInt(products[i].yourPrice),
        currency: "RUB",
      );

      AppMetricaECommercePrice actualPrice = AppMetricaECommercePrice(
        fiat: amountActualPrice,
        internalComponents: products[i].sz.isNotEmpty
            ? [
                if (products[i].sz.first.name.isNotEmpty)
                  AppMetricaECommerceAmount(
                    amount: Decimal.fromInt(products[i].yourPrice),
                    currency: products[i].sz.isNotEmpty ? products[i].sz.first.name : '',
                  ),
                if (products[i].sz.first.id.isNotEmpty)
                  AppMetricaECommerceAmount(
                    amount: Decimal.fromInt(products[i].yourPrice),
                    currency: products[i].sz.isNotEmpty ? products[i].sz.first.id : '',
                  ),
              ]
            : [],
      );

      AppMetricaECommerceAmount amountOriginaPrice = AppMetricaECommerceAmount(
        amount: Decimal.fromInt(products[i].pb),
        currency: "RUB",
      );

      AppMetricaECommercePrice originalPrice = AppMetricaECommercePrice(
          fiat: amountOriginaPrice,
          internalComponents: products[i].sz.isNotEmpty
              ? [
                  if (products[i].sz.first.name.isNotEmpty)
                    AppMetricaECommerceAmount(
                      amount: Decimal.fromInt(products[i].pb),
                      currency: products[i].sz.isNotEmpty ? products[i].sz.first.name : '',
                    ),
                  if (products[i].sz.first.id.isNotEmpty)
                    AppMetricaECommerceAmount(
                      amount: Decimal.fromInt(products[i].pb),
                      currency: products[i].sz.isNotEmpty ? products[i].sz.first.id : '',
                    ),
                ]
              : []);

      AppMetricaECommerceProduct product = AppMetricaECommerceProduct(
        sku: products[i].id.toString(),
        name: products[i].title,
        actualPrice: actualPrice,
        originalPrice: originalPrice,
        promocodes: [promocode],
        payload: payload,
        categoriesPath: products[i].productCategoriesPath,
      );

      AppMetricaECommerceReferrer referrer = AppMetricaECommerceReferrer(
        type: products[i].typeAddProductToShoppingCart,
        identifier: products[i].identifierAddProductToShoppingCart,
        screen: screen,
      );

      AppMetricaECommerceCartItem addedItems = AppMetricaECommerceCartItem(
        product: product,
        revenue: actualPrice,
        quantity: Decimal.parse(products[i].count ?? '0'),
        referrer: referrer,
      );

      items.add(addedItems);
    }

    AppMetricaECommerceOrder order = AppMetricaECommerceOrder(
      identifier: orderId,
      items: items,
      payload: payload,
    );

    switch (typeProductToSoppingCart) {
      case AppMetricaTypeCreatePurchaseEnum.startCreatePurchase:
        AppMetricaECommerceEvent beginCheckoutEvent = AppMetricaECommerce.beginCheckoutEvent(order);
        AppMetrica.reportECommerce(beginCheckoutEvent);
        AppMetrica.reportEvent('Начало оформления корзины');
        break;
      case AppMetricaTypeCreatePurchaseEnum.endCreatePurchase:
        AppMetricaECommerceEvent purchaseEvent = AppMetricaECommerce.purchaseEvent(order);
        AppMetrica.reportECommerce(purchaseEvent);
        AppMetrica.reportEvent('Завершение покупки товаров');
        break;
    }
  }

  // Начало оформления и завершение покупки подарочной карты
  void startAndEndCreatePurchaseGiftCard({
    required String titleScreen,
    required String idColor,
    String searchQuery = '',
    String typeGiftCard = '', // тип подарочной карты
    String orderId = '', // id заказа
    String priceActual = '', // текущая стоимость товара
    String priceOriginal = '', // базовая цена на товар
    int quantity = 0, // количество подарочных карт
    AppMetricaTypeCreatePurchaseEnum typeProductToSoppingCart =
        AppMetricaTypeCreatePurchaseEnum.startCreatePurchase,
  }) {
    Map<String, String> payload = {
      "configuration": "landscape",
      "full_screen": "true",
    };

    AppMetricaECommerceScreen screen = AppMetricaECommerceScreen(
      name: titleScreen,
      searchQuery: searchQuery,
      payload: payload,
      categoriesPath: [],
    );
    AppMetricaECommerceAmount amountActualPrice = AppMetricaECommerceAmount(
      amount: Decimal.parse(priceActual),
      currency: "RUB",
    );

    AppMetricaECommercePrice actualPrice = AppMetricaECommercePrice(
      fiat: amountActualPrice,
      internalComponents: [
        AppMetricaECommerceAmount(
          amount: Decimal.parse(priceActual),
          currency: idColor,
        ),
      ],
    );

    AppMetricaECommerceAmount amountOriginaPrice = AppMetricaECommerceAmount(
      amount: Decimal.parse(priceOriginal),
      currency: "RUB",
    );

    AppMetricaECommercePrice originalPrice =
        AppMetricaECommercePrice(fiat: amountOriginaPrice, internalComponents: [
      AppMetricaECommerceAmount(
        amount: Decimal.parse(priceOriginal),
        currency: idColor,
      ),
    ]);

    AppMetricaECommerceProduct product = AppMetricaECommerceProduct(
      sku: typeGiftCard,
      name: 'Подарочная карты',
      actualPrice: actualPrice,
      originalPrice: originalPrice,
      promocodes: [],
      payload: payload,
      categoriesPath: [],
    );

    AppMetricaECommerceReferrer referrer = AppMetricaECommerceReferrer(
      type: 'Кнопка',
      identifier: '1',
      screen: screen,
    );

    AppMetricaECommerceCartItem addedItems = AppMetricaECommerceCartItem(
      product: product,
      revenue: actualPrice,
      quantity: Decimal.fromInt(quantity),
      referrer: referrer,
    );

    AppMetricaECommerceOrder order = AppMetricaECommerceOrder(
      identifier: orderId,
      items: [addedItems],
      payload: payload,
    );

    switch (typeProductToSoppingCart) {
      case AppMetricaTypeCreatePurchaseEnum.startCreatePurchase:
        AppMetricaECommerceEvent beginCheckoutEvent = AppMetricaECommerce.beginCheckoutEvent(order);
        AppMetrica.reportECommerce(beginCheckoutEvent);
        AppMetrica.reportEvent('Начало оформления подарочной карты');
        break;
      case AppMetricaTypeCreatePurchaseEnum.endCreatePurchase:
        AppMetricaECommerceEvent purchaseEvent = AppMetricaECommerce.purchaseEvent(order);
        AppMetrica.reportECommerce(purchaseEvent);
        AppMetrica.reportEvent('Завершение покупки подарочной карты');
        break;
    }
  }

  // Открытие страницы
  void openPages({
    required String titleScreen,
    String searchQuery = '',
    List<String>? sectionCategoriesPath,
  }) {
    Map<String, String> payload = {
      "configuration": "landscape",
      "full_screen": "true",
    };
    // Creating a screen object.
    AppMetricaECommerceScreen screen = AppMetricaECommerceScreen(
      name: titleScreen,
      searchQuery: searchQuery,
      payload: payload,
      categoriesPath: sectionCategoriesPath,
    );
    AppMetricaECommerceEvent showScreenEvent = AppMetricaECommerce.showScreenEvent(screen);
    // Sending an e-commerce event.
    AppMetrica.reportECommerce(showScreenEvent);
    AppMetrica.reportEvent(titleScreen);
  }

  // Просмотр страницы товара
  void viewingProductPage({
    required String titleScreen, // экран добавления в корзину
    required String titleProduct, // название товара
    required String codeProduct, // код товара
    String type = '', // с помощью чего открывается
    String identifier =
        '', // идентификатор открытия карточки товара, 1 карточка товара, 2 уведомление, 3 элемент списка, 4 кнопка
    String searchQuery = '', // поисковой запрос
    List<String>?
        sectionCategoriesPath, // категории в к оторых находится товар "Акции", "Красная цена"
    List<String>?
        productCategoriesPath, // категории тоарва "Продукты", "Молочные продукты", "Йогурты"
    int priceActual = 0, // текущая стоимость товара
    int priceOriginal = 0, // базовая цена на товар
    List<AppMetricaECommerceAmount>?
        internalComponentsActualPrice, // дополнительные настройки для текущей стоимости
    List<AppMetricaECommerceAmount>?
        internalComponentsOriginalPrice, // дополнительные настройки для текущей стоимости
    List<String>? promocodes, // промокоды
  }) {
    Map<String, String> payload = {
      "configuration": "landscape",
      "full_screen": "true",
    };
    // Creating a screen object.
    AppMetricaECommerceScreen screen = AppMetricaECommerceScreen(
      name: titleScreen,
      searchQuery: searchQuery,
      payload: payload,
      categoriesPath: sectionCategoriesPath,
    );

    AppMetricaECommerceAmount amountActualPrice = AppMetricaECommerceAmount(
      amount: Decimal.parse(priceActual.toString()),
      currency: "RUB",
    );

    // Creating an actualPrice object.
    AppMetricaECommercePrice actualPrice = AppMetricaECommercePrice(
      fiat: amountActualPrice,
      internalComponents: internalComponentsActualPrice,
    );

    AppMetricaECommerceAmount amountOriginaPrice = AppMetricaECommerceAmount(
      amount: Decimal.parse(priceOriginal.toString()),
      currency: "RUB",
    );

    // Creating an originalPrice object.
    AppMetricaECommercePrice originalPrice = AppMetricaECommercePrice(
      fiat: amountOriginaPrice,
      internalComponents: internalComponentsOriginalPrice,
    );

    // Creating a product object.
    AppMetricaECommerceProduct product = AppMetricaECommerceProduct(
      sku: codeProduct,
      name: titleProduct,
      actualPrice: actualPrice,
      originalPrice: originalPrice,
      promocodes: promocodes,
      payload: payload,
      categoriesPath: productCategoriesPath,
    );

    AppMetricaECommerceReferrer referrer = AppMetricaECommerceReferrer(
      type: type,
      identifier: identifier,
      screen: screen,
    );

    AppMetricaECommerceEvent showProductDetailsEvent = AppMetricaECommerce.showProductDetailsEvent(
      product,
      referrer,
    );
    // Sending an e-commerce event.
    AppMetrica.reportECommerce(showProductDetailsEvent);
    AppMetrica.reportEvent('Просмотр деталей товара');
  }
}
