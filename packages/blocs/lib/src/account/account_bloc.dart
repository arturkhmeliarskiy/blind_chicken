import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
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
  final UpdateDataService _updateDataService;

  AccountBloc(
    this._catalogRepository,
    this._authRepository,
    this._sharedPreferencesService,
    this._ordersRepository,
    this._basketRepository,
    this._favouritesRepository,
    this._updateDataService,
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

    emit(AccountState.preloadDataCompleted(
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
    ));
  }

  Future<void> _updateInfo(
    UpdateInfoAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        phone: event.phone != null ? event.phone ?? '' : initState.phone,
        name: event.name != null ? event.name ?? '' : initState.name,
        email: event.email != null ? event.email ?? '' : initState.email,
      ));
    });
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

    final orderInfo = await _ordersRepository.getOrderInfo(id: event.id);

    emit(AccountState.preloadDataCompleted(
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
    _sharedPreferencesService.clear();
    _catalogRepository.deleteAllShoppingProducts();
    _catalogRepository.deleteAllFavouritesProducts();
    emit(const AccountState.logOut());
  }

  Future<void> _getInfoProduct(
    GetInfoProductAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();
      emit(const AccountState.load());

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender,
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

      emit(initState.copyWith(
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProductsCode: listProductsCode..add(event.code),
      ));
    });
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      listProductsCode.removeLast();

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const AccountState.load());
        final detailsProduct = await _catalogRepository.getDetailsProduct(
          code: listProductsCode.last,
          genderIndex: _updateDataService.selectedIndexGender,
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
}
