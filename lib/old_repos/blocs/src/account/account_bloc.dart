import 'dart:async';
import 'dart:convert';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'account_bloc.freezed.dart';

part 'account_event.dart';

part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final CatalogRepository _catalogRepository;
  final AuthRepository _authRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final OrdersRepository _ordersRepository;
  final BasketRepository _basketRepository;
  final FavouritesRepository _favouritesRepository;
  final PushNotificationRepository _pushNotificationRepository;
  final UpdateDataService _updateDataService;
  final FileService _fileService;
  final AppMetricaEcommerceService _appMetricaEcommerceService;

  AccountBloc(this._catalogRepository,
      this._authRepository,
      this._sharedPreferencesService,
      this._ordersRepository,
      this._basketRepository,
      this._favouritesRepository,
      this._pushNotificationRepository,
      this._fileService,
      this._updateDataService,
      this._appMetricaEcommerceService,) : super(const AccountState.init()) {
    on<AccountEvent>(
          (event, emit) =>
          event.map<Future<void>>(
            preloadData: (event) => _init(event, emit),
            updateInfo: (event) => _updateInfo(event, emit),
            paginationProduct: (event) => _paginationProduct(event, emit),
            getOrders: (event) => _getOrders(event, emit),
            getInfoOrder: (event) => _getInfoOrder(event, emit),
            getInfoPayOrder: (event) => _getInfoPayOrder(event, emit),
            logOut: (event) => _logOut(event, emit),
            payOrder: (event) => _payOrder(event, emit),
            getInfoProduct: (event) => _getInfoProduct(event, emit),
            goBackProductInfo: (event) => _goBackProductInfo(event, emit),
            addFavouriteProduct: (event) => _addFavouriteProduct(event, emit),
            deleteFavouriteProduct: (event) => _deleteFavouriteProduct(event, emit),
            removeAccount: (event) => _removeAccount(event, emit),
            addProductToSoppingCart: (event) => _addProductToSoppingCart(event, emit),
            virtualCardsCod: (event) => _virtualcardscod(event, emit),
            checkProductToSoppingCart: (event) => _checkProductToSoppingCart(event, emit),
            changeSizeProduct: (event) => _changeSizeProduct(event, emit),
            getListOrdersBlank: (event) => _getListOrdersBlank(event, emit),
            getOrderPdfBlank: (event) => _getOrderPdfBlank(event, emit),
            saveDocument: (event) => _saveDocument(event, emit),
            paginationListOrdersBlank: (event) => _paginationListOrdersBlank(event, emit),
            getListTailoringBlank: (event) => _getListTailoringBlank(event, emit),
            getTailoringPdfBlank: (event) => _getTailoringPdfBlank(event, emit),
            paginationListTailoringBlank: (event) => _paginationListTailoringBlank(event, emit),
            getInfoProductSize: (event) => _getInfoProductSize(event, emit),
          ),
    );
  }

  Future<void> _init(InitAccountEvent event,
      Emitter<AccountState> emit,) async {
    if (state is ErrorAccountState) {
      emit(const AccountState.loadErrorButton());
    } else {
      emit(const AccountState.load());
    }

    List<int> favouritesProductsId = [];
    List<ProductDataModel> favouritesProducts = [];
    bool isAuth = _sharedPreferencesService.getBool(
      key: SharedPrefKeys.userAuthorized,
    ) ??
        false;
    FavouritesDataModel? favouritesProductsInfo;

    if (isAuth) {
      favouritesProductsInfo = await _favouritesRepository.getFavouritesProdcuts();
      favouritesProductsId =
          favouritesProductsInfo.favorites.map((item) => int.parse(item)).toList();
      logging(favouritesProductsInfo.toString(), stackTrace: StackTrace.current);
    } else {
      favouritesProducts = _catalogRepository.getFavouritesProducts();
      favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
    }
    final userInfo = await _authRepository.getUserInfo();

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if ((favouritesProductsInfo?.errorMessage.isNotEmpty ?? false) ||
        userInfo.errorMessage.isNotEmpty) {
      emit(AccountState.error(
        errorMessage: MessageInfo.errorMessage,
      ));
    } else {
      emit(AccountState.preloadDataCompleted(
        applicationVersion: packageInfo.version,
        phone: userInfo.user.phone,
        name: userInfo.user.name,
        email: userInfo.user.email,
        favouritesProducts: favouritesProducts,
        orders: [],
        countOrders: '0',
        user: userInfo.user,
        listProductsCode: [],
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        favouritesProductsId: favouritesProductsId,
        isAuth: isAuth,
        isError: userInfo.r != '1',
        errorMessage: userInfo.errorMessage,
        virtualCardsCod: userInfo.user.virtualcardscod,
        isLoadVirtualCardsCod: false,
        listOrdersBlank: [],
        file: Uint8List(0),
        fileName: '',
        listTailoringBlank: [],
        listProdcutsComplect: [],
        listSize: [],
        isLoadGetSizeProduct: false,
        offsetOrders: 1,
        offsetOrdersBlank: 1,
        offsetTailoringBlank: 1,
      ));
    }
  }

  Future<void> _updateInfo(UpdateInfoAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(
      preloadDataCompleted: (initState) async {
        if ((event.name ?? '') != initState.name) {
          final result = await _authRepository.changeName(
            name: event.name ?? '',
          );
          if (result.r == '1') {
            emit(initState.copyWith(
              name: event.name ?? '',
            ));
          }
        }
        if ((event.email ?? '') != initState.email) {
          final result = await _authRepository.changeEmail(
            email: event.email ?? '',
          );
          if (result.r == '1') {
            emit(initState.copyWith(
              email: event.email ?? '',
            ));
          }
        }
      },
    );
  }

  Future<void> _paginationProduct(PaginationOrdersAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<OrderItemDataModel> orders = initState.orders.toList();
      final ordersInfo = await _ordersRepository.getListOrders(
        nav: 'page-${initState.offsetOrders + 1}',
      );

      orders = [...orders, ...ordersInfo.orders];

      emit(initState.copyWith(
          orders: orders,
          countOrders: ordersInfo.countOrders,
          offsetOrders: initState.offsetOrders + 1));
    });
  }

  Future<void> _getOrders(GetOrdersAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const AccountState.load());
      }

      final ordersInfo = await _ordersRepository.getListOrders();

      emit(initState.copyWith(
        orders: ordersInfo.orders,
        countOrders: ordersInfo.countOrders,
        isError: ordersInfo.r != '1',
        errorMessage: ordersInfo.errorMessage,
        offsetOrders: 1,
        isLoadErrorButton: false,
        typeError: 'мои заказы',
      ));
    });
  }

  Future<void> _getInfoOrder(GetInfoOrderAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const AccountState.load());
      }
      final orderInfo = await _ordersRepository.getOrderInfo(id: event.id);

      emit(initState.copyWith(
        orderInfo: orderInfo,
        isError: orderInfo.r != '1',
        errorMessage: orderInfo.errorMessage,
        isLoadErrorButton: false,
        typeError: 'заказ',
      ));
    });
  }

  Future<void> _getInfoPayOrder(GetInfoPayOrderAccountEvent event,
      Emitter<AccountState> emit,) async {
    emit(const AccountState.load());

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final orderInfo = await _ordersRepository.getOrderInfo(id: event.id);
    bool isAuth = _sharedPreferencesService.getBool(
      key: SharedPrefKeys.userAuthorized,
    ) ??
        false;

    if (orderInfo.products.isNotEmpty) {
      _appMetricaEcommerceService.startAndEndCreatePurchaseProducts(
        typeProductToSoppingCart: AppMetricaTypeCreatePurchaseEnum.endCreatePurchase,
        orderId: event.id,
        products: orderInfo.products.toList(),
        promocode: orderInfo.promo.promocode,
      );
    }

    if (orderInfo.giftCard.type.isNotEmpty) {
      _appMetricaEcommerceService.startAndEndCreatePurchaseGiftCard(
        typeProductToSoppingCart: AppMetricaTypeCreatePurchaseEnum.endCreatePurchase,
        orderId: event.id,
        idColor: BlindChickenGiftCardColors.listColors
            .where((element) => element.code.contains(orderInfo.giftCard.color))
            .first
            .id,
        titleScreen: 'Оформление заказа',
        typeGiftCard: orderInfo.giftCard.type == 'Виртуальная' ? '1' : '2',
        searchQuery: event.searchQuery ?? '',
        priceActual: orderInfo.giftCard.sum,
        priceOriginal: '50000',
        quantity: 1,
      );
    }

    AppMetrica.reportEvent('Оплатить');

    emit(AccountState.preloadDataCompleted(
      applicationVersion: packageInfo.version,
      phone: '',
      name: '',
      email: '',
      favouritesProducts: [],
      orders: [],
      countOrders: '0',
      orderInfo: orderInfo,
      listProductsCode: [],
      listProdcutsStyle: [],
      listProdcutsAlso: [],
      listProdcutsBrand: [],
      favouritesProductsId: [],
      isAuth: isAuth,
      virtualCardsCod: '',
      listOrdersBlank: [],
      file: Uint8List(0),
      fileName: '',
      listTailoringBlank: [],
      listProdcutsComplect: [],
      listSize: [],
      isLoadGetSizeProduct: false,
      offsetOrders: 1,
      offsetOrdersBlank: 1,
      offsetTailoringBlank: 1,
    ));
  }

  Future<void> _payOrder(PayOrderAccountEvent event,
      Emitter<AccountState> emit,) async {
    final orderInfo = await _basketRepository.payOrder(
      id: event.idForPay,
    );

    if (orderInfo.r == '1') {
      emit(
        AccountState.payOrder(
          url: orderInfo.url,
        ),
      );
    }
  }

  Future<void> _logOut(LogOutAccountEvent event,
      Emitter<AccountState> emit,) async {
    final result = await _pushNotificationRepository.postNotificationInfo(event: '4');
    if (result.r == '1') {
      String deviceId = _sharedPreferencesService.getString(
        key: SharedPrefKeys.deviceId,
      ) ??
          '';
      String dateReceiptNewNews = _sharedPreferencesService.getString(
        key: SharedPrefKeys.dateReceiptNewNews,
      ) ??
          '';
      bool isPromotionsForPurchases = _sharedPreferencesService.getBool(
        key: SharedPrefKeys.isPromotionsForPurchases,
      ) ??
          false;
      String deviceid = deviceId;
      String datereceiptNewNews = dateReceiptNewNews;
      bool ispromotionsForPurchases = isPromotionsForPurchases;

      _sharedPreferencesService.clear();
      _sharedPreferencesService.setBool(
        key: SharedPrefKeys.appInstalled,
        value: true,
      );
      _sharedPreferencesService.setString(
        key: SharedPrefKeys.deviceId,
        value: deviceid,
      );
      _sharedPreferencesService.setString(
        key: SharedPrefKeys.dateReceiptNewNews,
        value: datereceiptNewNews,
      );
      _sharedPreferencesService.setBool(
        key: SharedPrefKeys.isPromotionsForPurchases,
        value: ispromotionsForPurchases,
      );
      _catalogRepository.deleteAllShoppingProducts();
      _catalogRepository.deleteAllFavouritesProducts();
      emit(const AccountState.logOut());
      logging('Пользователь вышел', stackTrace: StackTrace.current);
      AppMetrica.reportEvent('Пользователь вышел из аккаунта');
    }
  }

  Future<void> _removeAccount(RemoveAccountEvent event,
      Emitter<AccountState> emit,) async {
    bool isPromotionsForPurchases = _sharedPreferencesService.getBool(
      key: SharedPrefKeys.isPromotionsForPurchases,
    ) ??
        false;
    String deviceId = _sharedPreferencesService.getString(
      key: SharedPrefKeys.deviceId,
    ) ??
        '';
    String dateReceiptNewNews = _sharedPreferencesService.getString(
      key: SharedPrefKeys.dateReceiptNewNews,
    ) ??
        '';
    String deviceid = deviceId;
    String datereceiptNewNews = dateReceiptNewNews;
    bool ispromotionsForPurchases = isPromotionsForPurchases;
    _sharedPreferencesService.clear();
    _sharedPreferencesService.setBool(
      key: SharedPrefKeys.isPromotionsForPurchases,
      value: ispromotionsForPurchases,
    );
    _sharedPreferencesService.setBool(
      key: SharedPrefKeys.appInstalled,
      value: true,
    );
    _sharedPreferencesService.setString(
      key: SharedPrefKeys.deviceId,
      value: deviceid,
    );
    _sharedPreferencesService.setString(
      key: SharedPrefKeys.dateReceiptNewNews,
      value: datereceiptNewNews,
    );
    _catalogRepository.deleteAllShoppingProducts();
    _catalogRepository.deleteAllFavouritesProducts();
    emit(const AccountState.removeAccount());
  }

  Future<void> _getInfoProduct(GetInfoProductAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      SkuProductDataModel? selectSizeProduct;
      AppMetrica.reportEvent(event.titleScreen);
      List<String> listProductsCode = initState.listProductsCode.toList();
      bool isShoppingCartDetailsProduct = false;
      String errorMessage = '';
      bool isError = false;
      bool isAuth = _sharedPreferencesService.getBool(
        key: SharedPrefKeys.userAuthorized,
      ) ??
          false;
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const AccountState.load());
      }

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      final basketInfo = await getBasketInfo(isLocal: !isAuth);

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
              element.sku == detailsProduct.sku.first.id,
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
        codeProduct: event.code,
        titleScreen: event.titleScreen,
        typeAddProductToShoppingCart: event.typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart: event.identifierAddProductToShoppingCart,
        typeError: 'описание товара',
      ));
    });
  }

  Future<void> _goBackProductInfo(GoBackProductInfoCategotyAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      if (listProductsCode.isNotEmpty) {
        listProductsCode.removeLast();
      }

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const AccountState.load());
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

  Future<void> _addFavouriteProduct(AddFavouriteProductAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      FavouritesCatalogInfoDataModel? favouritesInfo;
      FavouritesInfoDataModel? favouritesProductsInfo;
      List<int> favouritesProductsId = [];
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
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        logging(result.toString(), stackTrace: StackTrace.current);
      } else {
        _catalogRepository.addFavouritesProduct(event.product);
        favouritesInfo = await updateFavouritesProducts();
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      }

      if ((favouritesProductsInfo?.errorMessage.isEmpty ?? false) ||
          favouritesInfo.errorMessage.isEmpty) {
        emit(const AccountState.load());
      }
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          favouritesProductsId: favouritesProductsId,
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

  Future<void> _deleteFavouriteProduct(DeleteFavouriteProductAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      FavouritesCatalogInfoDataModel? favouritesInfo;
      FavouritesInfoDataModel? favouritesProductsInfo;
      List<int> favouritesProductsId = [];
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
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        logging(result.toString(), stackTrace: StackTrace.current);
      } else {
        _catalogRepository.deleteFavouritesProduct(event.index);
        favouritesInfo = await updateFavouritesProducts();
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      }

      if ((favouritesProductsInfo?.errorMessage.isEmpty ?? false) ||
          favouritesInfo.errorMessage.isEmpty) {
        emit(const AccountState.load());
      }

      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          favouritesProductsId: favouritesProductsId,
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

  Future<void> _addProductToSoppingCart(AddProductToSoppingCartCAccountEvent event,
      Emitter<AccountState> emit,) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
        titleScreen: 'Карточка товара в аккаунте (Мои заказы)',
        titleProduct: initState.detailsProduct?.name ?? '',
        codeProduct: (initState.detailsProduct?.code ?? 0).toString(),
        typeProductToSoppingCart: AppMetricaShoppingCartEnum.addProductToShoppingCart,
        type: event.typeAddProductToShoppingCart,
        identifier: event.identifierAddProductToShoppingCart,
        quantity: 1,
        sectionCategoriesPath: [],
        productCategoriesPath: [],
        priceActual: initState.detailsProduct?.price.yourPrice ?? 0,
        priceOriginal: int.parse(initState.detailsProduct?.price.pb ?? '0'),
        internalComponentsActualPrice: [
          AppMetricaECommerceAmount(
            amount: Decimal.fromInt(initState.detailsProduct?.price.yourPrice ?? 0),
            currency: event.size.value,
          ),
          AppMetricaECommerceAmount(
            amount: Decimal.fromInt(initState.detailsProduct?.price.yourPrice ?? 0),
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
        if (selectSizeProduct.id == (event.size.id) && (event.size.id).contains('-')) {
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

  Future<void> _virtualcardscod(VirtualCardsCodAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        isLoadVirtualCardsCod: true,
      ));

      final userInfo = await _authRepository.getUserInfo();

      emit(initState.copyWith(
        virtualCardsCod: userInfo.user.virtualcardscod,
        isLoadVirtualCardsCod: false,
      ));
    });
  }

  Future<void> _paginationListOrdersBlank(PaginationListOrdersBlankAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<OrderBlankDataModel> orders = initState.listOrdersBlank.toList();
      final ordersBlank = await _authRepository.getListOrdersBlank(
        nav: 'page-${initState.offsetOrdersBlank + 1}',
      );

      orders = [...orders, ...ordersBlank.orders];

      emit(initState.copyWith(
        listOrdersBlank: orders,
        offsetOrdersBlank: initState.offsetOrdersBlank + 1,
        file: Uint8List(0),
      ));
    });
  }

  Future<void> _paginationListTailoringBlank(PaginationListTailoringBlankAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<OrderBlankDataModel> orders = initState.listOrdersBlank.toList();
      final ordersBlank = await _authRepository.getListTailoringBlank(
        nav: 'page-${initState.offsetTailoringBlank + 1}',
      );

      orders = [...orders, ...ordersBlank.orders];

      emit(initState.copyWith(
        listOrdersBlank: orders,
        offsetTailoringBlank: initState.offsetTailoringBlank + 1,
        file: Uint8List(0),
      ));
    });
  }

  Future<void> _checkProductToSoppingCart(CheckProductToSoppingCartAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      bool isAuth = _sharedPreferencesService.getBool(
        key: SharedPrefKeys.userAuthorized,
      ) ??
          false;
      final basketInfo = await getBasketInfo(isLocal: !isAuth);
      List<BasketFullInfoItemDataModel> soppingCart = [];
      if (initState.detailsProduct?.sku.isNotEmpty ?? false) {
        soppingCart = basketInfo.basket
            .where(
              (element) =>
          int.parse(element.code) == (initState.detailsProduct?.code ?? 0) &&
              (element.sku.isNotEmpty ? element.sku == event.size.id : true),
        )
            .toList();
      } else {
        soppingCart = basketInfo.basket
            .where(
              (element) => int.parse(element.code) == (initState.detailsProduct?.code ?? 0),
        )
            .toList();
      }
      emit(initState.copyWith(
        isShoppingCart: soppingCart.isNotEmpty,
      ));
    });
  }

  Future<void> _changeSizeProduct(ChangeSizeProductAccountEvent event,
      Emitter<AccountState> emit,) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        selectSizeProduct: event.selectSizeProduct,
      ));
    });
  }

  Future<void> _getListOrdersBlank(GetListOrdersBlankAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const AccountState.load());
      }
      final ordersBlank = await _authRepository.getListOrdersBlank();

      emit(initState.copyWith(
        listOrdersBlank: ordersBlank.orders,
        isLoadErrorButton: false,
        isError: ordersBlank.errorMessage.isNotEmpty,
        errorMessage: MessageInfo.errorMessage,
        typeError: 'электронный список заказов',
      ));
    });
  }

  Future<void> _getListTailoringBlank(GetListTailoringBlankAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const AccountState.load());
      }
      final tailoringBlank = await _authRepository.getListTailoringBlank();

      emit(initState.copyWith(
        listTailoringBlank: tailoringBlank.orders,
        isLoadErrorButton: false,
        isError: tailoringBlank.errorMessage.isNotEmpty,
        errorMessage: MessageInfo.errorMessage,
        typeError: 'список заказов на подшив',
      ));
    });
  }

  Future<void> _getOrderPdfBlank(GetOrderPdfBlankAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        isLoadOpenPdf: true,
      ));
      final orderBlank = await _authRepository.getOrderBlank(
        id: event.id,
      );
      if (orderBlank.r == '1') {
        Uint8List file = const Base64Decoder().convert(
          orderBlank.pdf.replaceAll(RegExp(r'\s+'), ''),
        );
        emit(initState.copyWith(
          file: file,
          fileName: event.fileName,
          isLoadOpenPdf: false,
          isSuccessfullySavedFile: null,
        ));
      } else {
        emit(
          AccountState.errorOpenPdf(
            message: orderBlank.message,
          ),
        );
        emit(initState.copyWith(
          fileName: event.fileName,
          file: Uint8List(0),
          isLoadOpenPdf: false,
          isSuccessfullySavedFile: null,
        ));
      }
    });
  }

  Future<void> _getTailoringPdfBlank(GetTailoringPdfBlankAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        isLoadOpenPdf: true,
      ));
      final orderBlank = await _authRepository.getTailoringBlank(
        id: event.id,
      );
      if (orderBlank.r == '1') {
        Uint8List file = const Base64Decoder().convert(
          orderBlank.pdf.replaceAll(RegExp(r'\s+'), ''),
        );
        emit(initState.copyWith(
          file: file,
          fileName: event.fileName,
          isLoadOpenPdf: false,
          isSuccessfullySavedFile: null,
        ));
      } else {
        emit(
          AccountState.errorOpenPdf(
            message: orderBlank.message,
          ),
        );
        emit(initState.copyWith(
          fileName: event.fileName,
          file: Uint8List(0),
          isLoadOpenPdf: false,
          isSuccessfullySavedFile: null,
        ));
      }
    });
  }

  Future<void> _saveDocument(SaveDocumentAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      final result = await _fileService.saveFile(
        fileName: event.fileName,
        bytes: event.bytes,
      );

      emit(initState.copyWith(
        isSuccessfullySavedFile: result,
      ));
    });
  }

  Future<void> _getInfoProductSize(GetInfoProductSizeAccountEvent event,
      Emitter<AccountState> emit,) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
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
            emit(AccountState.getSizeProduct(
              code: event.code,
              listSize: detailsProduct.sku,
              listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
            ));
          } else {
            if (event.isShop) {
              emit(const AccountState.openSoppingCart());
            } else {
              emit(AccountState.addProductToSoppingCart(
                code: event.code,
              ));
            }
          }
        } else {
          if (event.isShop) {
            emit(const AccountState.openSoppingCart());
          } else {
            emit(AccountState.addProductToSoppingCart(
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
