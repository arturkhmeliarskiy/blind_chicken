import 'dart:async';
import 'package:blind_chicken/utils/logging.dart';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

part 'shopping_cart_bloc.freezed.dart';
part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  final CatalogRepository _catalogRepository;
  final BasketRepository _basketRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final FavouritesRepository _favouritesRepository;
  final UpdateDataService _updateDataService;
  final BoutiquesRepository _boutiquesRepository;
  final LocationRepository _locationRepository;
  final AppMetricaEcommerceService _appMetricaEcommerceService;

  ShoppingCartBloc(
    this._catalogRepository,
    this._basketRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
    this._updateDataService,
    this._boutiquesRepository,
    this._locationRepository,
    this._appMetricaEcommerceService,
  ) : super(const ShoppingCartState.init()) {
    on<ShoppingCartEvent>(
      (event, emit) => event.map(
        init: (event) => _init(event, emit),
        preloadData: (event) => _preloadData(event, emit),
        addProductToSoppingCart: (event) => _addProductToSoppingCart(event, emit),
        addOtherProductToSoppingCart: (event) => _addOtherProductToSoppingCart(event, emit),
        deleteProductToSoppingCart: (event) => _deleteProductToSoppingCartEvent(event, emit),
        updateProductToSoppingCart: (event) => _updateProductToSoppingCart(event, emit),
        paymentBonus: (event) => _paymentBonus(event, emit),
        initGiftCard: (event) => _initGiftCard(event, emit),
        giftCard: (event) => _giftCard(event, emit),
        addGiftCard: (event) => _addGiftCard(event, emit),
        promoCode: (event) => _promoCode(event, emit),
        removePromoCode: (event) => _removePromoCode(event, emit),
        createOrder: (event) => _createOrder(event, emit),
        bonuses: (event) => _bonuses(event, emit),
        getInfoProduct: (event) => _getInfoProduct(event, emit),
        goBackProductInfo: (event) => _goBackProductInfo(event, emit),
        addFavouriteProduct: (event) => _addFavouriteProduct(event, emit),
        deleteFavouriteProduct: (event) => _deleteFavouriteProduct(event, emit),
        addProductToSoppingCartInfo: (event) => _addProductToSoppingCartInfo(event, emit),
        checkProductToSoppingCart: (event) => _checkProductToSoppingCart(event, emit),
        openAuthModel: (event) => _openAuthModel(event, emit),
        closeAuthModel: (event) => _closeAuthModel(event, emit),
        changeSizeProduct: (event) => _changeSizeProduct(event, emit),
        changeReceivingType: (event) => _changeReceivingType(event, emit),
        changeUidPickUpPoint: (event) => _changeUidPickUpPoint(event, emit),
        selectAddressDelivery: (event) => _selectAddressDelivery(event, emit),
        addAddressDelivery: (event) => _addAddressDelivery(event, emit),
        deleteAddressDelivery: (event) => _deleteAddressDelivery(event, emit),
        changePaymentType: (event) => _changePaymentType(event, emit),
        changeTitlePromocode: (event) => _changeTitlePromocode(event, emit),
        getInfoProductSize: (event) => _getInfoProductSize(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    emit(const ShoppingCartState.load());
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;

    emit(
      ShoppingCartState.productsShoppingCart(
        shoppingCart: BasketFullInfoDataModel(
          basket: [],
          r: '',
          e: '',
          promoDescription: '',
          errorMessage: '',
          info: '',
        ),
        receivingType: 'Самовывоз',
        numberProducts: 0,
        amountPaid: 0,
        favouritesProducts: [],
        payments: _updateDataService.payments,
        isLoadPaymentBonus: false,
        isLoadPaymentGift: false,
        isLoadPaymentPromoCode: false,
        boutiques: BoutiquesDataModel(
          data: _updateDataService.boutiques,
          errorMessage: '',
        ),
        promoCodeMessage: '',
        isLoadCreateOrder: false,
        isActivePromoCode: false,
        promoCode: '',
        pickup: '',
        listGiftCard: [],
        giftCards: 0,
        bonuses: 0,
        listProductsCode: [],
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        listProdcutsComplect: [],
        favouritesProductsId: [],
        isAuth: isAuth,
        isUponReceipt: true,
        isPayInstallmentsSberbank: true,
        address: '',
        addressDelivery: BasketAddressDataModel(address: '', zip: ''),
        uidPickUpPoint: _updateDataService.boutiques.isNotEmpty
            ? _updateDataService.boutiques.first.uidStore
            : '',
        paymentId: '1',
        typePay: 'Банковской картой',
        titlePromocode: 'Активация промокода',
        listSize: [],
        isLoadGetSizeProduct: false,
        isLoadAddProductToShopingCart: false,
        isBlocBackBotton: true,
      ),
    );
  }

  Future<void> _preloadData(
    PreloadDataShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    if (state is ErrorShoppingCartState) {
      emit(const ShoppingCartState.loadErrorButton());
    } else {
      emit(const ShoppingCartState.load());
    }

    _appMetricaEcommerceService.openPages(titleScreen: 'Корзина');
    List<ProductDataModel> favouritesProducts = [];
    List<int> favouritesProductsId = [];
    int delivery = 0;
    BasketFullInfoDataModel? basketInfo;
    FavouritesDataModel? favouritesProdcutsInfo;
    DeliveryDataModel? deliveryInfo;
    BoutiqueDataModel? boutique;
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    final boutiques = await _boutiquesRepository.getBoutiques();
    _updateDataService.boutiques = boutiques.data;

    if (isAuth) {
      basketInfo = await _basketRepository.getProductToBasketFullInfo();
      favouritesProdcutsInfo = await _favouritesRepository.getFavouritesProdcuts();
      favouritesProductsId =
          favouritesProdcutsInfo.favorites.map((item) => int.parse(item)).toList();
      deliveryInfo = await _locationRepository.getDelivery();
      final paymentsInfo = await _basketRepository.getPaymentMethods(bnpl: 1);
      _updateDataService.payments = paymentsInfo.payments;
      boutique = _updateDataService.boutiques
          .firstWhere((item) => item.uidStore == (deliveryInfo?.pick.id ?? ''));
      logging(basketInfo.toString(), stackTrace: StackTrace.current);
      logging(favouritesProdcutsInfo.toString(), stackTrace: StackTrace.current);
    } else {
      basketInfo = await updateBasket(promo: '', pickup: '');
      favouritesProducts = _catalogRepository.getFavouritesProducts();
      favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
    }

    int numberProducts = 0;
    int amountPaid = 0;
    for (int i = 0; i < basketInfo.basket.length; i++) {
      numberProducts = numberProducts + basketInfo.basket[i].count;
      amountPaid = amountPaid + basketInfo.basket[i].data.price;
    }

    if ((deliveryInfo?.deliveryId ?? '') == '2') {
      CalculationCostDeliveryDataModel calculationCostDelivery =
          await _locationRepository.calculationCostDelivery(
        zipcode: deliveryInfo?.address.first.zip ?? '',
        sum: amountPaid,
        cityId: deliveryInfo?.address.first.cityId ?? '',
      );
      delivery = calculationCostDelivery.price;
    }

    if (basketInfo.errorMessage.isNotEmpty ||
        (favouritesProdcutsInfo?.errorMessage.isNotEmpty ?? false) ||
        (boutiques.errorMessage?.isNotEmpty ?? false)) {
      emit(
        ShoppingCartState.error(
          errorMessage: MessageInfo.errorMessage,
        ),
      );
    } else {
      emit(
        ShoppingCartState.productsShoppingCart(
          shoppingCart: basketInfo,
          numberProducts: numberProducts,
          amountPaid: amountPaid,
          favouritesProducts: favouritesProducts,
          payments: _updateDataService.payments,
          isLoadPaymentBonus: false,
          isLoadPaymentGift: false,
          isLoadPaymentPromoCode: false,
          boutiques: BoutiquesDataModel(
            data: boutiques.data,
            errorMessage: '',
          ),
          receivingType: (deliveryInfo?.deliveryId ?? '') == '1' ? 'Самовывоз' : 'Доставка',
          promoCodeMessage: '',
          isActivePromoCode: false,
          promoCode: '',
          pickup: '',
          listGiftCard: [],
          giftCards: 0,
          bonuses: 0,
          isLoadCreateOrder: false,
          isUponReceipt: (deliveryInfo?.address.isNotEmpty ?? false)
              ? (deliveryInfo?.address.first.cityId ?? '') == '7700000000000'
              : true,
          isPayInstallmentsSberbank: amountPaid >= 1000 && amountPaid <= 150000,
          listProductsCode: [],
          listProdcutsStyle: [],
          listProdcutsAlso: [],
          listProdcutsBrand: [],
          listProdcutsComplect: [],
          favouritesProductsId: favouritesProductsId,
          isAuth: isAuth,
          address: boutique?.name ?? '',
          addressDelivery: BasketAddressDataModel(
            address: (deliveryInfo?.address.isNotEmpty ?? false)
                ? deliveryInfo?.address.first.addr ?? ''
                : '',
            zip: (deliveryInfo?.address.isNotEmpty ?? false)
                ? deliveryInfo?.address.first.zip ?? ''
                : '',
            cityId: (deliveryInfo?.address.isNotEmpty ?? false)
                ? deliveryInfo?.address.first.cityId ?? ''
                : '',
            adrId: (deliveryInfo?.address.isNotEmpty ?? false)
                ? deliveryInfo?.address.first.id ?? ''
                : '',
          ),
          uidPickUpPoint: deliveryInfo?.pick.id ?? '',
          paymentId: '1',
          typePay: 'Банковской картой',
          titlePromocode: 'Активация промокода',
          listSize: [],
          isLoadGetSizeProduct: false,
          isLoadAddProductToShopingCart: false,
          isBlocBackBotton: false,
          deliveryInfo: deliveryInfo,
          boutique: boutique,
          delivery: delivery,
          selectIndexAddress: 0,
        ),
      );
    }
  }

  Future<void> _addOtherProductToSoppingCart(
    AddOtherProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    AppMetrica.reportEvent('Товар добавлен в корзину');

    bool isListProductsCode = false;
    if (state is ProductsShoppingCartState) {
      isListProductsCode = (state as ProductsShoppingCartState).listProductsCode.isNotEmpty;
    }
    if (isListProductsCode) {
      add(
        AddProductToSoppingCartEvent(
          item: event.item,
        ),
      );
    } else {
      if (state is ErrorShoppingCartState) {
        emit(const ShoppingCartState.loadErrorButton());
      } else {
        emit(const ShoppingCartState.load());
      }

      BasketFullInfoDataModel? basketInfo;
      BasketDataModel? addBasketInfo;
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;

      if (isAuth) {
        addBasketInfo = await _basketRepository.addProductToBasket(
          code: event.item.code,
          sku: event.item.sku.contains('-') ? event.item.sku : '',
          count: event.item.count,
          titleScreen: event.item.titleScreen,
          searchQuery: event.item.searchQuery,
          typeAddProductToShoppingCart: event.item.typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart: event.item.identifierAddProductToShoppingCart,
          sectionCategoriesPath: event.item.sectionCategoriesPath,
          productCategoriesPath: event.item.productCategoriesPath,
        );
        basketInfo = await updateBasket(
          isLocal: false,
          promo: '',
          pickup: '',
        );
        logging(basketInfo.toString(), stackTrace: StackTrace.current);
      } else {
        _catalogRepository.addShoppingCartProduct(
          event.item,
        );
        basketInfo = await updateBasket(
          promo: '',
          pickup: '',
        );
      }

      int numberProducts = 0;
      int amountPaid = 0;
      for (int i = 0; i < basketInfo.basket.length; i++) {
        numberProducts = numberProducts + basketInfo.basket[i].count;
        amountPaid = amountPaid + basketInfo.basket[i].data.price;
      }

      final boutiques = await _boutiquesRepository.getBoutiques();
      _updateDataService.boutiques = boutiques.data;

      if ((boutiques.errorMessage?.isNotEmpty ?? false) ||
          (addBasketInfo?.errorMessage.isNotEmpty ?? false)) {
        emit(ShoppingCartState.error(
          errorMessage: MessageInfo.errorMessage,
          titleScreen: event.item.titleScreen,
          item: event.item,
        ));
      } else {
        emit(
          ShoppingCartState.productsShoppingCart(
            shoppingCart: BasketFullInfoDataModel(
              basket: [],
              r: '',
              e: '',
              promoDescription: '',
              errorMessage: '',
              info: '',
            ),
            receivingType: 'Самовывоз',
            numberProducts: 0,
            amountPaid: 0,
            favouritesProducts: [],
            payments: _updateDataService.payments,
            isLoadPaymentBonus: false,
            isLoadPaymentGift: false,
            isLoadPaymentPromoCode: false,
            boutiques: BoutiquesDataModel(
              data: boutiques.data,
              errorMessage: '',
            ),
            promoCodeMessage: '',
            isLoadCreateOrder: false,
            isActivePromoCode: false,
            promoCode: '',
            pickup: '',
            listGiftCard: [],
            giftCards: 0,
            bonuses: 0,
            listProductsCode: [],
            listProdcutsStyle: [],
            listProdcutsAlso: [],
            listProdcutsBrand: [],
            listProdcutsComplect: [],
            favouritesProductsId: [],
            isAuth: isAuth,
            isUponReceipt: true,
            isPayInstallmentsSberbank: amountPaid >= 1000 && amountPaid <= 150000,
            address: '',
            addressDelivery: BasketAddressDataModel(address: '', zip: ''),
            uidPickUpPoint: boutiques.data.first.uidStore,
            paymentId: '1',
            typePay: 'Банковской картой',
            titlePromocode: 'Активация промокода',
            listSize: [],
            isLoadGetSizeProduct: false,
            isLoadAddProductToShopingCart: false,
            isBlocBackBotton: true,
          ),
        );
      }
    }
  }

  Future<void> _addProductToSoppingCart(
    AddProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        AppMetrica.reportEvent('Товар добавлен в корзину');
        if (event.item.typeAddProductToShoppingCart != '') {
          _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
            titleScreen: event.item.titleScreen,
            titleProduct: initState.detailsProduct?.name ?? '',
            codeProduct: (initState.detailsProduct?.code ?? 0).toString(),
            typeProductToSoppingCart: AppMetricaShoppingCartEnum.addProductToShoppingCart,
            type: event.item.typeAddProductToShoppingCart,
            identifier: event.item.identifierAddProductToShoppingCart,
            quantity: 1,
            sectionCategoriesPath: event.item.sectionCategoriesPath,
            productCategoriesPath: event.item.productCategoriesPath,
            priceActual: initState.detailsProduct?.price.yourPrice ?? 0,
            priceOriginal: int.parse(initState.detailsProduct?.price.pb ?? '0'),
            internalComponentsActualPrice: [
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(initState.detailsProduct?.price.yourPrice ?? 0),
                currency: event.item.skuName ?? '',
              ),
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(initState.detailsProduct?.price.yourPrice ?? 0),
                currency: event.item.sku,
              ),
            ],
            internalComponentsOriginalPrice: [
              AppMetricaECommerceAmount(
                amount: Decimal.parse(initState.detailsProduct?.price.pb ?? '0'),
                currency: event.item.skuName ?? '',
              ),
              AppMetricaECommerceAmount(
                amount: Decimal.parse(initState.detailsProduct?.price.pb ?? '0'),
                currency: event.item.sku,
              ),
            ],
          );
        }

        if (initState.isError ?? false) {
          emit(
            initState.copyWith(
              isLoadErrorButton: true,
            ),
          );
        } else {
          emit(
            initState.copyWith(
              isLoadAddProductToShopingCart: true,
            ),
          );
        }

        BasketFullInfoDataModel? basketInfo;
        BasketDataModel? basketProductInfo;
        bool isShoppingCart = false;
        bool isShoppingCartDetailsProduct = false;
        final detailsProduct = initState.detailsProduct;
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;

        if (isAuth) {
          basketProductInfo = await _basketRepository.addProductToBasket(
            code: event.item.code,
            sku: event.item.sku.contains('-') ? event.item.sku : '',
            count: event.item.count,
            titleScreen: event.item.titleScreen,
            searchQuery: event.item.searchQuery,
            typeAddProductToShoppingCart: event.item.typeAddProductToShoppingCart,
            identifierAddProductToShoppingCart: event.item.identifierAddProductToShoppingCart,
            sectionCategoriesPath: event.item.sectionCategoriesPath,
            productCategoriesPath: event.item.productCategoriesPath,
          );
          basketInfo = await updateBasket(
            isLocal: false,
            promo: initState.promoCode,
            pickup: initState.pickup,
          );
          logging(basketInfo.toString(), stackTrace: StackTrace.current);
        } else {
          _catalogRepository.addShoppingCartProduct(
            event.item,
          );
          basketInfo = await updateBasket(
            promo: initState.promoCode,
            pickup: initState.pickup,
          );
        }

        int numberProducts = 0;
        int amountPaid = 0;
        for (int i = 0; i < basketInfo.basket.length; i++) {
          numberProducts = numberProducts + basketInfo.basket[i].count;
          amountPaid = amountPaid + basketInfo.basket[i].data.price;
        }

        if (detailsProduct != null) {
          SkuProductDataModel selectSizeProduct = initState.selectSizeProduct ??
              (initState.detailsProduct?.sku.isNotEmpty ?? false
                  ? (initState.detailsProduct?.sku.first ??
                      SkuProductDataModel(
                        id: '',
                        value: '',
                      ))
                  : SkuProductDataModel(
                      id: '',
                      value: '',
                    ));
          if (selectSizeProduct.id == (event.item.sku) && (event.item.sku).contains('-')) {
            isShoppingCart = true;
          }

          if (selectSizeProduct.id == event.item.sku &&
              detailsProduct.sku.length == 1 &&
              !event.item.sku.contains('-')) {
            isShoppingCart = true;
            isShoppingCartDetailsProduct = true;
          }

          if (event.item.sku.isEmpty) {
            isShoppingCart = true;
            isShoppingCartDetailsProduct = true;
          }
        } else {
          isShoppingCart = false;
          isShoppingCartDetailsProduct = true;
        }

        emit(
          initState.copyWith(
            isError: basketProductInfo?.errorMessage.isNotEmpty ??
                false || basketInfo.errorMessage.isNotEmpty,
            errorMessage: MessageInfo.errorMessage,
            itemInfo: event.item,
            typeError: 'добавить товар в корзину',
            shoppingCart: basketInfo,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
            isPayInstallmentsSberbank: amountPaid >= 1000 && amountPaid <= 150000,
            isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
            isShoppingCart: (initState.isShoppingCart ?? false) || isShoppingCart,
            isLoadAddProductToShopingCart: false,
            isLoadErrorButton: false,
          ),
        );
      },
    );
  }

  Future<void> _deleteProductToSoppingCartEvent(
    DeleteProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        if (initState.isError ?? false) {
          emit(initState.copyWith(
            isLoadErrorButton: true,
          ));
        }

        final count = initState.shoppingCart.basket[event.index].count;
        final yourPrice = initState.shoppingCart.basket[event.index].product.yourPrice;
        final pb = initState.shoppingCart.basket[event.index].product.pb;
        final priceActual = yourPrice ~/ count;
        final priceOriginal = pb ~/ count;
        for (int i = 0; i < count; i++) {
          _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
            titleScreen: 'Корзина',
            titleProduct: initState.shoppingCart.basket[event.index].product.title,
            codeProduct: initState.shoppingCart.basket[event.index].code,
            typeProductToSoppingCart: AppMetricaShoppingCartEnum.removeProductToShoppingCart,
            type: 'Кнопка',
            identifier: '1',
            quantity: 1,
            sectionCategoriesPath: [],
            productCategoriesPath: [],
            priceActual: priceActual,
            priceOriginal: priceOriginal,
            internalComponentsActualPrice: [
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(priceActual),
                currency: initState.shoppingCart.basket[event.index].skuName,
              ),
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(priceActual),
                currency: initState.shoppingCart.basket[event.index].sku,
              ),
            ],
            internalComponentsOriginalPrice: [
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(priceOriginal),
                currency: initState.shoppingCart.basket[event.index].skuName,
              ),
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(priceOriginal),
                currency: initState.shoppingCart.basket[event.index].sku,
              ),
            ],
          );
        }

        BasketFullInfoDataModel? basketInfo;
        BasketDataModel? basketProductInfo;
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;
        if (isAuth) {
          basketProductInfo = await _basketRepository.addProductToBasket(
            code: event.item.code,
            sku: event.item.sku.contains('-') ? event.item.sku : '',
            count: 0,
            titleScreen: event.item.titleScreen,
            searchQuery: event.item.searchQuery,
            typeAddProductToShoppingCart: event.item.typeAddProductToShoppingCart,
            identifierAddProductToShoppingCart: event.item.identifierAddProductToShoppingCart,
            sectionCategoriesPath: event.item.sectionCategoriesPath,
            productCategoriesPath: event.item.productCategoriesPath,
          );
          basketInfo = await updateBasket(
            isLocal: false,
            promo: initState.promoCode,
            pickup: initState.pickup,
          );
        } else {
          _catalogRepository.deleteShoppingCartProduct(event.index);
          basketInfo = await updateBasket(
            promo: initState.promoCode,
            pickup: initState.pickup,
          );
        }

        int numberProducts = 0;
        int amountPaid = 0;
        for (int i = 0; i < basketInfo.basket.length; i++) {
          numberProducts = numberProducts + basketInfo.basket[i].count;
          amountPaid = amountPaid + basketInfo.basket[i].data.price;
        }

        if ((basketProductInfo?.errorMessage.isEmpty ?? false) || basketInfo.errorMessage.isEmpty) {
          emit(const ShoppingCartState.load());
        }

        emit(
          initState.copyWith(
            isError: (basketProductInfo?.errorMessage.isNotEmpty ?? false) ||
                basketInfo.errorMessage.isNotEmpty,
            errorMessage: MessageInfo.errorMessage,
            typeError: 'удалить товар из корзины',
            itemInfo: event.item,
            indexItem: event.index,
            shoppingCart: basketInfo,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
            isPayInstallmentsSberbank: amountPaid >= 1000 && amountPaid <= 150000,
            isLoadErrorButton: false,
          ),
        );
      },
    );
  }

  Future<void> _updateProductToSoppingCart(
    UpdateProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        if (initState.isError ?? false) {
          emit(initState.copyWith(
            isLoadErrorButton: true,
          ));
        }
        BasketFullInfoDataModel? basketInfo;
        BasketDataModel? basketProductInfo;
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;
        if (event.item.count == 0) {
          if (isAuth) {
            basketProductInfo = await _basketRepository.addProductToBasket(
              code: event.item.code,
              sku: event.item.sku,
              count: 0,
              titleScreen: event.item.titleScreen,
              searchQuery: event.item.searchQuery,
              typeAddProductToShoppingCart: event.item.typeAddProductToShoppingCart,
              identifierAddProductToShoppingCart: event.item.identifierAddProductToShoppingCart,
              sectionCategoriesPath: event.item.sectionCategoriesPath,
              productCategoriesPath: event.item.productCategoriesPath,
            );
          } else {
            _catalogRepository.deleteShoppingCartProduct(event.index);
          }
        } else {
          if (isAuth) {
            basketProductInfo = await _basketRepository.addProductToBasket(
              code: event.item.code,
              sku: event.item.sku,
              count: event.item.count,
              titleScreen: event.item.titleScreen,
              searchQuery: event.item.searchQuery,
              typeAddProductToShoppingCart: event.item.typeAddProductToShoppingCart,
              identifierAddProductToShoppingCart: event.item.identifierAddProductToShoppingCart,
              sectionCategoriesPath: event.item.sectionCategoriesPath,
              productCategoriesPath: event.item.productCategoriesPath,
            );
          } else {
            _catalogRepository.putShoppingCartProduct(event.index, event.item);
          }
        }

        if (isAuth) {
          basketInfo = await updateBasket(
            isLocal: false,
            promo: initState.promoCode,
            pickup: initState.pickup,
          );
        } else {
          basketInfo = await updateBasket(
            promo: initState.promoCode,
            pickup: initState.pickup,
          );
        }

        int numberProducts = 0;
        int amountPaid = 0;
        for (int i = 0; i < basketInfo.basket.length; i++) {
          numberProducts = numberProducts + basketInfo.basket[i].count;
          amountPaid = amountPaid + basketInfo.basket[i].data.price;
        }

        if (basketInfo.basket.isNotEmpty && basketInfo.basket.length - 1 == event.index) {
          if (initState.shoppingCart.basket[event.index].count !=
                  basketInfo.basket[event.index].count ||
              event.item.count == 0) {
            final count = basketInfo.basket[event.index].count;
            final yourPrice = basketInfo.basket[event.index].product.yourPrice;
            final pb = basketInfo.basket[event.index].product.pb;
            final priceActual = yourPrice ~/ count;
            final priceOriginal = pb ~/ count;
            _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
              titleScreen: 'Корзина',
              titleProduct: basketInfo.basket[event.index].product.title,
              codeProduct: basketInfo.basket[event.index].code,
              typeProductToSoppingCart:
                  event.item.count > initState.shoppingCart.basket[event.index].count
                      ? AppMetricaShoppingCartEnum.addProductToShoppingCart
                      : AppMetricaShoppingCartEnum.removeProductToShoppingCart,
              type: event.item.typeAddProductToShoppingCart,
              identifier: event.item.identifierAddProductToShoppingCart,
              quantity: 1,
              sectionCategoriesPath: [],
              productCategoriesPath: [],
              priceActual: priceActual,
              priceOriginal: priceOriginal,
              internalComponentsActualPrice: [
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(priceActual),
                  currency: basketInfo.basket[event.index].skuName,
                ),
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(priceActual),
                  currency: basketInfo.basket[event.index].sku,
                ),
              ],
              internalComponentsOriginalPrice: [
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(priceOriginal),
                  currency: basketInfo.basket[event.index].skuName,
                ),
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(priceOriginal),
                  currency: basketInfo.basket[event.index].sku,
                ),
              ],
            );
          }
        } else {
          final count = initState.shoppingCart.basket[event.index].count;
          final yourPrice = initState.shoppingCart.basket[event.index].product.yourPrice;
          final pb = initState.shoppingCart.basket[event.index].product.pb;
          final priceActual = yourPrice ~/ count;
          final priceOriginal = pb ~/ count;
          _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
            titleScreen: 'Корзина',
            titleProduct: initState.shoppingCart.basket[event.index].product.title,
            codeProduct: initState.shoppingCart.basket[event.index].code,
            typeProductToSoppingCart: AppMetricaShoppingCartEnum.removeProductToShoppingCart,
            type: event.item.typeAddProductToShoppingCart,
            identifier: event.item.identifierAddProductToShoppingCart,
            quantity: 1,
            sectionCategoriesPath: [],
            productCategoriesPath: [],
            priceActual: priceActual,
            priceOriginal: priceOriginal,
            internalComponentsActualPrice: [
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(priceActual),
                currency: initState.shoppingCart.basket[event.index].skuName,
              ),
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(priceActual),
                currency: initState.shoppingCart.basket[event.index].sku,
              ),
            ],
            internalComponentsOriginalPrice: [
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(priceOriginal),
                currency: initState.shoppingCart.basket[event.index].skuName,
              ),
              AppMetricaECommerceAmount(
                amount: Decimal.fromInt(priceOriginal),
                currency: initState.shoppingCart.basket[event.index].sku,
              ),
            ],
          );
        }

        if ((basketProductInfo?.errorMessage.isEmpty ?? false) || basketInfo.errorMessage.isEmpty) {
          emit(const ShoppingCartState.load());
        }

        final result = _catalogRepository.getShoppingCartProducts();
        logging(result.toString(), stackTrace: StackTrace.current);
        emit(
          initState.copyWith(
            isError: (basketProductInfo?.errorMessage.isNotEmpty ?? false) ||
                basketInfo.errorMessage.isNotEmpty,
            errorMessage: MessageInfo.errorMessage,
            typeError: 'изменить количство тоаров в корзине',
            itemInfo: event.item,
            indexItem: event.index,
            shoppingCart: basketInfo,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
            isPayInstallmentsSberbank: amountPaid >= 1000 && amountPaid <= 150000,
            isLoadErrorButton: false,
          ),
        );
      },
    );
  }

  Future<BasketFullInfoDataModel> updateBasket({
    bool isLocal = true,
    required String promo,
    required String pickup,
  }) async {
    List<BasketInfoItemDataModel> basket = [];
    if (isLocal) {
      final shopping = _catalogRepository.getShoppingCartProducts();
      for (int i = 0; i < shopping.length; i++) {
        basket.add(BasketInfoItemDataModel(
          code: shopping[i].code,
          sku: shopping[i].sku.contains('-') ? shopping[i].sku : '',
          count: shopping[i].count,
          titleScreen: shopping[i].titleScreen,
          searchQuery: shopping[i].searchQuery,
          typeAddProductToShoppingCart: shopping[i].typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart: shopping[i].identifierAddProductToShoppingCart,
          sectionCategoriesPath: shopping[i].sectionCategoriesPath,
          productCategoriesPath: shopping[i].productCategoriesPath,
        ));
      }
    }

    final basketInfo = await _basketRepository.getProductToBasketFullInfo(
      promo: promo,
      pickup: pickup,
      basket: isLocal ? basket : null,
    );

    if (isLocal) {
      for (int i = 0; i < basketInfo.basket.length; i++) {
        _catalogRepository.putShoppingCartProduct(
          i,
          BasketInfoItemDataModel(
            code: basketInfo.basket[i].code,
            sku: basketInfo.basket[i].sku,
            count: basketInfo.basket[i].count,
            titleScreen: basketInfo.basket[i].product.titleScreen ?? '',
            searchQuery: basketInfo.basket[i].product.searchQuery ?? '',
            typeAddProductToShoppingCart:
                basketInfo.basket[i].product.typeAddProductToShoppingCart ?? '',
            identifierAddProductToShoppingCart:
                basketInfo.basket[i].product.identifierAddProductToShoppingCart ?? '',
            sectionCategoriesPath: basketInfo.basket[i].product.sectionCategoriesPath ?? [],
            productCategoriesPath: basketInfo.basket[i].product.productCategoriesPath ?? [],
          ),
        );
      }
    }

    return basketInfo;
  }

  Future<void> _paymentBonus(
    PaymentBonusSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        if (initState.isError ?? false) {
          emit(
            initState.copyWith(
              isLoadErrorButton: true,
            ),
          );
        } else {
          emit(
            initState.copyWith(
              isLoadPaymentBonus: true,
            ),
          );
        }

        final paymentBonus = await _basketRepository.getPaymentBonus();

        if (paymentBonus.errorMessage.isEmpty) {
          emit(ShoppingCartState.openShowDialog(
            bonuses: initState.bonuses,
          ));
        }

        emit(
          initState.copyWith(
            paymentBonus: paymentBonus,
            isError: paymentBonus.errorMessage.isNotEmpty,
            errorMessage: MessageInfo.errorMessage,
            typeError: 'проверка бонусов',
            isLoadPaymentBonus: false,
            isLoadErrorButton: false,
          ),
        );
      },
    );
  }

  Future<void> _initGiftCard(
    InitGiftCardSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(
      productsShoppingCart: (initState) {
        emit(
          initState.copyWith(
            paymentGift: null,
            isLoadPaymentGift: false,
          ),
        );
      },
    );
  }

  Future<void> _giftCard(
    GiftCardSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        emit(
          initState.copyWith(
            isLoadPaymentGift: true,
          ),
        );
        final paymentGift = await _basketRepository.checkingGiftCardGettingBalance(
          number: event.number,
          pin: event.pin,
        );

        emit(
          initState.copyWith(
            paymentGift: paymentGift,
            isLoadPaymentGift: false,
          ),
        );
      },
    );
  }

  Future<void> _addGiftCard(
    AddGiftCardSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(
      productsShoppingCart: (initState) {
        List<BasketSertDeliveryRequest> listGiftCard = initState.listGiftCard.toList();
        int giftCards = 0;
        listGiftCard.add(event.giftCard);

        for (int i = 0; i < listGiftCard.length; i++) {
          giftCards = giftCards + int.parse(listGiftCard[i].v);
        }

        emit(
          initState.copyWith(
            listGiftCard: listGiftCard,
            giftCards: giftCards,
          ),
        );
      },
    );
  }

  Future<void> _promoCode(
    PromoCodeSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        emit(
          initState.copyWith(
            isLoadPaymentPromoCode: true,
          ),
        );
        BasketFullInfoDataModel basketInfo = await _basketRepository.getProductToBasketFullInfo(
          promo: event.promoCode,
        );
        int numberProducts = 0;
        int amountPaid = 0;
        int bonuses = 0;
        int giftCards = 0;
        for (int i = 0; i < basketInfo.basket.length; i++) {
          numberProducts = numberProducts + basketInfo.basket[i].count;
          amountPaid = amountPaid + basketInfo.basket[i].data.price;
        }

        if (basketInfo.r == '1') {
          if (amountPaid + (initState.delivery ?? 0) < initState.bonuses) {
            bonuses =
                initState.bonuses + (initState.delivery ?? 0) - (initState.bonuses - amountPaid);
          } else {
            if (amountPaid + (initState.delivery ?? 0) < initState.bonuses + initState.giftCards) {
              bonuses = initState.bonuses +
                  (initState.delivery ?? 0) -
                  (initState.bonuses + initState.giftCards - amountPaid) +
                  (initState.amountPaid - amountPaid) ~/ 2;
            } else {
              bonuses = initState.bonuses;
            }
          }
          if (amountPaid + (initState.delivery ?? 0) < initState.giftCards) {
            giftCards = initState.giftCards +
                (initState.delivery ?? 0) -
                (initState.giftCards - amountPaid);
          } else {
            if (amountPaid + (initState.delivery ?? 0) < initState.giftCards + bonuses) {
              giftCards = initState.giftCards +
                  (initState.delivery ?? 0) -
                  (initState.giftCards + initState.bonuses - amountPaid) +
                  (initState.amountPaid - amountPaid) ~/ 2;
            } else {
              giftCards = initState.giftCards;
            }
          }
          emit(
            initState.copyWith(
              shoppingCart: basketInfo,
              numberProducts: numberProducts,
              amountPaid: amountPaid,
              isLoadPaymentPromoCode: false,
              isActivePromoCode: event.promoCode.isNotEmpty,
              isRemovePromoCode: false,
              isPayInstallmentsSberbank: amountPaid >= 1000 && amountPaid <= 150000,
              promoCodeMessage: '',
              promoCode: event.promoCode,
              pickup: event.uid,
              bonuses: bonuses,
              giftCards: giftCards,
            ),
          );
        } else {
          emit(
            initState.copyWith(
              promoCodeMessage: basketInfo.e,
              isLoadPaymentPromoCode: false,
              promoCode: '',
            ),
          );
        }
      },
    );
  }

  Future<void> _removePromoCode(
    RemovePromoCodeSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        emit(
          initState.copyWith(
            isLoadPaymentPromoCode: true,
          ),
        );
        BasketFullInfoDataModel basketInfo = await _basketRepository.getProductToBasketFullInfo();
        int numberProducts = 0;
        int amountPaid = 0;
        for (int i = 0; i < basketInfo.basket.length; i++) {
          numberProducts = numberProducts + basketInfo.basket[i].count;
          amountPaid = amountPaid + basketInfo.basket[i].data.price;
        }

        if (basketInfo.r == '1') {
          emit(
            initState.copyWith(
              shoppingCart: basketInfo,
              numberProducts: numberProducts,
              amountPaid: amountPaid,
              isPayInstallmentsSberbank: amountPaid >= 1000 && amountPaid <= 150000,
              isLoadPaymentPromoCode: false,
              isActivePromoCode: false,
              isRemovePromoCode: true,
              promoCode: '',
            ),
          );
        } else {
          emit(
            initState.copyWith(
              promoCodeMessage: basketInfo.e,
              isLoadPaymentPromoCode: false,
              isRemovePromoCode: false,
              promoCode: initState.promoCode,
            ),
          );
        }
      },
    );
  }

  Future<void> _bonuses(
    BonusesSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(
      productsShoppingCart: (initState) {
        emit(
          initState.copyWith(
            bonuses: event.bonuses,
          ),
        );
      },
    );
  }

  Future<void> _createOrder(
    CreateOrderPromoCodeSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        emit(
          initState.copyWith(
            isLoadCreateOrder: true,
            creatOrderMessage: '',
          ),
        );
        if (event.request.isValidAddress) {
          _appMetricaEcommerceService.startAndEndCreatePurchaseProducts(
            typeProductToSoppingCart: AppMetricaTypeCreatePurchaseEnum.startCreatePurchase,
            products: initState.shoppingCart.basket
                .map(
                  (item) => item.product,
                )
                .toList(),
            promocode: initState.promoCode,
          );
          final result = await _basketRepository.createOrder(
            request: event.request,
          );
          logging(result.e, stackTrace: StackTrace.current);

          if (result.r == '1') {
            emit(
              ShoppingCartState.createOrderSuccessfully(
                orderId: result.id,
              ),
            );
          } else {
            emit(
              initState.copyWith(
                isLoadCreateOrder: false,
                creatOrderMessage: result.errorMessage,
              ),
            );
          }
        } else {
          emit(
            initState.copyWith(
              isLoadCreateOrder: false,
              creatOrderMessage: '- Не заполнен адрес доставки.',
            ),
          );
        }
      },
    );
  }

  Future<void> _getInfoProduct(
    GetInfoProductShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      SkuProductDataModel? selectSizeProduct;
      bool isShoppingCartDetailsProduct = false;
      String errorMessage = '';
      bool isError = false;
      List<String> listProductsCode = initState.listProductsCode.toList();
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const ShoppingCartState.load());
      }

      final basketInfo = await getBasketInfo(isLocal: !isAuth);

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      final additionalProductsDescriptionStyle =
          await _catalogRepository.getAdditionalProductsDescription(
        code: event.code,
        block: 'style',
      );

      final additionalProductsDescriptionAlso =
          await _catalogRepository.getAdditionalProductsDescription(
        code: event.code,
        block: 'also',
      );

      final additionalProductsDescriptionBrand =
          await _catalogRepository.getAdditionalProductsDescription(
        code: event.code,
        block: 'brand',
      );

      final additionalProductsDescriptionComplect =
          await _catalogRepository.getAdditionalProductsDescription(
        code: event.code,
        block: 'complect',
      );

      List<BasketFullInfoItemDataModel> soppingCart = [];

      if (detailsProduct.sku.length > 1) {
        if (!detailsProduct.sku.first.id.contains('-') && detailsProduct.sku.first.id.length < 10) {
          for (int i = 0; i < detailsProduct.sku.length; i++) {
            if (detailsProduct.sku[i].id == event.code) {
              selectSizeProduct = detailsProduct.sku[i];
            }
          }
        }
        soppingCart = basketInfo.basket
            .where(
              (element) =>
                  int.parse(element.code) == detailsProduct.code &&
                  (element.sku.isNotEmpty ? element.sku == detailsProduct.sku.first.id : true),
            )
            .toList();
      } else {
        soppingCart = basketInfo.basket
            .where(
              (element) => int.parse(element.code) == detailsProduct.code,
            )
            .toList();
        if (soppingCart.isNotEmpty) {
          if (!soppingCart.first.sku.contains('-')) {
            isShoppingCartDetailsProduct = true;
          }
        }
      }

      _appMetricaEcommerceService.viewingProductPage(
        titleScreen: event.titleScreen,
        titleProduct: detailsProduct.name,
        codeProduct: detailsProduct.code.toString(),
        type: event.typeAddProductToShoppingCart,
        identifier: event.identifierAddProductToShoppingCart,
        sectionCategoriesPath: [],
        productCategoriesPath: [],
        priceActual: detailsProduct.price.yourPrice,
        priceOriginal: int.parse(detailsProduct.price.pb),
        internalComponentsActualPrice: detailsProduct.sku.isNotEmpty
            ? [
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(detailsProduct.price.yourPrice),
                  currency: detailsProduct.sku.isNotEmpty ? detailsProduct.sku.first.value : '',
                ),
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(detailsProduct.price.yourPrice),
                  currency: detailsProduct.sku.isNotEmpty ? detailsProduct.sku.first.id : '',
                ),
              ]
            : [],
        internalComponentsOriginalPrice: detailsProduct.sku.isNotEmpty
            ? [
                AppMetricaECommerceAmount(
                  amount: Decimal.parse(detailsProduct.price.pb),
                  currency: detailsProduct.sku.isNotEmpty ? detailsProduct.sku.first.value : '',
                ),
                AppMetricaECommerceAmount(
                  amount: Decimal.parse(detailsProduct.price.pb),
                  currency: detailsProduct.sku.isNotEmpty ? detailsProduct.sku.first.id : '',
                ),
              ]
            : [],
      );

      if (detailsProduct.errorMessage.isNotEmpty ||
          basketInfo.errorMessage.isNotEmpty ||
          additionalProductsDescriptionStyle.errorMessage.isNotEmpty ||
          additionalProductsDescriptionAlso.errorMessage.isNotEmpty ||
          additionalProductsDescriptionComplect.errorMessage.isNotEmpty) {
        isError = true;
        errorMessage = MessageInfo.errorMessage;
      } else {
        if (!(event.isUpdate ?? false)) {
          listProductsCode.add(event.code);
        }
      }

      emit(initState.copyWith(
        isError: isError,
        errorMessage: errorMessage,
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProdcutsComplect: additionalProductsDescriptionComplect.products,
        listProductsCode: listProductsCode,
        isAuth: isAuth,
        isShoppingCart: soppingCart.isNotEmpty,
        selectSizeProduct: selectSizeProduct ?? event.size,
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
        isBlocBackBotton: false,
        codeProduct: event.code,
        titleScreen: event.titleScreen,
        typeAddProductToShoppingCart: event.typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart: event.identifierAddProductToShoppingCart,
        typeError: 'описание товара',
      ));
    });
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      if (listProductsCode.isNotEmpty) {
        listProductsCode.removeLast();
      }

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const ShoppingCartState.load());
        final detailsProduct = await _catalogRepository.getDetailsProduct(
          code: listProductsCode.last,
          genderIndex: _updateDataService.selectedIndexGender.toString(),
        );

        final additionalProductsDescriptionStyle =
            await _catalogRepository.getAdditionalProductsDescription(
          code: listProductsCode.last,
          block: 'style',
        );

        final additionalProductsDescriptionAlso =
            await _catalogRepository.getAdditionalProductsDescription(
          code: listProductsCode.last,
          block: 'also',
        );

        final additionalProductsDescriptionBrand =
            await _catalogRepository.getAdditionalProductsDescription(
          code: listProductsCode.last,
          block: 'brand',
        );

        final additionalProductsDescriptionComplect =
            await _catalogRepository.getAdditionalProductsDescription(
          code: listProductsCode.last,
          block: 'complect',
        );

        emit(initState.copyWith(
          detailsProduct: detailsProduct,
          listProdcutsStyle: additionalProductsDescriptionStyle.products,
          listProdcutsAlso: additionalProductsDescriptionAlso.products,
          listProdcutsBrand: additionalProductsDescriptionBrand.products,
          listProdcutsComplect: additionalProductsDescriptionComplect.products,
          listProductsCode: listProductsCode,
          selectSizeProduct: null,
        ));
      }
    });
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      FavouritesCatalogInfoDataModel? favouritesInfo;
      FavouritesInfoDataModel? favouritesProductsInfo;
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        favouritesProductsInfo = await _favouritesRepository.addFavouriteProdcut(
          code: event.product.id.toString(),
        );
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
        );
      } else {
        _catalogRepository.addFavouritesProduct(event.product);
        favouritesInfo = await updateFavouritesProducts();
      }

      if ((favouritesProductsInfo?.errorMessage.isEmpty ?? false) ||
          favouritesInfo.errorMessage.isEmpty) {
        emit(const ShoppingCartState.load());
      }
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          isError: (favouritesProductsInfo?.errorMessage.isNotEmpty ?? false) ||
              favouritesInfo.errorMessage.isNotEmpty,
          errorMessage: MessageInfo.errorMessage,
          typeError: 'добавить товар в избранное',
          indexItem: event.index,
          product: event.product,
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _deleteFavouriteProduct(
    DeleteFavouriteProductShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      FavouritesCatalogInfoDataModel? favouritesInfo;
      FavouritesInfoDataModel? favouritesProductsInfo;
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        favouritesProductsInfo =
            await _favouritesRepository.deleteFavouriteProdcut(code: event.index.toString());
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
        );
      } else {
        _catalogRepository.deleteFavouritesProduct(event.index);
        favouritesInfo = await updateFavouritesProducts();
      }

      if ((favouritesProductsInfo?.errorMessage.isEmpty ?? false) ||
          favouritesInfo.errorMessage.isEmpty) {
        emit(const ShoppingCartState.load());
      }
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          isError: (favouritesProductsInfo?.errorMessage.isNotEmpty ?? false) ||
              favouritesInfo.errorMessage.isNotEmpty,
          errorMessage: MessageInfo.errorMessage,
          typeError: 'удалить товар из избранного',
          indexItem: event.index,
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _changeSizeProduct(
    ChangeSizeProductSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(productsShoppingCart: (initState) {
      emit(initState.copyWith(
        selectSizeProduct: event.selectSizeProduct,
      ));
    });
  }

  Future<void> _changeReceivingType(
    ChangeReceivingTypeSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      await _locationRepository.switchTypeDelivery(
        deliveryId: event.receivingType == 'Самовывоз' ? '1' : '2',
      );
      emit(initState.copyWith(
        receivingType: event.receivingType,
      ));
    });
  }

  Future<void> _changeUidPickUpPoint(
    ChangeUidPickUpPointSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      await _locationRepository.addPickUpPoint(pickId: event.uidPickUpPoint);
      BoutiqueDataModel boutique = _updateDataService.boutiques.firstWhere(
        (item) => item.uidStore == event.uidPickUpPoint,
      );
      logging(boutique.toString(), stackTrace: StackTrace.current);

      emit(initState.copyWith(
        uidPickUpPoint: event.uidPickUpPoint.isNotEmpty
            ? event.uidPickUpPoint
            : initState.boutiques.data.first.uidStore,
        boutique: boutique,
        address: boutique.name,
      ));
    });
  }

  Future<void> _selectAddressDelivery(
    SelectAddressDeliverySoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      String address = '';
      String zip = '';
      String cityId = '';
      String id = '';

      address = initState.deliveryInfo?.address[event.index].addr ?? '';
      zip = initState.deliveryInfo?.address[event.index].zip ?? '';
      cityId = initState.deliveryInfo?.address[event.index].cityId ?? '';
      id = initState.deliveryInfo?.address[event.index].id ?? '';

      CalculationCostDeliveryDataModel calculationCostDelivery =
          await _locationRepository.calculationCostDelivery(
        zipcode: zip,
        sum: initState.amountPaid,
        cityId: cityId,
      );
      int delivery = calculationCostDelivery.price;

      emit(initState.copyWith(
        addressDelivery: BasketAddressDataModel(
          address: address,
          zip: zip,
          cityId: cityId,
          adrId: id,
        ),
        delivery: delivery,
        selectIndexAddress: event.index,
        isUponReceipt: cityId == '7700000000000',
      ));
    });
  }

  Future<void> _addAddressDelivery(
    AddAddressDeliverySoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      await _locationRepository.addDeliveryAddress(
        addr: event.addressDelivery.address,
        city: event.addressDelivery.cityId ?? '',
        zip: event.addressDelivery.zip,
      );

      DeliveryDataModel deliveryInfo = await _locationRepository.getDelivery();

      CalculationCostDeliveryDataModel calculationCostDelivery =
          await _locationRepository.calculationCostDelivery(
        zipcode: deliveryInfo.address.first.zip,
        sum: initState.amountPaid,
        cityId: deliveryInfo.address.first.cityId,
      );
      int delivery = calculationCostDelivery.price;

      emit(initState.copyWith(
        delivery: delivery,
        isUponReceipt: deliveryInfo.address.isNotEmpty
            ? deliveryInfo.address.first.cityId == '7700000000000'
            : true,
        deliveryInfo: deliveryInfo,
        addressDelivery: BasketAddressDataModel(
          address: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.addr : '',
          zip: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.zip : '',
          cityId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.cityId : '',
          adrId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.id : '',
        ),
      ));
    });
  }

  Future<void> _deleteAddressDelivery(
    DeleteAddressDeliverySoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      CalculationCostDeliveryDataModel? calculationCostDelivery;
      int delivery = 0;
      int selectIndexAddress =
          initState.deliveryInfo?.address.indexWhere((item) => item.id == event.id) ?? 0;

      emit(initState.copyWith(
        deleteIndexAddress: selectIndexAddress,
        isLoadDeleteAddress: true,
      ));

      await _locationRepository.deleteDeliveryAddress(
        id: event.id,
      );

      DeliveryDataModel deliveryInfo = await _locationRepository.getDelivery();

      if (deliveryInfo.address.isNotEmpty) {
        calculationCostDelivery = await _locationRepository.calculationCostDelivery(
          zipcode: deliveryInfo.address.first.zip,
          sum: initState.amountPaid,
          cityId: deliveryInfo.address.first.cityId,
        );
        delivery = calculationCostDelivery.price;
      }

      emit(initState.copyWith(
        delivery: delivery != 0 ? delivery : null,
        isUponReceipt: deliveryInfo.address.isNotEmpty
            ? deliveryInfo.address.first.cityId == '7700000000000'
            : true,
        selectIndexAddress:
            selectIndexAddress == initState.selectIndexAddress ? 0 : initState.selectIndexAddress,
        deliveryInfo: deliveryInfo,
        isLoadDeleteAddress: false,
        addressDelivery: BasketAddressDataModel(
          address: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.addr : '',
          zip: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.zip : '',
          cityId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.cityId : '',
          adrId: deliveryInfo.address.isNotEmpty ? deliveryInfo.address.first.id : '',
        ),
      ));
    });
  }

  Future<void> _changePaymentType(
    ChangePaymentTypeSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(productsShoppingCart: (initState) {
      emit(initState.copyWith(
        paymentId: event.paymentId,
        typePay: event.typePay,
      ));
    });
  }

  Future<void> _changeTitlePromocode(
    ChangeTitlePromocodeSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(productsShoppingCart: (initState) {
      emit(initState.copyWith(
        titlePromocode: event.titlePromocode,
      ));
    });
  }

  Future<void> _addProductToSoppingCartInfo(
    AddProductToSoppingCartInfoEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      emit(initState.copyWith(
        isShoppingCart: true,
      ));
    });
  }

  Future<void> _openAuthModel(
    OpenAuthModelSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(productsShoppingCart: (initState) {
      emit(initState.copyWith(
        isAuthModel: true,
      ));
    });
  }

  Future<void> _closeAuthModel(
    CloseAuthModelSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(productsShoppingCart: (initState) {
      emit(initState.copyWith(
        isAuthModel: false,
        isLoadCreateOrder: true,
      ));
    });
  }

  Future<void> _checkProductToSoppingCart(
    CheckProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      final basketInfo = await getBasketInfo(isLocal: !isAuth);
      final soppingCart = basketInfo.basket.where(
        (element) =>
            int.parse(element.code) == (initState.detailsProduct?.code ?? 0) &&
            element.sku == event.size.id,
      );
      emit(initState.copyWith(
        isShoppingCart: soppingCart.isNotEmpty,
      ));
    });
  }

  Future<void> _getInfoProductSize(
    GetInfoProductSizeShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(initState.copyWith(
          isLoadGetSizeProduct: true,
          codeProduct: event.code,
        ));
      }
      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      if (detailsProduct.errorMessage.isEmpty) {
        if (detailsProduct.sku.isNotEmpty) {
          if (detailsProduct.sku.first.id.contains('-') &&
              detailsProduct.sku.first.id.length > 10) {
            emit(ShoppingCartState.getSizeProduct(
              code: event.code,
              listSize: detailsProduct.sku,
              listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
            ));
          } else {
            if (event.isShop) {
              emit(const ShoppingCartState.openSoppingCart());
            } else {
              emit(ShoppingCartState.addProductToSoppingCart(
                code: event.code,
              ));
            }
          }
        } else {
          if (event.isShop) {
            emit(const ShoppingCartState.openSoppingCart());
          } else {
            emit(ShoppingCartState.addProductToSoppingCart(
              code: event.code,
            ));
          }
        }
      }

      emit(initState.copyWith(
        detailsProduct:
            detailsProduct.errorMessage.isNotEmpty ? initState.detailsProduct : detailsProduct,
        listSize: detailsProduct.sku,
        isLoadGetSizeProduct: false,
        codeProduct: event.code,
        isError: detailsProduct.errorMessage.isNotEmpty,
        errorMessage: detailsProduct.errorMessage,
        isShopGetSizeProduct: event.isShop,
        typeError: 'выбор размера описание товара',
        isLoadErrorButton: false,
      ));
    });
  }

  Future<FavouritesCatalogInfoDataModel> updateFavouritesProducts({
    bool isLocal = true,
  }) async {
    FavouritesCatalogProductsRequest request = FavouritesCatalogProductsRequest();
    List<String> favourites = [];
    if (isLocal) {
      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      for (int i = 0; i < favouritesProducts.length; i++) {
        favourites.add(favouritesProducts[i].id.toString());
      }
    }

    final favouritesInfo = await _favouritesRepository.getFavouritesProdcutsInfo(
      request: request.copyWith(favourites: favourites),
    );

    return favouritesInfo;
  }

  Future<BasketFullInfoDataModel> getBasketInfo({
    bool isLocal = true,
  }) async {
    List<BasketInfoItemDataModel> basket = [];
    if (isLocal) {
      final shopping = _catalogRepository.getShoppingCartProducts();
      for (int i = 0; i < shopping.length; i++) {
        basket.add(BasketInfoItemDataModel(
          code: shopping[i].code,
          sku: shopping[i].sku.contains('-') ? shopping[i].sku : '',
          count: shopping[i].count,
          titleScreen: shopping[i].titleScreen,
          searchQuery: shopping[i].searchQuery,
          typeAddProductToShoppingCart: shopping[i].typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart: shopping[i].identifierAddProductToShoppingCart,
          sectionCategoriesPath: shopping[i].sectionCategoriesPath,
          productCategoriesPath: shopping[i].productCategoriesPath,
        ));
      }
    }

    final basketInfo = await _basketRepository.getProductToBasketFullInfo(
      basket: isLocal ? basket : null,
    );

    if (isLocal) {
      for (int i = 0; i < basketInfo.basket.length; i++) {
        _catalogRepository.putShoppingCartProduct(
          i,
          BasketInfoItemDataModel(
            code: basketInfo.basket[i].code,
            sku: basketInfo.basket[i].sku,
            count: basketInfo.basket[i].count,
            titleScreen: basketInfo.basket[i].product.titleScreen ?? '',
            searchQuery: basketInfo.basket[i].product.searchQuery ?? '',
            typeAddProductToShoppingCart:
                basketInfo.basket[i].product.typeAddProductToShoppingCart ?? '',
            identifierAddProductToShoppingCart:
                basketInfo.basket[i].product.identifierAddProductToShoppingCart ?? '',
            sectionCategoriesPath: basketInfo.basket[i].product.sectionCategoriesPath ?? [],
            productCategoriesPath: basketInfo.basket[i].product.productCategoriesPath ?? [],
          ),
        );
      }
    }

    return basketInfo;
  }
}
