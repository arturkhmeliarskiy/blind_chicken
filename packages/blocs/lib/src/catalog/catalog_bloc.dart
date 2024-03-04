import 'dart:async';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'catalog_bloc.freezed.dart';
part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final CatalogRepository _catalogRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final FavouritesRepository _favouritesRepository;
  final ConstatntsInfo _constatntsInfo;
  final UpdateDataService _updateDataService;
  final BoutiquesRepository _boutiquesRepository;
  final BasketRepository _basketRepository;

  CatalogBloc(
    this._catalogRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
    this._constatntsInfo,
    this._updateDataService,
    this._boutiquesRepository,
    this._basketRepository,
  ) : super(const CatalogState.init()) {
    on<CatalogEvent>((event, emit) => event.map<Future<void>>(
          init: (event) => _init(event, emit),
          preloadData: (event) => _preloadData(event, emit),
          subCategory: (event) => _subCategory(event, emit),
          backPathMenu: (event) => _backPathMenu(event, emit),
          selectFilter: (event) => _selectFilter(event, emit),
          deleteFilter: (event) => _deleteFilter(event, emit),
          deleteCatalogFilter: (event) => _deleteFilterCatalog(event, emit),
          updateFavouritesProducts: (event) => _updateFavouritesProducts(event, emit),
          addFavouriteProduct: (event) => _addFavouriteProduct(event, emit),
          deleteFavouriteProduct: (event) => _deleteProductToFavouritesEvent(event, emit),
          paginationProduct: (event) => _paginationProduct(event, emit),
          searchBrand: (event) => _searchBrand(event, emit),
          pathMenu: (event) => _pathMenu(event, emit),
          removePathMenu: (event) => _removePathMenu(event, emit),
          pathBrandMenu: (event) => _pathBrandMenu(event, emit),
          switchTypePeople: (event) => _switchTypePeople(event, emit),
          getInfoProducts: (event) => _getInfoProducts(event, emit),
          getInfoProduct: (event) => _getInfoProduct(event, emit),
          sortProducts: (event) => _sortProducts(event, emit),
          removeSelectAllFilters: (event) => _removeSelectAllFilters(event, emit),
          removeSelectFilterCategory: (event) => _removeSelectFilterCategory(event, emit),
          goBackProductInfo: (event) => _goBackProductInfo(event, emit),
        ));
  }

  Future<void> _updateFavouritesProducts(
    UpdateFavouritesProductsCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(const CatalogState.load());

      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      emit(
        initState.copyWith(
          favouritesProducts: favouritesProducts,
        ),
      );
    });
  }

  Future<void> _init(
    InitCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    emit(
      CatalogState.preloadDataCompleted(
        filter: [],
        selectFilter: {},
        allSelectFilter: [],
        products: [],
        defaultProducts: [],
        favouritesProducts: [],
        menu: [],
        pathMenu: [],
        favouritesProductsId: [],
        brands: [],
        defaultBrands: [],
        category: [],
        allBrands: [],
        request: CatalogProductsRequest(),
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        listProdcutsStyle: [],
        listProductsCode: [],
      ),
    );
  }

  Future<void> _preloadData(
    PreloadDataCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    emit(const CatalogState.load());
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      List<ProductDataModel> favouritesProducts = [];

      SystemChannels.textInput.invokeMethod('TextInput.hide');
      List<int> favouritesProductsId = [];
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
      final boutiques = await _boutiquesRepository.getBoutiques();
      final paymentsInfo = await _basketRepository.getPaymentMethods();

      _updateDataService.boutiques = boutiques.data;
      _updateDataService.payments = paymentsInfo.payments ?? [];

      final menu = await _catalogRepository.postMenuItems(
        a: 'get-main-menu',
        b: 0,
        id: 1,
        u: '',
        pid: 0,
      );

      List<String> allBrands = [];

      allBrands = [
        ..._constatntsInfo.brandsWoman,
        ..._constatntsInfo.brandsMan,
        ..._constatntsInfo.brandsChilren,
      ];

      allBrands.sort();

      emit(
        CatalogState.preloadDataCompleted(
          filter: [],
          selectFilter: {},
          allSelectFilter: [],
          products: [],
          defaultProducts: [],
          favouritesProducts: favouritesProducts,
          menu: menu,
          pathMenu: [],
          favouritesProductsId: favouritesProductsId,
          brands: _constatntsInfo.brandsWoman,
          defaultBrands: _constatntsInfo.brandsWoman,
          category: _constatntsInfo.categoryWoman,
          allBrands: allBrands,
          request: CatalogProductsRequest(),
          listProdcutsAlso: [],
          listProdcutsBrand: [],
          listProdcutsStyle: [],
          listProductsCode: [],
        ),
      );
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _subCategory(
    SubCategoryatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        emit(const CatalogState.load());

        final menu = await _catalogRepository.postMenuItems(
          a: event.a,
          b: event.b,
          id: event.id,
          u: event.u,
          pid: event.pid,
        );

        List<MenuItemDataModel> pathMenu = initState.pathMenu.toList();

        MenuItemDataModel? item = event.item;

        if (item != null) {
          pathMenu.add(item);
        } else {
          pathMenu = [];
        }

        emit(initState.copyWith(
          menu: menu,
          pathMenu: pathMenu,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _selectFilter(
    SelectFilterCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        String? ct;
        String? t26;
        String? f2;
        String? f3;
        String? f10;
        String? f12;
        String? f13;
        String? s61;
        String? t1;
        String? t4;
        String? t9;
        String? t21;
        CatalogProductsRequest request = initState.request;
        Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
        List<Map<int, FilterItemDataModel>> allSelectFilter = [];
        List<FilterItemDataModel> selectItem = selectFilter[event.index] ?? [];
        if (selectItem.contains(event.item)) {
          selectItem.insert(event.indexItem, event.item);
        } else {
          selectItem.add(event.item);
        }

        selectFilter[event.index] = selectItem;

        log(selectFilter.toString());

        for (int i = 0; i < selectFilter.length; i++) {
          int key = selectFilter.keys.toList()[i];
          List<FilterItemDataModel> filters = selectFilter[key] ?? [];
          for (int j = 0; j < filters.length; j++) {
            allSelectFilter.add({key: filters[j]});
            if (filters[j].typeFilter == 'ct') {
              if (ct != null) {
                ct = '$ct;${filters[j].id}';
              } else {
                ct = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't26') {
              if (t26 != null) {
                t26 = '$t26;${filters[j].id}';
              } else {
                t26 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f2') {
              if (f2 != null) {
                f2 = '$f2;${filters[j].id}';
              } else {
                f2 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f3') {
              if (f3 != null) {
                f3 = '$f3;${filters[j].id}';
              } else {
                f3 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f10') {
              if (f10 != null) {
                f10 = '$f10;${filters[j].id}';
              } else {
                f10 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f12') {
              if (f12 != null) {
                f12 = '$f12;${filters[j].id}';
              } else {
                f12 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f13') {
              if (f13 != null) {
                f13 = '$f13;${filters[j].id}';
              } else {
                f13 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 's61') {
              if (s61 != null) {
                s61 = '$s61;${filters[j].id}';
              } else {
                s61 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't1') {
              if (t1 != null) {
                t1 = '$t1;${filters[j].id}';
              } else {
                t1 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't4') {
              if (t4 != null) {
                t4 = '$t4;${filters[j].id}';
              } else {
                t4 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't9') {
              if (t9 != null) {
                t9 = '$t9;${filters[j].id}';
              } else {
                t9 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't21') {
              if (t21 != null) {
                t21 = '$t21;${filters[j].id}';
              } else {
                t21 = '${filters[j].id}';
              }
            }
          }
        }

        request = request.copyWith(
          ct: ct,
          t26: t26,
          f2: f2,
          f3: f3,
          f10: f10,
          f12: f12,
          f13: f13,
          s61: s61,
          t1: t1,
          t4: t4,
          t9: t9,
          t21: t21,
          nav: 'page-1',
        );

        final catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );

        emit(const CatalogState.load());

        emit(initState.copyWith(
          selectFilter: selectFilter,
          filter: catalogInfo.filter,
          allSelectFilter: allSelectFilter,
          products: catalogInfo.products,
          catalogInfo: catalogInfo,
          request: request,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _backPathMenu(
    BackPathMenuCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        emit(const CatalogState.load());

        List<MenuItemDataModel> pathMenu = initState.pathMenu.toList();
        List<MenuItemDataModel> menu = [];
        pathMenu.remove(pathMenu.last);
        menu = await _catalogRepository.postMenuItems(
          a: pathMenu.isNotEmpty ? 'get-child-menu' : 'get-main-menu',
          b: pathMenu.isNotEmpty ? pathMenu.last.brand : 0,
          id: pathMenu.isNotEmpty ? pathMenu.last.id : event.idParent,
          u: pathMenu.isNotEmpty ? pathMenu.last.url : '',
          pid: pathMenu.isNotEmpty ? pathMenu.last.idParent : 0,
        );

        emit(initState.copyWith(pathMenu: pathMenu, menu: menu));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _deleteFilter(
    DeleteFilterCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        String? ct;
        String? t26;
        String? f2;
        String? f3;
        String? f10;
        String? f12;
        String? f13;
        String? s61;
        String? t1;
        String? t4;
        String? t9;
        String? t21;
        Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
        List<FilterItemDataModel> selectItem = selectFilter[event.index] ?? [];
        CatalogProductsRequest request = initState.request;
        List<Map<int, FilterItemDataModel>> allSelectFilter = [];

        selectItem.remove(event.item);
        selectFilter[event.index] = selectItem;

        log(selectFilter.toString());

        for (int i = 0; i < selectFilter.length; i++) {
          int key = selectFilter.keys.toList()[i];
          List<FilterItemDataModel> filters = selectFilter[key] ?? [];
          for (int j = 0; j < filters.length; j++) {
            allSelectFilter.add({key: filters[j]});
            if (filters[j].typeFilter == 'ct') {
              if (ct != null) {
                ct = '$ct;${filters[j].id}';
              } else {
                ct = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't26') {
              if (t26 != null) {
                t26 = '$t26;${filters[j].id}';
              } else {
                t26 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f2') {
              if (f2 != null) {
                f2 = '$f2;${filters[j].id}';
              } else {
                f2 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f3') {
              if (f3 != null) {
                f3 = '$f3;${filters[j].id}';
              } else {
                f3 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f10') {
              if (f10 != null) {
                f10 = '$f10;${filters[j].id}';
              } else {
                f10 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f12') {
              if (f12 != null) {
                f12 = '$f12;${filters[j].id}';
              } else {
                f12 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 'f13') {
              if (f13 != null) {
                f13 = '$f13;${filters[j].id}';
              } else {
                f13 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 's61') {
              if (s61 != null) {
                s61 = '$s61;${filters[j].id}';
              } else {
                s61 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't1') {
              if (t1 != null) {
                t1 = '$t1;${filters[j].id}';
              } else {
                t1 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't4') {
              if (t4 != null) {
                t4 = '$t4;${filters[j].id}';
              } else {
                t4 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't9') {
              if (t9 != null) {
                t9 = '$t9;${filters[j].id}';
              } else {
                t9 = '${filters[j].id}';
              }
            }
            if (filters[j].typeFilter == 't21') {
              if (t21 != null) {
                t21 = '$t21;${filters[j].id}';
              } else {
                t21 = '${filters[j].id}';
              }
            }
          }
        }

        request = request.copyWith(
          ct: ct,
          t26: t26,
          f2: f2,
          f3: f3,
          f10: f10,
          f12: f12,
          f13: f13,
          s61: s61,
          t1: t1,
          t4: t4,
          t9: t9,
          t21: t21,
          nav: 'page-1',
        );

        final catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );

        log(allSelectFilter.length.toString());
        emit(const CatalogState.load());
        emit(
          initState.copyWith(
            filter: catalogInfo.filter,
            products: catalogInfo.products,
            request: request,
            selectFilter: selectFilter,
            catalogInfo: catalogInfo,
            allSelectFilter: allSelectFilter,
          ),
        );
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogFilterEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        String? ct;
        String? t26;
        String? f2;
        String? f3;
        String? f10;
        String? f12;
        String? f13;
        String? s61;
        String? t1;
        String? t4;
        String? t9;
        String? t21;
        Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
        List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter.toList();
        CatalogProductsRequest request = initState.request;
        List<ProductDataModel> listProducts = [];

        for (int i = 0; i < (selectFilter[event.key]?.length ?? 0); i++) {
          (selectFilter[event.key] ?? []).removeWhere(
            (element) => element.value == event.item.value,
          );
        }

        log(selectFilter.toString());

        allSelectFilter.removeWhere(
          (element) =>
              element.keys.first == event.key && element.values.first.value == event.item.value,
        );

        if (allSelectFilter.isNotEmpty) {
          for (int i = 0; i < allSelectFilter.length; i++) {
            if (allSelectFilter[i].values.first.typeFilter == 'ct') {
              if (ct != null) {
                ct = '$ct;${allSelectFilter[i].values.first.id}';
              } else {
                ct = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't26') {
              if (t26 != null) {
                t26 = '$t26;${allSelectFilter[i].values.first.id}';
              } else {
                t26 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f2') {
              if (f2 != null) {
                f2 = '$f2;${allSelectFilter[i].values.first.id}';
              } else {
                f2 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f3') {
              if (f3 != null) {
                f3 = '$f3;${allSelectFilter[i].values.first.id}';
              } else {
                f3 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f10') {
              if (f10 != null) {
                f10 = '$f10;${allSelectFilter[i].values.first.id}';
              } else {
                f10 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f12') {
              if (f12 != null) {
                f12 = '$f12;${allSelectFilter[i].values.first.id}';
              } else {
                f12 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f13') {
              if (f13 != null) {
                f13 = '$f13;${allSelectFilter[i].values.first.id}';
              } else {
                f13 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 's61') {
              if (s61 != null) {
                s61 = '$s61;${allSelectFilter[i].values.first.id}';
              } else {
                s61 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't1') {
              if (t1 != null) {
                t1 = '$t1;${allSelectFilter[i].values.first.id}';
              } else {
                t1 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't4') {
              if (t4 != null) {
                t4 = '$t4;${allSelectFilter[i].values.first.id}';
              } else {
                t4 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't9') {
              if (t9 != null) {
                t9 = '$t9;${allSelectFilter[i].values.first.id}';
              } else {
                t9 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't21') {
              if (t21 != null) {
                t21 = '$t21;${allSelectFilter[i].values.first.id}';
              } else {
                t21 = '${allSelectFilter[i].values.first.id}';
              }
            }
          }
        } else {
          listProducts = initState.defaultProducts;
        }

        request = request.copyWith(
          ct: ct,
          t26: t26,
          f2: f2,
          f3: f3,
          f10: f10,
          f12: f12,
          f13: f13,
          s61: s61,
          t1: t1,
          t4: t4,
          t9: t9,
          t21: t21,
          nav: 'page-1',
        );

        final catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );

        listProducts = catalogInfo.products;

        log(allSelectFilter.length.toString());
        emit(const CatalogState.load());
        emit(
          initState.copyWith(
            filter: catalogInfo.filter,
            selectFilter: selectFilter,
            allSelectFilter: allSelectFilter,
            products: listProducts,
            catalogInfo: catalogInfo,
            request: request,
          ),
        );
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        List<ProductDataModel> favouritesProducts = [];
        List<int> favouritesProductsId = [];
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;
        if (isAuth) {
          await _favouritesRepository.addFavouriteProdcut(code: event.product.id.toString());
          final result = await _favouritesRepository.getFavouritesProdcuts();
          favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
          log(result.toString());
        } else {
          _catalogRepository.addFavouritesProduct(event.product);
          favouritesProducts = _catalogRepository.getFavouritesProducts();
          favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
        }

        emit(const CatalogState.load());
        emit(initState.copyWith(
          favouritesProducts: favouritesProducts,
          favouritesProductsId: favouritesProductsId,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _deleteProductToFavouritesEvent(
    DeleteFavouriteProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        List<ProductDataModel> favouritesProducts = [];
        List<int> favouritesProductsId = [];
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;
        if (isAuth) {
          await _favouritesRepository.deleteFavouriteProdcut(code: event.index.toString());
          final result = await _favouritesRepository.getFavouritesProdcuts();
          favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
          log(result.toString());
        } else {
          _catalogRepository.deleteFavouritesProduct(event.index);
          favouritesProducts = _catalogRepository.getFavouritesProducts();
          favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
        }

        emit(const CatalogState.load());
        emit(initState.copyWith(
          favouritesProducts: favouritesProducts,
          favouritesProductsId: favouritesProductsId,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _paginationProduct(
    PaginationProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        CatalogProductsRequest request = initState.request;
        List<ProductDataModel> products = initState.products.toList();

        request = request.copyWith(nav: 'page-${event.offset}');

        final catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );

        products = [...products, ...catalogInfo.products];

        emit(initState.copyWith(
          products: products,
          request: request,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _searchBrand(
    SearchBrandCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      state.mapOrNull(preloadDataCompleted: (initState) async {
        List<String> brands = [];

        if (event.query.isNotEmpty) {
          for (var str in initState.brands) {
            if (str.toLowerCase().contains(event.query.toLowerCase())) {
              brands.add(str);
            }
          }
        } else {
          brands = initState.defaultBrands;
        }

        emit(initState.copyWith(brands: brands));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _pathMenu(
    PathMenuCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      List<MenuItemDataModel> pathMenu = initState.pathMenu.toList();
      MenuItemDataModel? item = event.item;
      if (item != null) {
        pathMenu.add(item);
      } else {
        pathMenu = [];
      }
      emit(initState.copyWith(
        pathMenu: pathMenu,
      ));
    });
  }

  Future<void> _removePathMenu(
    RemovePathMenuCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      List<MenuItemDataModel> pathMenu = initState.pathMenu.toList();

      for (int i = 0; i < event.items.length; i++) {
        pathMenu.remove(event.items[i]);
      }

      emit(initState.copyWith(
        pathMenu: pathMenu,
      ));
    });
  }

  Future<void> _pathBrandMenu(
    PathBrandMenuCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      List<MenuItemDataModel> pathMenu = initState.pathMenu.toList();
      List<MenuItemDataModel> items = event.items.toList();
      items.addAll(pathMenu);

      emit(initState.copyWith(
        pathMenu: items,
      ));
    });
  }

  Future<void> _switchTypePeople(
    SwitchTypePeopleCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      List<MainCategoryModel> category = [];
      List<String> brands = [];
      String name = '';

      switch (event.selectIndexType) {
        case 0:
          category = _constatntsInfo.categoryWoman;
          brands = _constatntsInfo.brandsWoman;
          name = 'Женщинам';
        case 1:
          category = _constatntsInfo.categoryMan;
          brands = _constatntsInfo.brandsMan;
          name = 'Мужчинам';
        case 2:
          category = _constatntsInfo.categoryChild;
          brands = _constatntsInfo.brandsChilren;
          name = 'Детям';
      }

      List<MenuItemDataModel> pathMenu = [
        MenuItemDataModel(
          idParent: 0,
          id: 0,
          url: '',
          name: name,
          sub: 0,
          title: 0,
          brand: 0,
        )
      ];

      emit(
        initState.copyWith(
          category: category,
          pathMenu: pathMenu,
          defaultBrands: brands,
          brands: brands,
        ),
      );
    });
  }

  Future<void> _getInfoProducts(
    GetInfoProductsCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        emit(const CatalogState.load());

        CatalogProductsRequest request = CatalogProductsRequest(
          url: event.path,
          sort: 'n',
        );

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

        final catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );

        emit(initState.copyWith(
          filter: catalogInfo.filter,
          request: request,
          catalogInfo: catalogInfo,
          products: catalogInfo.products,
          defaultProducts: catalogInfo.products,
          title: catalogInfo.h1,
          favouritesProductsId: favouritesProductsId,
          selectFilter: {},
          allSelectFilter: [],
          listProductsCode: [],
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _getInfoProduct(
    GetInfoProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        List<String> listProductsCode = initState.listProductsCode.toList();
        emit(const CatalogState.load());

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
        listProductsCode.add(event.code);

        emit(initState.copyWith(
          detailsProduct: detailsProduct,
          listProdcutsStyle: additionalProductsDescriptionStyle.products,
          listProdcutsAlso: additionalProductsDescriptionAlso.products,
          listProdcutsBrand: additionalProductsDescriptionBrand.products,
          listProductsCode: listProductsCode,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _sortProducts(
    SortProductsCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        String sort = '';
        if (event.value == 'Сначала новинки') {
          sort = 'n';
        } else if (event.value == 'По убыванию цены') {
          sort = 'pd';
        } else {
          sort = 'pu';
        }
        CatalogProductsRequest request = initState.request;
        request = request.copyWith(
          sort: sort,
          nav: 'page-1',
        );
        final catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );

        emit(initState.copyWith(
          request: request,
          products: catalogInfo.products,
          catalogInfo: catalogInfo,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _removeSelectFilterCategory(
    RemoveSelectFilterCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        String? ct;
        String? t26;
        String? f2;
        String? f3;
        String? f10;
        String? f12;
        String? f13;
        String? s61;
        String? t1;
        String? t4;
        String? t9;
        String? t21;
        CatalogProductsRequest request = initState.request;
        Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
        List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter.toList();
        List<FilterItemDataModel> filters = selectFilter[event.index]?.toList() ?? [];
        List<ProductDataModel> listProducts = [];

        for (int i = 0; i < filters.length; i++) {
          for (int j = 0; j < allSelectFilter.length; j++) {
            if (filters[i] == allSelectFilter[j].values.first) {
              allSelectFilter.removeAt(j);
            }
          }
        }

        if (allSelectFilter.isNotEmpty) {
          for (int i = 0; i < allSelectFilter.length; i++) {
            if (allSelectFilter[i].values.first.typeFilter == 'ct') {
              if (ct != null) {
                ct = '$ct;${allSelectFilter[i].values.first.id}';
              } else {
                ct = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't26') {
              if (t26 != null) {
                t26 = '$t26;${allSelectFilter[i].values.first.id}';
              } else {
                t26 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f2') {
              if (f2 != null) {
                f2 = '$f2;${allSelectFilter[i].values.first.id}';
              } else {
                f2 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f3') {
              if (f3 != null) {
                f3 = '$f3;${allSelectFilter[i].values.first.id}';
              } else {
                f3 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f10') {
              if (f10 != null) {
                f10 = '$f10;${allSelectFilter[i].values.first.id}';
              } else {
                f10 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f12') {
              if (f12 != null) {
                f12 = '$f12;${allSelectFilter[i].values.first.id}';
              } else {
                f12 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 'f13') {
              if (f13 != null) {
                f13 = '$f13;${allSelectFilter[i].values.first.id}';
              } else {
                f13 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 's61') {
              if (s61 != null) {
                s61 = '$s61;${allSelectFilter[i].values.first.id}';
              } else {
                s61 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't1') {
              if (t1 != null) {
                t1 = '$t1;${allSelectFilter[i].values.first.id}';
              } else {
                t1 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't4') {
              if (t4 != null) {
                t4 = '$t4;${allSelectFilter[i].values.first.id}';
              } else {
                t4 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't9') {
              if (t9 != null) {
                t9 = '$t9;${allSelectFilter[i].values.first.id}';
              } else {
                t9 = '${allSelectFilter[i].values.first.id}';
              }
            }
            if (allSelectFilter[i].values.first.typeFilter == 't21') {
              if (t21 != null) {
                t21 = '$t21;${allSelectFilter[i].values.first.id}';
              } else {
                t21 = '${allSelectFilter[i].values.first.id}';
              }
            }
          }
        } else {
          listProducts = initState.defaultProducts;
        }

        request = request.copyWith(
          ct: ct,
          t26: t26,
          f2: f2,
          f3: f3,
          f10: f10,
          f12: f12,
          f13: f13,
          s61: s61,
          t1: t1,
          t4: t4,
          t9: t9,
          t21: t21,
          nav: 'page-1',
        );

        final catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );

        listProducts = catalogInfo.products;

        selectFilter[event.index] = [];
        emit(initState.copyWith(
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
          filter: catalogInfo.filter,
          catalogInfo: catalogInfo,
          products: listProducts,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _removeSelectAllFilters(
    RemoveSelectAllFiltersCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        CatalogProductsRequest request = initState.request;

        request = request.copyWith(
          ct: null,
          t26: null,
          f2: null,
          f3: null,
          f10: null,
          f12: null,
          f13: null,
          s61: null,
          t1: null,
          t4: null,
          t9: null,
          t21: null,
          nav: 'page-1',
        );

        final catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );

        emit(initState.copyWith(
          selectFilter: {},
          allSelectFilter: [],
          filter: catalogInfo.filter,
          catalogInfo: catalogInfo,
          products: catalogInfo.products,
        ));
      });
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;
    if (isInternet) {
      await state.mapOrNull(preloadDataCompleted: (initState) async {
        List<String> listProductsCode = initState.listProductsCode.toList();

        listProductsCode.removeLast();

        emit(initState.copyWith(
          listProductsCode: listProductsCode,
        ));

        if (listProductsCode.isNotEmpty) {
          emit(const CatalogState.load());
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
    } else {
      emit(const CatalogState.notInternetConnection());
    }
  }
}
