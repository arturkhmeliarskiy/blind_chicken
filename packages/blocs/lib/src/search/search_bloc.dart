import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final CatalogRepository _catalogRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final FavouritesRepository _favouritesRepository;

  SearchBloc(
    this._catalogRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
  ) : super(const SearchState.init()) {
    on<SearchEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        searchProfucts: (event) => _searchProfucts(event, emit),
        searchProfuctsInfo: (event) => _searchProfuctsInfo(event, emit),
        selectFilter: (event) => _selectFilter(event, emit),
        deleteFilter: (event) => _deleteFilter(event, emit),
        deleteCatalogFilter: (event) => _deleteFilterCatalog(event, emit),
        addFavouriteProduct: (event) => _addFavouriteProduct(event, emit),
        deleteFavouriteProduct: (event) => _deleteFavouriteProduct(event, emit),
        removeSelectFilterCategory: (event) => _removeSelectFilterCategory(event, emit),
        removeSelectAllFilters: (event) => _removeSelectAllFilters(event, emit),
        goBackProductInfo: (event) => _goBackProductInfo(event, emit),
        getInfoProduct: (event) => _getInfoProduct(event, emit),
        paginationProduct: (event) => _paginationProduct(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    emit(
      SearchState.searchProductsResult(
        searchProducts: [],
        searchSections: [],
        products: [],
        offset: 1,
        isLoading: false,
        searchDefaultProducts: [],
        filter: [],
        favouritesProducts: [],
        query: '',
        selectFilter: {},
        allSelectFilter: [],
        favouritesProductsId: [],
        request: CatalogSearchProductsRequest(),
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        listProductsCode: [],
        isAuth: isAuth,
      ),
    );
  }

  Future<void> _searchProfucts(
    ProfuctsSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      emit(initState.copyWith(
        isLoading: true,
      ));

      final searchResult = await _catalogRepository.searchProducts(
        search: event.query,
      );

      emit(initState.copyWith(
        searchProducts: searchResult.products,
        searchSections: searchResult.sections,
        query: event.query,
        isLoading: false,
      ));
    });
  }

  Future<void> _searchProfuctsInfo(
    ProfuctsInfoSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      emit(const SearchState.load());
      CatalogSearchProductsRequest request = initState.request;

      request = request.copyWith(query: event.query);
      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request.copyWith(query: event.query),
      );

      List<ProductDataModel> favouritesProducts = [];
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

      emit(initState.copyWith(
        searchResultInfo: searchResultInfo,
        products: searchResultInfo.products,
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
        filter: searchResultInfo.filter,
        request: request,
      ));
    });
  }

  Future<void> _selectFilter(
    SelectFilterSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
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
      CatalogSearchProductsRequest request = initState.request;
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

      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request,
      );

      emit(const SearchState.load());

      emit(initState.copyWith(
        selectFilter: selectFilter,
        filter: searchResultInfo.filter,
        allSelectFilter: allSelectFilter,
        products: searchResultInfo.products,
        searchResultInfo: searchResultInfo,
        request: request,
      ));
    });
  }

  Future<void> _deleteFilter(
    DeleteFilterSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
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
      CatalogSearchProductsRequest request = initState.request;
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

      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request,
      );

      log(allSelectFilter.length.toString());
      emit(const SearchState.load());
      emit(
        initState.copyWith(
          filter: searchResultInfo.filter,
          products: searchResultInfo.products,
          request: request,
          selectFilter: selectFilter,
          searchResultInfo: searchResultInfo,
          allSelectFilter: allSelectFilter,
          offset: 1,
        ),
      );
    });
  }

  Future<void> _removeSelectFilterCategory(
    RemoveSelectFilterCategotySearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
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
      CatalogSearchProductsRequest request = initState.request;
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
        listProducts = initState.searchDefaultProducts;
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

      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request,
      );

      listProducts = searchResultInfo.products;

      selectFilter[event.index] = [];
      emit(initState.copyWith(
        selectFilter: selectFilter,
        allSelectFilter: allSelectFilter,
        filter: searchResultInfo.filter,
        searchResultInfo: searchResultInfo,
        request: request,
        products: listProducts,
      ));
    });
  }

  Future<void> _removeSelectAllFilters(
    RemoveSelectAllFiltersCategotySearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      CatalogSearchProductsRequest request = initState.request;

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

      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request,
      );

      emit(initState.copyWith(
        selectFilter: {},
        allSelectFilter: [],
        filter: searchResultInfo.filter,
        searchResultInfo: searchResultInfo,
        products: searchResultInfo.products,
      ));
    });
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
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
      CatalogSearchProductsRequest request = initState.request;
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
        listProducts = initState.searchDefaultProducts;
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

      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request,
      );

      listProducts = searchResultInfo.products;

      log(allSelectFilter.length.toString());
      emit(const SearchState.load());
      emit(
        initState.copyWith(
          filter: searchResultInfo.filter,
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
          products: listProducts,
          searchResultInfo: searchResultInfo,
          request: request,
          offset: 1,
        ),
      );
    });
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
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

      emit(const SearchState.load());
      emit(initState.copyWith(
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
      ));
    });
  }

  Future<void> _deleteFavouriteProduct(
    DeleteFavouriteProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
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

      emit(const SearchState.load());
      emit(initState.copyWith(
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
      ));
    });
  }

  Future<void> _getInfoProduct(
    GetInfoProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();
      emit(const SearchState.load());

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
      listProductsCode.add(event.code);

      emit(initState.copyWith(
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProductsCode: listProductsCode,
      ));
    });
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotySearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      listProductsCode.removeLast();

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const SearchState.load());
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
    PaginationProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      CatalogSearchProductsRequest request = initState.request;
      List<ProductDataModel> products = initState.products.toList();
      List<int> favouritesProductsId = [];
      request = request.copyWith(nav: 'page-${initState.offset + 1}');

      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request.copyWith(query: initState.query),
      );

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

      products = [...products, ...searchResultInfo.products];

      emit(initState.copyWith(
        favouritesProducts: favouritesProducts,
        products: products,
        favouritesProductsId: favouritesProductsId,
        offset: initState.offset + 1,
      ));
    });
  }
}
