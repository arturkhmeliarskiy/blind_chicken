import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

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
  final FileService _fileService;

  AccountBloc(
    this._catalogRepository,
    this._authRepository,
    this._sharedPreferencesService,
    this._ordersRepository,
    this._basketRepository,
    this._favouritesRepository,
    this._pushNotificationRepository,
    this._fileService,
  ) : super(const AccountState.init()) {
    on<AccountEvent>(
      (event, emit) => event.map<Future<void>>(
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
      ),
    );
  }

  Future<void> _init(
    InitAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.load());
    List<int> favouritesProductsId = [];
    List<ProductDataModel> favouritesProducts = [];
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    if (isAuth) {
      final result = await _favouritesRepository.getFavouritesProdcuts();
      favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
      log(result.toString());
    } else {
      favouritesProducts = _catalogRepository.getFavouritesProducts();
      favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
    }
    final userInfo = await _authRepository.getUserInfo();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

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
      virtualCardsCod: userInfo.user.virtualcardscod,
      isLoadVirtualCardsCod: false,
      listOrdersBlank: [],
      file: Uint8List(0),
      fileName: '',
      listTailoringBlank: [],
    ));
  }

  Future<void> _updateInfo(
    UpdateInfoAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
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

  Future<void> _paginationProduct(
    PaginationOrdersAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<OrderItemDataModel> orders = initState.orders.toList();
      final ordersInfo = await _ordersRepository.getListOrders(
        nav: 'page-${event.offset}',
      );

      orders = [...orders, ...ordersInfo.orders];

      emit(initState.copyWith(
        orders: orders,
        countOrders: ordersInfo.countOrders,
      ));
    });
  }

  Future<void> _getOrders(
    GetOrdersAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const AccountState.load());
      final ordersInfo = await _ordersRepository.getListOrders();

      emit(initState.copyWith(
        orders: ordersInfo.orders,
        countOrders: ordersInfo.countOrders,
      ));
    });
  }

  Future<void> _getInfoOrder(
    GetInfoOrderAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const AccountState.load());
      final orderInfo = await _ordersRepository.getOrderInfo(id: event.id);

      emit(initState.copyWith(
        orderInfo: orderInfo,
      ));
    });
  }

  Future<void> _getInfoPayOrder(
    GetInfoPayOrderAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.load());

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final orderInfo = await _ordersRepository.getOrderInfo(id: event.id);
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;

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
    ));
  }

  Future<void> _payOrder(
    PayOrderAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
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

  Future<void> _logOut(
    LogOutAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    final result = await _pushNotificationRepository.postNotificationInfo(event: '4');
    if (result.r == '1') {
      _sharedPreferencesService.clear();
      _sharedPreferencesService.setBool(
        key: SharedPrefKeys.appInstalled,
        value: true,
      );
      _catalogRepository.deleteAllShoppingProducts();
      _catalogRepository.deleteAllFavouritesProducts();
      emit(const AccountState.logOut());
      log('Пользватель вышел');
    }
  }

  Future<void> _removeAccount(
    RemoveAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    _sharedPreferencesService.clear();
    _sharedPreferencesService.setBool(
      key: SharedPrefKeys.appInstalled,
      value: true,
    );
    _catalogRepository.deleteAllShoppingProducts();
    _catalogRepository.deleteAllFavouritesProducts();
    emit(const AccountState.removeAccount());
  }

  Future<void> _getInfoProduct(
    GetInfoProductAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      emit(const AccountState.load());

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: '',
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

      if (!(event.isUpdate ?? false)) {
        listProductsCode.add(event.code);
      }

      List<BasketFullInfoItemDataModel> soppingCart = [];

      if (detailsProduct.sku.isNotEmpty) {
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
      }

      emit(initState.copyWith(
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProductsCode: listProductsCode,
        isAuth: isAuth,
        isSoppingCart: soppingCart.isNotEmpty,
        selectSizeProduct: null,
      ));
    });
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
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
          genderIndex: '',
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
          selectSizeProduct: null,
        ));
      }
    });
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      FavouritesCatalogInfoDataModel? favouritesInfo;
      List<int> favouritesProductsId = [];
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
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        log(result.toString());
      } else {
        _catalogRepository.addFavouritesProduct(event.product);
        favouritesInfo = await updateFavouritesProducts();
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      }

      emit(const AccountState.load());
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          favouritesProductsId: favouritesProductsId,
        ),
      );
    });
  }

  Future<void> _deleteFavouriteProduct(
    DeleteFavouriteProductAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      FavouritesCatalogInfoDataModel? favouritesInfo;
      List<int> favouritesProductsId = [];
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
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        log(result.toString());
      } else {
        _catalogRepository.deleteFavouritesProduct(event.index);
        favouritesInfo = await updateFavouritesProducts();
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      }

      emit(const AccountState.load());
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          favouritesProductsId: favouritesProductsId,
        ),
      );
    });
  }

  Future<void> _addProductToSoppingCart(
    AddProductToSoppingCartCAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        isSoppingCart: true,
      ));
    });
  }

  Future<void> _virtualcardscod(
    VirtualCardsCodAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
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

  Future<void> _paginationListOrdersBlank(
    PaginationListOrdersBlankAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<OrderBlankDataModel> orders = initState.listOrdersBlank.toList();
      final ordersBlank = await _authRepository.getListOrdersBlank(
        nav: 'page-${event.offset}',
      );

      orders = [...orders, ...ordersBlank.orders];

      emit(initState.copyWith(
        listOrdersBlank: orders,
        file: Uint8List(0),
      ));
    });
  }

  Future<void> _paginationListTailoringBlank(
    PaginationListTailoringBlankAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<OrderBlankDataModel> orders = initState.listOrdersBlank.toList();
      final ordersBlank = await _authRepository.getListTailoringBlank(
        nav: 'page-${event.offset}',
      );

      orders = [...orders, ...ordersBlank.orders];

      emit(initState.copyWith(
        listOrdersBlank: orders,
        file: Uint8List(0),
      ));
    });
  }

  Future<void> _checkProductToSoppingCart(
    CheckProductToSoppingCartAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
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

  Future<void> _changeSizeProduct(
    ChangeSizeProductAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        selectSizeProduct: event.selectSizeProduct,
      ));
    });
  }

  Future<void> _getListOrdersBlank(
    GetListOrdersBlankAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const AccountState.load());
      final ordersBlank = await _authRepository.getListOrdersBlank();

      emit(initState.copyWith(
        listOrdersBlank: ordersBlank.orders,
      ));
    });
  }

  Future<void> _getListTailoringBlank(
    GetListTailoringBlankAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const AccountState.load());
      final tailoringBlank = await _authRepository.getListTailoringBlank();

      emit(initState.copyWith(
        listTailoringBlank: tailoringBlank.orders,
      ));
    });
  }

  Future<void> _getOrderPdfBlank(
    GetOrderPdfBlankAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
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

  Future<void> _getTailoringPdfBlank(
    GetTailoringPdfBlankAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
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

  Future<void> _saveDocument(
    SaveDocumentAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
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
