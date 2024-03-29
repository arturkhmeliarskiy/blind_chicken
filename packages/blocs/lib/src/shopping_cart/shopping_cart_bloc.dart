import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

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

  ShoppingCartBloc(
    this._catalogRepository,
    this._basketRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
    this._updateDataService,
    this._boutiquesRepository,
  ) : super(const ShoppingCartState.init()) {
    on<ShoppingCartEvent>(
      (event, emit) => event.map(
        init: (event) => _init(event, emit),
        preloadData: (event) => _preloadData(event, emit),
        addProductToSoppingCart: (event) => _addProductToSoppingCart(event, emit),
        deleteProductToSoppingCart: (event) => _deleteProductToSoppingCartEvent(event, emit),
        updateProductToSoppingCart: (event) => _updateProductToSoppingCart(event, emit),
        paymentBonus: (event) => _paymentBonus(event, emit),
        initGiftCard: (event) => _initGiftCard(event, emit),
        giftCard: (event) => _giftCard(event, emit),
        addGiftCard: (event) => _addGiftCard(event, emit),
        delivery: (event) => _delivery(event, emit),
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
      ),
    );
  }

  Future<void> _init(
    InitShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
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
        ),
        numberProducts: 0,
        amountPaid: 0,
        favouritesProducts: [],
        payments: _updateDataService.payments,
        isLoadPaymentBonus: false,
        isLoadPaymentGift: false,
        isLoadPaymentPromoCode: false,
        delivery: 0,
        boutiques: BoutiquesDataModel(
          data: [],
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
        favouritesProductsId: [],
        isAuth: isAuth,
      ),
    );
  }

  Future<void> _preloadData(
    PreloadDataShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    emit(const ShoppingCartState.load());
    List<ProductDataModel> favouritesProducts = [];
    List<int> favouritesProductsId = [];
    BasketFullInfoDataModel? basketInfo;
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    if (isAuth) {
      basketInfo = await _basketRepository.getProductToBasketFullInfo();
      final favouritesProdcuts = await _favouritesRepository.getFavouritesProdcuts();
      favouritesProductsId = favouritesProdcuts.favorites.map((item) => int.parse(item)).toList();
      log(basketInfo.toString());
      log(favouritesProdcuts.toString());
    } else {
      basketInfo = await updateBasket(promo: '', pickup: '');
      favouritesProducts = _catalogRepository.getFavouritesProducts();
      favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
    }
    final boutiques = await _boutiquesRepository.getBoutiques();
    _updateDataService.boutiques = boutiques.data;

    int numberProducts = 0;
    int amountPaid = 0;
    for (int i = 0; i < basketInfo.basket.length; i++) {
      numberProducts = numberProducts + basketInfo.basket[i].count;
      amountPaid = amountPaid + basketInfo.basket[i].data.price;
    }

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
        delivery: 0,
        boutiques: BoutiquesDataModel(
          data: boutiques.data,
          errorMessage: '',
        ),
        promoCodeMessage: '',
        isActivePromoCode: false,
        promoCode: '',
        pickup: '',
        listGiftCard: [],
        giftCards: 0,
        bonuses: 0,
        isLoadCreateOrder: false,
        listProductsCode: [],
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        favouritesProductsId: favouritesProductsId,
        isAuth: isAuth,
      ),
    );
  }

  Future<void> _addProductToSoppingCart(
    AddProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(
      productsShoppingCart: (initState) async {
        BasketFullInfoDataModel? basketInfo;
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;

        if (isAuth) {
          await _basketRepository.addProductToBasket(
            code: event.item.code,
            sku: event.item.sku.contains('-') ? event.item.sku : '',
            count: event.item.count,
          );
          basketInfo = await updateBasket(
            isLocal: false,
            promo: initState.promoCode,
            pickup: initState.pickup,
          );
          log(basketInfo.toString());
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

        emit(
          initState.copyWith(
            shoppingCart: basketInfo,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
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
        BasketFullInfoDataModel? basketInfo;
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;
        if (isAuth) {
          await _basketRepository.addProductToBasket(
            code: event.item.code,
            sku: event.item.sku.contains('-') ? event.item.sku : '',
            count: 0,
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
        emit(const ShoppingCartState.load());
        emit(
          initState.copyWith(
            shoppingCart: basketInfo,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
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
        BasketFullInfoDataModel? basketInfo;
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;
        if (event.item.count == 0) {
          if (isAuth) {
            await _basketRepository.addProductToBasket(
              code: event.item.code,
              sku: event.item.sku,
              count: 0,
            );
          } else {
            _catalogRepository.deleteShoppingCartProduct(event.index);
          }
        } else {
          if (isAuth) {
            await _basketRepository.addProductToBasket(
              code: event.item.code,
              sku: event.item.sku,
              count: event.item.count,
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
        emit(const ShoppingCartState.load());
        final result = _catalogRepository.getShoppingCartProducts();
        log(result.toString());
        emit(
          initState.copyWith(
            shoppingCart: basketInfo,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
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
        emit(
          initState.copyWith(
            isLoadPaymentBonus: true,
          ),
        );
        final paymentBonus = await _basketRepository.getPaymentBonus();

        emit(
          initState.copyWith(
            paymentBonus: paymentBonus,
            isLoadPaymentBonus: false,
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

  Future<void> _delivery(
    DeliverySoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(
      productsShoppingCart: (initState) {
        emit(const ShoppingCartState.load());
        emit(
          initState.copyWith(
            delivery: event.delivery,
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
              isLoadPaymentPromoCode: false,
              isActivePromoCode: event.promoCode.isNotEmpty,
              isRemovePromoCode: false,
              promoCodeMessage: '',
              promoCode: event.promoCode,
              pickup: event.uid,
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
        emit(initState.copyWith(isLoadCreateOrder: true));
        final result = await _basketRepository.createOrder(
          request: event.request,
        );
        log(result.e);
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
              creatOrderMessage: result.e,
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
      List<String> listProductsCode = initState.listProductsCode.toList();
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      emit(const ShoppingCartState.load());

      final basketInfo = await getBasketInfo(isLocal: !isAuth);

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: '1',
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

      if (!(event.isUpdate ?? false)) {
        listProductsCode.add(event.code);
      }

      List<BasketFullInfoItemDataModel> soppingCart = [];

      if (detailsProduct.sku.isNotEmpty) {
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
      }

      emit(initState.copyWith(
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProductsCode: listProductsCode,
        isAuth: isAuth,
        isSoppingCart: soppingCart.isNotEmpty,
      ));
    });
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      listProductsCode.removeLast();

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const ShoppingCartState.load());
        final detailsProduct = await _catalogRepository.getDetailsProduct(
          code: listProductsCode.last,
          genderIndex: '1',
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

        emit(initState.copyWith(
          detailsProduct: detailsProduct,
          listProdcutsStyle: additionalProductsDescriptionStyle.products,
          listProdcutsAlso: additionalProductsDescriptionAlso.products,
          listProdcutsBrand: additionalProductsDescriptionBrand.products,
          listProductsCode: listProductsCode,
        ));
      }
    });
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      FavouritesCatalogInfoDataModel? favouritesInfo;
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        await _favouritesRepository.addFavouriteProdcut(
          code: event.product.id.toString(),
        );
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
        );
        final result = await _favouritesRepository.getFavouritesProdcuts();
        log(result.toString());
      } else {
        _catalogRepository.addFavouritesProduct(event.product);
        favouritesInfo = await updateFavouritesProducts();
      }

      emit(const ShoppingCartState.load());
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
        ),
      );
    });
  }

  Future<void> _deleteFavouriteProduct(
    DeleteFavouriteProductShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      FavouritesCatalogInfoDataModel? favouritesInfo;

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        await _favouritesRepository.deleteFavouriteProdcut(code: event.index.toString());
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
        );
        final result = await _favouritesRepository.getFavouritesProdcuts();
        log(result.toString());
      } else {
        _catalogRepository.deleteFavouritesProduct(event.index);
        favouritesInfo = await updateFavouritesProducts();
      }

      emit(const ShoppingCartState.load());
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
        ),
      );
    });
  }

  Future<void> _addProductToSoppingCartInfo(
    AddProductToSoppingCartInfoEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    await state.mapOrNull(productsShoppingCart: (initState) async {
      emit(initState.copyWith(
        isSoppingCart: true,
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
        isSoppingCart: soppingCart.isNotEmpty,
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
          ),
        );
      }
    }

    return basketInfo;
  }
}
