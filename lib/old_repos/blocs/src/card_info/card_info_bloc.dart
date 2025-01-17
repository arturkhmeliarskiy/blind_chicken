import 'dart:developer';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

part 'card_info_event.dart';

part 'card_info_state.dart';

part 'card_info_bloc.freezed.dart';

class CardInfoBloc extends Bloc<CardInfoEvent, CardInfoState> {
  final CatalogRepository _catalogRepository;
  final BasketRepository _basketRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final UpdateDataService _updateDataService;
  final FavouritesRepository _favouritesRepository;
  final AppMetricaEcommerceService _appMetricaEcommerceService;

  CardInfoBloc(
    this._catalogRepository,
    this._basketRepository,
    this._sharedPreferencesService,
    this._updateDataService,
    this._appMetricaEcommerceService,
    this._favouritesRepository,
  ) : super(const CardInfoState.init()) {
    on<CardInfoEvent>(
      (event, emit) => event.mapOrNull(
        init: (event) => _init(event, emit),
        getProduct: (event) => _getProduct(event, emit),
        goBackProductInfo: (event) => _goBackProductInfo(event, emit),
        getInfoProductSize: (event) => _getInfoProductSize(event, emit),
        addFavouriteProduct: (event) => _addFavouriteProduct(event, emit),
        deleteFavouriteProduct: (event) => _deleteFavouriteProduct(event, emit),
        changeSizeProduct: (event) => _changeSizeProduct(event, emit),
        addProductToSoppingCart: (event) =>
            _addProductToSoppingCart(event, emit),
        addProductToSoppingCartInfo: (event) =>
            _addProductToSoppingCartInfo(event, emit),
        checkOpenGetInfoProductSize: (event) => _checkOpenGetInfoProductSize(event, emit),
        checkProductToSoppingCart: (event) =>
            _checkProductToSoppingCart(event, emit),
      ),
    );
  }

  void _init(InitCardInfoEvent event, Emitter<CardInfoState> emit) {
    emit(const CardInfoState.load());
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;

    emit(CardInfoState.productInfoCard(
        favouritesProducts: [],
        listProductsCode: [],
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        listProdcutsComplect: [],
        listSize: [],
        favouritesProductsId: [],
        isAuth: isAuth,
        isLoadGetSizeProduct: false,
        isBlocBackBotton: true,
        codeProduct: '',
        titleScreen: 'Карточка продукта',
        typeError: 'описание товара',
        isOpenGetSizeProduct: false,
      ),
    );
  }

  Future<void> _getProduct(
      GetProductCardInfoEvent event, Emitter<CardInfoState> emit) async {
    await state.mapOrNull(productInfoCard: (initState) async {
      SkuProductDataModel? selectSizeProduct;
      List<int> favouritesProductsId = [];
      List<ProductDataModel> favouritesProducts = [];
      bool isShoppingCartDetailsProduct = false;
      String errorMessage = '';
      bool isError = false;
      AppMetrica.reportEvent(event.titleScreen);
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
        emit(const CardInfoState.load());
      }

      final basketInfo = await getBasketInfo(isLocal: !isAuth);
      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender.toString(),
        messageId: event.messageId,
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
      FavouritesDataModel? favouritesProductsInfo;

      if (isAuth) {
        favouritesProductsInfo = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId =
            favouritesProductsInfo.favorites.map((item) => int.parse(item)).toList();
        log(favouritesProductsInfo.toString());
      } else {
        favouritesProducts = _catalogRepository.getFavouritesProducts();
        favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
      }
      List<BasketFullInfoItemDataModel> soppingCart = [];

      if (detailsProduct.sku.length > 1) {
        if (!detailsProduct.sku.first.id.contains('-') &&
            detailsProduct.sku.first.id.length < 10) {
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
                  (element.sku.isNotEmpty
                      ? element.sku == detailsProduct.sku.first.id
                      : true),
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
        titleScreen: event.messageId?.isNotEmpty ?? false
            ? 'Уведомление'
            : event.titleScreen,
        titleProduct: detailsProduct.name,
        codeProduct: detailsProduct.code.toString(),
        type: event.messageId?.isNotEmpty ?? false
            ? 'Уведомление'
            : event.typeAddProductToShoppingCart,
        identifier: event.messageId?.isNotEmpty ?? false
            ? '2'
            : event.identifierAddProductToShoppingCart,
        sectionCategoriesPath: [],
        productCategoriesPath: [],
        priceActual: detailsProduct.price.yourPrice,
        priceOriginal: int.parse(detailsProduct.price.pb),
        internalComponentsActualPrice: detailsProduct.sku.isNotEmpty
            ? [
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(detailsProduct.price.yourPrice),
                  currency: detailsProduct.sku.isNotEmpty
                      ? detailsProduct.sku.first.value
                      : '',
                ),
                AppMetricaECommerceAmount(
                  amount: Decimal.fromInt(detailsProduct.price.yourPrice),
                  currency: detailsProduct.sku.isNotEmpty
                      ? detailsProduct.sku.first.id
                      : '',
                ),
              ]
            : [],
        internalComponentsOriginalPrice: detailsProduct.sku.isNotEmpty
            ? [
                AppMetricaECommerceAmount(
                  amount: Decimal.parse(detailsProduct.price.pb),
                  currency: detailsProduct.sku.isNotEmpty
                      ? detailsProduct.sku.first.value
                      : '',
                ),
                AppMetricaECommerceAmount(
                  amount: Decimal.parse(detailsProduct.price.pb),
                  currency: detailsProduct.sku.isNotEmpty
                      ? detailsProduct.sku.first.id
                      : '',
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
        product: event.product ?? initState.product,
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
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
        identifierAddProductToShoppingCart:
            event.identifierAddProductToShoppingCart,
        typeError: 'описание товара',
      ));
    });
  }  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyCardInfoEvent event,
    Emitter<CardInfoState> emit,
      ) async {
    await state.mapOrNull(productInfoCard: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      if (listProductsCode.isNotEmpty) {
        listProductsCode.removeLast();
      }

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const CardInfoState.load());
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

  Future<void> _getInfoProductSize(
    GetInfoProductSizeCardInfoEvent event,
    Emitter<CardInfoState> emit,
  ) async {
    await state.mapOrNull(productInfoCard: (initState) async {
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
            emit(CardInfoState.getSizeProduct(
              code: event.code,
              listSize: detailsProduct.sku,
              listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
              titleScreen: event.titleScreen,
            ));
          } else {
            if (event.isShop) {
              emit(const CardInfoState.openSoppingCart());
            } else {
              emit(CardInfoState.addProductToSoppingCart(
                code: event.code,
                titleScreen: event.titleScreen,
              ));
            }
          }
        } else {
          if (event.isShop) {
            emit(const CardInfoState.openSoppingCart());
          } else {
            emit(CardInfoState.addProductToSoppingCart(
              code: event.code,
              titleScreen: event.titleScreen,
            ));
          }
        }
      }

      emit(initState.copyWith(
        detailsProduct: detailsProduct.errorMessage.isNotEmpty
            ? initState.detailsProduct
            : detailsProduct,
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

  Future<void> _addFavouriteProduct(
    AddFavouriteProductCardInfoEvent event,
    Emitter<CardInfoState> emit,
  ) async {
    await state.mapOrNull(productInfoCard: (initState) async {
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
            await _favouritesRepository.addFavouriteProdcut(
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
        emit(const CardInfoState.load());
      }
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          isError: (favouritesProductsInfo?.errorMessage.isNotEmpty ?? false) ||
              favouritesInfo.errorMessage.isNotEmpty,
          errorMessage: MessageInfo.errorMessage,
          typeError: 'добавить товар в избранное',
          product: event.product,
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _deleteFavouriteProduct(
    DeleteFavouriteProductCardInfoEvent event,
    Emitter<CardInfoState> emit,
  ) async {
    await state.mapOrNull(productInfoCard: (initState) async {
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
        favouritesProductsInfo = await _favouritesRepository
            .deleteFavouriteProdcut(code: event.index.toString());
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
        );
      } else {
        _catalogRepository.deleteFavouritesProduct(event.index);
        favouritesInfo = await updateFavouritesProducts();
      }

      if ((favouritesProductsInfo?.errorMessage.isEmpty ?? false) ||
          favouritesInfo.errorMessage.isEmpty) {
        emit(const CardInfoState.load());
      }
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          isError: (favouritesProductsInfo?.errorMessage.isNotEmpty ?? false) ||
              favouritesInfo.errorMessage.isNotEmpty,
          errorMessage: MessageInfo.errorMessage,
          typeError: 'удалить товар из избранного',
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _changeSizeProduct(
      ChangeSizeProductCardInfoEvent event, Emitter<CardInfoState> emit) async {
    state.mapOrNull(productInfoCard: (initState) {
      emit(initState.copyWith(
        selectSizeProduct: event.selectSizeProduct,
      ));
    });
  }

  Future<void> _addProductToSoppingCartInfo(
    AddProductToSoppingCardInfoEvent event,
    Emitter<CardInfoState> emit,
  ) async {
    await state.mapOrNull(productInfoCard: (initState) async {
      emit(initState.copyWith(
        isShoppingCart: true,
      ));
    });
  }

  Future<void> _addProductToSoppingCart(
    AddProductToSoppingCartCardInfoEvent event,
    Emitter<CardInfoState> emit,
  ) async {
    state.mapOrNull(productInfoCard: (initState) {
      _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
        titleScreen: initState.titleScreen,
        titleProduct: initState.detailsProduct?.name ?? '',
        codeProduct: (initState.detailsProduct?.code ?? 0).toString(),
        typeProductToSoppingCart:
            AppMetricaShoppingCartEnum.addProductToShoppingCart,
        type: event.typeAddProductToShoppingCart,
        identifier: event.identifierAddProductToShoppingCart,
        quantity: 1,
        sectionCategoriesPath: [],
        productCategoriesPath: [],
        priceActual: initState.detailsProduct?.price.yourPrice ?? 0,
        priceOriginal: int.parse(initState.detailsProduct?.price.pb ?? '0'),
        internalComponentsActualPrice: [
          AppMetricaECommerceAmount(
            amount:
                Decimal.fromInt(initState.detailsProduct?.price.yourPrice ?? 0),
            currency: event.size.value,
          ),
          AppMetricaECommerceAmount(
            amount:
                Decimal.fromInt(initState.detailsProduct?.price.yourPrice ?? 0),
            currency: event.size.id,
          ),
        ],
        internalComponentsOriginalPrice: [
          AppMetricaECommerceAmount(
            amount: Decimal.parse(initState.detailsProduct?.price.pb ?? '0'),
            currency: event.size.value,
          ),
          AppMetricaECommerceAmount(
            amount: Decimal.parse(initState.detailsProduct?.price.pb ?? '0'),
            currency: event.size.id,
          ),
        ],
      );
      bool isShoppingCart = false;
      bool isShoppingCartDetailsProduct = false;
      final detailsProduct = initState.detailsProduct;

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
        if (selectSizeProduct.id == (event.size.id) &&
            (event.size.id).contains('-')) {
          isShoppingCart = true;
        }

        if (selectSizeProduct.id == (event.size.id) &&
            detailsProduct.sku.length == 1 &&
            !(event.size.id).contains('-')) {
          isShoppingCart = true;
          isShoppingCartDetailsProduct = true;
        }

        if (event.size.id.isEmpty) {
          isShoppingCart = true;
          isShoppingCartDetailsProduct = true;
        }
      } else {
        isShoppingCart = false;
        isShoppingCartDetailsProduct = true;
      }

      emit(initState.copyWith(
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
        isShoppingCart: (initState.isShoppingCart ?? false) || isShoppingCart,
      ));
    });
  }

  Future<void> _checkProductToSoppingCart(
    CheckProductToCardInfoEvent event,
    Emitter<CardInfoState> emit,
  ) async {
    await state.mapOrNull(productInfoCard: (initState) async {
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
      emit(initState.copyWith(isShoppingCart: soppingCart.isNotEmpty));
    });
  }

  Future<FavouritesCatalogInfoDataModel> updateFavouritesProducts({
    bool isLocal = true,
  }) async {
    FavouritesCatalogProductsRequest request =
        FavouritesCatalogProductsRequest();
    List<String> favourites = [];
    if (isLocal) {
      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      for (int i = 0; i < favouritesProducts.length; i++) {
        favourites.add(favouritesProducts[i].id.toString());
      }
    }

    final favouritesInfo =
        await _favouritesRepository.getFavouritesProdcutsInfo(
      request: request.copyWith(favourites: favourites),
    );

    return favouritesInfo;
  }

  Future<BasketFullInfoDataModel> getBasketInfo({bool isLocal = true}) async {
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
          typeAddProductToShoppingCart:
              shopping[i].typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart:
              shopping[i].identifierAddProductToShoppingCart,
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
            identifierAddProductToShoppingCart: basketInfo
                    .basket[i].product.identifierAddProductToShoppingCart ??
                '',
            sectionCategoriesPath:
                basketInfo.basket[i].product.sectionCategoriesPath ?? [],
            productCategoriesPath:
                basketInfo.basket[i].product.productCategoriesPath ?? [],
          ),
        );
      }
    }

    return basketInfo;
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
          typeAddProductToShoppingCart:
              shopping[i].typeAddProductToShoppingCart,
          identifierAddProductToShoppingCart:
              shopping[i].identifierAddProductToShoppingCart,
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
            identifierAddProductToShoppingCart: basketInfo
                    .basket[i].product.identifierAddProductToShoppingCart ??
                '',
            sectionCategoriesPath:
                basketInfo.basket[i].product.sectionCategoriesPath ?? [],
            productCategoriesPath:
                basketInfo.basket[i].product.productCategoriesPath ?? [],
          ),
        );
      }
    }

    return basketInfo;
  }
  Future<void> _checkOpenGetInfoProductSize(
      CheckOpenGetInfoProductSizeCardInfoEvent event,
      Emitter<CardInfoState> emit,
      ) async {
    state.mapOrNull(productInfoCard: (initState) {
      emit(initState.copyWith(
        isOpenGetSizeProduct: event.isOpenGetSizeProduct,
      ));
    });
  }
}
