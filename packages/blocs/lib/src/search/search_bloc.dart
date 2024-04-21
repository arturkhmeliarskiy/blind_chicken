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
  final BasketRepository _basketRepository;

  SearchBloc(
    this._catalogRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
    this._basketRepository,
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
        checkButtonTop: (event) => _checkButtonTop(event, emit),
        addProductToSoppingCart: (event) => _addProductToSoppingCart(event, emit),
        checkProductToSoppingCart: (event) => _checkProductToSoppingCart(event, emit),
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
        isButtonTop: false,
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
        listProductsCode: [],
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
      Map<String, FilterCatalogDataModel> filtersInfo = {};
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
          if (filtersInfo.containsKey(filters[j].typeFilter)) {
            filtersInfo.update(
              filters[j].typeFilter,
              (item) => FilterCatalogDataModel(
                key: filters[j].typeFilter,
                value: '${item.value};${filters[j].id}',
              ),
            );
          } else {
            filtersInfo[filters[j].typeFilter] = FilterCatalogDataModel(
              key: filters[j].typeFilter,
              value: '${filters[j].id}',
            );
          }
        }
      }

      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );

      request = request.copyWith(
        filters: filtersInfo.values.toList(),
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
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<FilterItemDataModel> selectItem = selectFilter[event.index] ?? [];
      CatalogSearchProductsRequest request = initState.request;
      List<Map<int, FilterItemDataModel>> allSelectFilter = [];
      Map<String, FilterCatalogDataModel> filtersInfo = {};

      selectItem.remove(event.item);
      selectFilter[event.index] = selectItem;

      log(selectFilter.toString());

      for (int i = 0; i < selectFilter.length; i++) {
        int key = selectFilter.keys.toList()[i];
        List<FilterItemDataModel> filters = selectFilter[key] ?? [];
        for (int j = 0; j < filters.length; j++) {
          allSelectFilter.add({key: filters[j]});
          if (filtersInfo.containsKey(filters[j].typeFilter)) {
            filtersInfo.update(
              filters[j].typeFilter,
              (item) => FilterCatalogDataModel(
                key: filters[j].typeFilter,
                value: '${item.value};${filters[j].id}',
              ),
            );
          } else {
            filtersInfo[filters[j].typeFilter] = FilterCatalogDataModel(
              key: filters[j].typeFilter,
              value: '${filters[j].id}',
            );
          }
        }
      }

      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );

      request = request.copyWith(
        filters: filtersInfo.values.toList(),
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
      CatalogSearchProductsRequest request = initState.request;
      Map<String, FilterCatalogDataModel> filtersInfo = {};
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
          if (filtersInfo.containsKey(allSelectFilter[i].values.first.typeFilter)) {
            filtersInfo.update(
              allSelectFilter[i].values.first.typeFilter,
              (item) => FilterCatalogDataModel(
                key: allSelectFilter[i].values.first.typeFilter,
                value: '${item.value};${allSelectFilter[i].values.first.id}',
              ),
            );
          } else {
            filtersInfo[allSelectFilter[i].values.first.typeFilter] = FilterCatalogDataModel(
              key: allSelectFilter[i].values.first.typeFilter,
              value: '${allSelectFilter[i].values.first.id}',
            );
          }
        }
      } else {
        listProducts = initState.searchDefaultProducts;
      }

      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );

      request = request.copyWith(
        filters: filtersInfo.values.toList(),
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
      List<FilterCatalogDataModel> filtersInfo = [];
      filtersInfo.add(
        FilterCatalogDataModel(
          key: 'nav',
          value: 'page-1',
        ),
      );

      request = request.copyWith(
        filters: filtersInfo,
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
      Map<String, FilterCatalogDataModel> filtersInfo = {};
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
          if (filtersInfo.containsKey(allSelectFilter[i].values.first.typeFilter)) {
            filtersInfo.update(
              allSelectFilter[i].values.first.typeFilter,
              (item) => FilterCatalogDataModel(
                key: allSelectFilter[i].values.first.typeFilter,
                value: '${item.value};${allSelectFilter[i].values.first.id}',
              ),
            );
          } else {
            filtersInfo[allSelectFilter[i].values.first.typeFilter] = FilterCatalogDataModel(
              key: allSelectFilter[i].values.first.typeFilter,
              value: '${allSelectFilter[i].values.first.id}',
            );
          }
        }
      } else {
        listProducts = initState.searchDefaultProducts;
      }

      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );

      request = request.copyWith(
        filters: filtersInfo.values.toList(),
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
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      emit(const SearchState.load());

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
      List<FilterCatalogDataModel> filters = initState.request.filters?.toList() ?? [];
      List<int> favouritesProductsId = [];
      filters.add(FilterCatalogDataModel(
        key: 'nav',
        value: 'page-${initState.offset + 1}',
      ));

      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request.copyWith(
          query: initState.query,
          filters: filters,
        ),
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

  Future<void> _addProductToSoppingCart(
    AddProductToSoppingCartSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      emit(initState.copyWith(
        isSoppingCart: true,
      ));
    });
  }

  Future<void> _checkProductToSoppingCart(
    CheckProductToSoppingCartSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
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

  Future<void> _checkButtonTop(
    CheckButtonTopSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    state.mapOrNull(searchProductsResult: (initState) {
      emit(initState.copyWith(
        isButtonTop: event.isButtonTop,
      ));
    });
  }
}
