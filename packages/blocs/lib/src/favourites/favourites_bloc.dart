import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'favourites_bloc.freezed.dart';
part 'favourites_event.dart';
part 'favourites_state.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final CatalogRepository _catalogRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final FavouritesRepository _favouritesRepository;
  StreamSubscription<dynamic>? otherBlocSubscription;

  FavouritesBloc(
    this._catalogRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
  ) : super(const FavouritesState.init()) {
    on<FavouritesEvent>(
      (event, emit) => event.map(
        preloadData: (event) => _init(event, emit),
        addFavouriteProduct: (event) => _addFavouriteProduct(event, emit),
        deleteFavouriteProduct: (event) => _deleteFavouriteProduct(event, emit),
        selectFilter: (event) => _selectFilter(event, emit),
        deleteFilter: (event) => _deleteFilter(event, emit),
        deleteCatalogFilter: (event) => _deleteFilterCatalog(event, emit),
        removeSelectAllFilters: (event) => _removeSelectAllFilters(event, emit),
        removeSelectFilterCategory: (event) => _removeSelectFilterCategory(event, emit),
        getInfoProduct: (event) => _getInfoProduct(event, emit),
        goBackProductInfo: (event) => _goBackProductInfo(event, emit),
        paginationProduct: (event) => _paginationProduct(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    emit(const FavouritesState.load());

    FavouritesCatalogInfoDataModel? favouritesInfo;
    FavouritesCatalogProductsRequest request = FavouritesCatalogProductsRequest();
    List<int> favouritesProductsId = [];
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;

    if (isAuth) {
      favouritesInfo = await _favouritesRepository.getFavouritesProdcutsInfo();
      final result = await _favouritesRepository.getFavouritesProdcuts();
      favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
      log(result.toString());
    } else {
      favouritesInfo = await updateFavouritesProducts(
        request: request,
      );
      favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
    }

    emit(
      FavouritesState.productsFavourites(
        favouritesProducts: favouritesInfo.products,
        favouritesDefaultProducts: favouritesInfo.products,
        favouritesProductsInfo: favouritesInfo,
        filter: favouritesInfo.filter,
        selectFilter: {},
        allSelectFilter: [],
        request: request,
        listProductsCode: [],
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        offset: 1,
        favouritesProductsId: favouritesProductsId,
        isAuth: isAuth,
      ),
    );
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      FavouritesCatalogInfoDataModel? favouritesInfo;
      List<int> favouritesProductsId = [];
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        await _favouritesRepository.addFavouriteProdcut(code: event.product.id.toString());
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
          request: initState.request,
        );
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        log(result.toString());
      } else {
        _catalogRepository.addFavouritesProduct(event.product);
        favouritesInfo = await updateFavouritesProducts(
          request: initState.request,
        );
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      }

      emit(const FavouritesState.load());
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          favouritesDefaultProducts: favouritesInfo.products,
          favouritesProductsId: favouritesProductsId,
          filter: favouritesInfo.filter,
        ),
      );
    });
  }

  Future<void> _deleteFavouriteProduct(
    DeleteFavouriteProductFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      FavouritesCatalogInfoDataModel? favouritesInfo;
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter;
      List<int> favouritesProductsId = [];
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        await _favouritesRepository.deleteFavouriteProdcut(code: event.index.toString());
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
          request: initState.request,
        );
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        log(result.toString());
      } else {
        _catalogRepository.deleteFavouritesProduct(event.index);
        favouritesInfo = await updateFavouritesProducts(
          request: initState.request,
        );
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      }

      emit(const FavouritesState.load());
      emit(
        initState.copyWith(
          favouritesProducts: favouritesInfo.products,
          favouritesDefaultProducts: favouritesInfo.products,
          favouritesProductsId: favouritesProductsId,
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
        ),
      );
    });
  }

  Future<void> _selectFilter(
    SelectFilterFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
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
      FavouritesCatalogProductsRequest request = initState.request;
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

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      FavouritesCatalogInfoDataModel? favouritesInfo;
      if (isAuth) {
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
          request: request,
        );
      } else {
        favouritesInfo = await updateFavouritesProducts(
          request: request,
        );
      }

      emit(const FavouritesState.load());

      emit(initState.copyWith(
        selectFilter: selectFilter,
        filter: favouritesInfo.filter,
        allSelectFilter: allSelectFilter,
        favouritesProducts: favouritesInfo.products,
        favouritesProductsInfo: favouritesInfo,
        request: request,
      ));
    });
  }

  Future<void> _deleteFilter(
    DeleteFilterFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
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
      FavouritesCatalogProductsRequest request = initState.request;
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

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      FavouritesCatalogInfoDataModel? favouritesInfo;
      if (isAuth) {
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
          request: request,
        );
      } else {
        favouritesInfo = await updateFavouritesProducts(
          request: request,
        );
      }

      log(allSelectFilter.length.toString());
      emit(const FavouritesState.load());
      emit(
        initState.copyWith(
          filter: favouritesInfo.filter,
          favouritesProducts: favouritesInfo.products,
          favouritesDefaultProducts: favouritesInfo.products,
          request: request,
          selectFilter: selectFilter,
          favouritesProductsInfo: favouritesInfo,
          allSelectFilter: allSelectFilter,
          offset: 1,
        ),
      );
    });
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
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
      FavouritesCatalogProductsRequest request = initState.request;

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

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      FavouritesCatalogInfoDataModel? favouritesInfo;
      if (isAuth) {
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
          request: request,
        );
      } else {
        favouritesInfo = await updateFavouritesProducts(
          request: request,
        );
      }

      log(allSelectFilter.length.toString());
      emit(const FavouritesState.load());
      emit(
        initState.copyWith(
          filter: favouritesInfo.filter,
          favouritesProducts: favouritesInfo.products,
          favouritesDefaultProducts: favouritesInfo.products,
          request: request,
          selectFilter: selectFilter,
          favouritesProductsInfo: favouritesInfo,
          allSelectFilter: allSelectFilter,
          offset: 1,
        ),
      );
    });
  }

  Future<void> _removeSelectFilterCategory(
    RemoveSelectFilterCategotyFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
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
      FavouritesCatalogProductsRequest request = initState.request;
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter.toList();
      List<FilterItemDataModel> filters = selectFilter[event.index]?.toList() ?? [];

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

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      FavouritesCatalogInfoDataModel? favouritesInfo;
      if (isAuth) {
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
          request: request,
        );
      } else {
        favouritesInfo = await updateFavouritesProducts(
          request: request,
        );
      }

      selectFilter[event.index] = [];
      emit(initState.copyWith(
        filter: favouritesInfo.filter,
        favouritesProducts: favouritesInfo.products,
        favouritesDefaultProducts: favouritesInfo.products,
        request: request,
        selectFilter: selectFilter,
        favouritesProductsInfo: favouritesInfo,
        allSelectFilter: allSelectFilter,
      ));
    });
  }

  Future<void> _removeSelectAllFilters(
    RemoveSelectAllFiltersCategotyFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      FavouritesCatalogProductsRequest request = initState.request;

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

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      FavouritesCatalogInfoDataModel? favouritesInfo;
      if (isAuth) {
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
          request: request,
        );
      } else {
        favouritesInfo = await updateFavouritesProducts(
          request: request,
        );
      }

      emit(initState.copyWith(
        selectFilter: {},
        allSelectFilter: [],
        filter: favouritesInfo.filter,
        favouritesProductsInfo: favouritesInfo,
        favouritesProducts: favouritesInfo.products,
        favouritesDefaultProducts: favouritesInfo.products,
      ));
    });
  }

  Future<void> _getInfoProduct(
    GetInfoProductFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();
      emit(const FavouritesState.load());

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
    GoBackProductInfoCategotyFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      listProductsCode.removeLast();

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const FavouritesState.load());
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

  Future<void> _paginationProduct(
    PaginationProductFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      FavouritesCatalogProductsRequest request = initState.request;
      List<ProductDataModel> products = initState.favouritesProducts.toList();
      FavouritesCatalogInfoDataModel? favouritesInfo;
      List<int> favouritesProductsId = [];
      request = request.copyWith(nav: 'page-${initState.offset + 1}');

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;

      if (isAuth) {
        favouritesInfo = await updateFavouritesProducts(
          isLocal: false,
          request: request,
        );
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      } else {
        favouritesInfo = await updateFavouritesProducts(
          request: request,
        );
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      }

      products = [...products, ...favouritesInfo.products];

      emit(initState.copyWith(
        favouritesProducts: products,
        favouritesDefaultProducts: products,
        favouritesProductsId: favouritesProductsId,
        offset: initState.offset + 1,
      ));
    });
  }

  Future<FavouritesCatalogInfoDataModel> updateFavouritesProducts({
    bool isLocal = true,
    required FavouritesCatalogProductsRequest request,
  }) async {
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
