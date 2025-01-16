import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final CatalogRepository _catalogRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final FavouritesRepository _favouritesRepository;
  final BasketRepository _basketRepository;
  final UpdateDataService _updateDataService;
  final AppMetricaEcommerceService _appMetricaEcommerceService;

  SearchBloc(
    this._catalogRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
    this._basketRepository,
    this._updateDataService,
    this._appMetricaEcommerceService,
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
        changeSizeProduct: (event) => _changeSizeProduct(event, emit),
        getInfoProductSize: (event) => _getInfoProductSize(event, emit),
        updateInfoProducts: (event) => _updateInfoProducts(event, emit),
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
        listProdcutsComplect: [],
        listProductsCode: [],
        isAuth: isAuth,
        listSize: [],
        isLoadGetSizeProduct: false,
        codeProduct: null,
        userDiscount: 0,
        productsCount: 0,
      ),
    );
  }

  Future<void> _searchProfucts(
    ProfuctsSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(initState.copyWith(
          isLoading: true,
        ));
      }

      final searchResult = await _catalogRepository.searchProducts(
        search: event.query,
      );

      emit(initState.copyWith(
        searchProducts: searchResult.products,
        searchSections: searchResult.sections,
        isError: searchResult.errorMessage.isNotEmpty,
        errorMessage: MessageInfo.errorMessage,
        typeError: 'поиск товаров',
        query: event.query,
        isLoading: false,
        isLoadErrorButton: false,
        productsCount: searchResult.productsCount,
        codeProduct: null,
        offset: 1,
      ));
    });
  }

  Future<void> _searchProfuctsInfo(
    ProfuctsInfoSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const SearchState.load());
      }

      CatalogSearchProductsRequest request = initState.request;

      request = request.copyWith(query: event.query);
      final searchResultInfo = await _catalogRepository.searchProductsInfo(
        request: request.copyWith(
          query: event.query,
          filters: [
            FilterCatalogDataModel(
              key: 'nav',
              value: 'page-1',
            )
          ],
        ),
      );

      List<ProductDataModel> favouritesProducts = [];
      List<int> favouritesProductsId = [];
      FavouritesDataModel? favouritesProductsInfo;
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        favouritesProductsInfo = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId =
            favouritesProductsInfo.favorites.map((item) => int.parse(item)).toList();
        logging(favouritesProductsInfo.toString(), stackTrace: StackTrace.current);
      } else {
        favouritesProducts = _catalogRepository.getFavouritesProducts();
        favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
      }

      emit(initState.copyWith(
        isAuth: isAuth,
        searchResultInfo: searchResultInfo,
        products: searchResultInfo.products,
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
        typeError: 'результат поиска',
        isError: searchResultInfo.errorMessage.isNotEmpty ||
            (favouritesProductsInfo?.errorMessage.isNotEmpty ?? false),
        isLoadErrorButton: false,
        listProductsCode: [],
        filter: searchResultInfo.filter,
        request: request,
        offset: 1,
        userDiscount: searchResultInfo.userDiscount,
      ));
    });
  }

  Future<void> _selectFilter(
    SelectFilterSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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

      logging(selectFilter.toString(), stackTrace: StackTrace.current);

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

      if (searchResultInfo.errorMessage.isEmpty) {
        emit(const SearchState.load());
      } else {
        selectItem.remove(event.item);
      }

      emit(initState.copyWith(
        selectFilter:
            searchResultInfo.errorMessage.isNotEmpty ? initState.selectFilter : selectFilter,
        filter:
            searchResultInfo.errorMessage.isNotEmpty ? initState.filter : searchResultInfo.filter,
        allSelectFilter:
            searchResultInfo.errorMessage.isNotEmpty ? initState.allSelectFilter : allSelectFilter,
        products: searchResultInfo.errorMessage.isNotEmpty
            ? initState.products
            : searchResultInfo.products,
        searchResultInfo: searchResultInfo.errorMessage.isNotEmpty
            ? initState.searchResultInfo
            : searchResultInfo,
        isError: searchResultInfo.errorMessage.isNotEmpty,
        typeError: 'выбрать фильтр',
        errorMessage: MessageInfo.errorMessage,
        indexFileter: event.index,
        indexItemFileter: event.indexItem,
        itemFileter: event.item,
        request: request,
        offset: 1,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _deleteFilter(
    DeleteFilterSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<FilterItemDataModel> selectItem = selectFilter[event.index] ?? [];
      CatalogSearchProductsRequest request = initState.request;
      List<Map<int, FilterItemDataModel>> allSelectFilter = [];
      Map<String, FilterCatalogDataModel> filtersInfo = {};

      selectItem.remove(event.item);
      selectFilter[event.index] = selectItem;

      logging(selectFilter.toString(), stackTrace: StackTrace.current);

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

      logging(allSelectFilter.length.toString(), stackTrace: StackTrace.current);
      if (searchResultInfo.errorMessage.isEmpty) {
        emit(const SearchState.load());
        if (initState.isError ?? false) {
          selectItem.remove(event.item);
          selectFilter[event.index] = selectItem;
        }
      } else {
        selectItem.insert(event.indexItem, event.item);
        selectFilter[event.index] = selectItem;
      }

      emit(
        initState.copyWith(
          selectFilter:
              searchResultInfo.errorMessage.isNotEmpty ? initState.selectFilter : selectFilter,
          filter:
              searchResultInfo.errorMessage.isNotEmpty ? initState.filter : searchResultInfo.filter,
          allSelectFilter: searchResultInfo.errorMessage.isNotEmpty
              ? initState.allSelectFilter
              : allSelectFilter,
          products: searchResultInfo.errorMessage.isNotEmpty
              ? initState.products
              : searchResultInfo.products,
          searchResultInfo: searchResultInfo.errorMessage.isNotEmpty
              ? initState.searchResultInfo
              : searchResultInfo,
          isError: searchResultInfo.errorMessage.isNotEmpty,
          typeError: 'удалить фильтр',
          errorMessage: MessageInfo.errorMessage,
          indexFileter: event.index,
          indexItemFileter: event.indexItem,
          itemFileter: event.item,
          request: request,
          offset: 1,
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _removeSelectFilterCategory(
    RemoveSelectFilterCategotySearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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
        selectFilter:
            searchResultInfo.errorMessage.isNotEmpty ? initState.selectFilter : selectFilter,
        filter:
            searchResultInfo.errorMessage.isNotEmpty ? initState.filter : searchResultInfo.filter,
        allSelectFilter:
            searchResultInfo.errorMessage.isNotEmpty ? initState.allSelectFilter : allSelectFilter,
        products: searchResultInfo.errorMessage.isNotEmpty ? initState.products : listProducts,
        searchResultInfo: searchResultInfo.errorMessage.isNotEmpty
            ? initState.searchResultInfo
            : searchResultInfo,
        isError: searchResultInfo.errorMessage.isNotEmpty,
        typeError: 'удалить фильтры из категории',
        indexFilterCategory: event.index,
        errorMessage: MessageInfo.errorMessage,
        request: request,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _removeSelectAllFilters(
    RemoveSelectAllFiltersCategotySearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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
        selectFilter: searchResultInfo.errorMessage.isNotEmpty ? initState.selectFilter : {},
        allSelectFilter: searchResultInfo.errorMessage.isNotEmpty ? initState.allSelectFilter : [],
        offset: 1,
        typeError: 'удалить все фильтры',
        isError: searchResultInfo.errorMessage.isNotEmpty,
        errorMessage: MessageInfo.errorMessage,
        filter:
            searchResultInfo.errorMessage.isNotEmpty ? initState.filter : searchResultInfo.filter,
        searchResultInfo: searchResultInfo.errorMessage.isNotEmpty
            ? initState.searchResultInfo
            : searchResultInfo,
        products: searchResultInfo.errorMessage.isNotEmpty
            ? initState.products
            : searchResultInfo.products,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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

      logging(selectFilter.toString(), stackTrace: StackTrace.current);

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

      logging(allSelectFilter.length.toString(), stackTrace: StackTrace.current);
      if (searchResultInfo.errorMessage.isEmpty) {
        emit(const SearchState.load());
      }

      emit(
        initState.copyWith(
          filter:
              searchResultInfo.errorMessage.isNotEmpty ? initState.filter : searchResultInfo.filter,
          request: searchResultInfo.errorMessage.isNotEmpty ? initState.request : request,
          selectFilter:
              searchResultInfo.errorMessage.isNotEmpty ? initState.selectFilter : selectFilter,
          products: searchResultInfo.errorMessage.isNotEmpty ? initState.products : listProducts,
          searchResultInfo: searchResultInfo.errorMessage.isNotEmpty
              ? initState.searchResultInfo
              : searchResultInfo,
          allSelectFilter: searchResultInfo.errorMessage.isNotEmpty
              ? initState.allSelectFilter
              : allSelectFilter,
          isError: searchResultInfo.errorMessage.isNotEmpty,
          errorMessage: MessageInfo.errorMessage,
          offset: 1,
          keyFilterCatalog: event.key,
          itemFileter: event.item,
          indexFileter: event.index,
          isLoadErrorButton: false,
          typeError: 'удалить фильтр из результатов поиска',
        ),
      );
    });
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      List<ProductDataModel> favouritesProducts = [];
      FavouritesInfoDataModel? addFavouriteProdcut;
      List<int> favouritesProductsId = [];
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        addFavouriteProdcut =
            await _favouritesRepository.addFavouriteProdcut(code: event.product.id.toString());
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        logging(result.toString(), stackTrace: StackTrace.current);
        if (addFavouriteProdcut.errorMessage.isEmpty) {
          emit(const SearchState.load());
        }
      } else {
        _catalogRepository.addFavouritesProduct(event.product);
        favouritesProducts = _catalogRepository.getFavouritesProducts();
        favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
        emit(const SearchState.load());
      }

      emit(initState.copyWith(
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
        isError: (addFavouriteProdcut?.errorMessage.isNotEmpty ?? false),
        typeError: event.typeError,
        errorMessage: MessageInfo.errorMessage,
        favouriteProduct: event.product,
        indexProduct: event.index,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _deleteFavouriteProduct(
    DeleteFavouriteProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      List<ProductDataModel> favouritesProducts = [];
      FavouritesInfoDataModel? deleteFavouriteProdcut;
      List<int> favouritesProductsId = [];
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        deleteFavouriteProdcut =
            await _favouritesRepository.deleteFavouriteProdcut(code: event.index.toString());
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        logging(result.toString(), stackTrace: StackTrace.current);
        if (deleteFavouriteProdcut.errorMessage.isEmpty) {
          emit(const SearchState.load());
        }
      } else {
        _catalogRepository.deleteFavouritesProduct(event.index);
        favouritesProducts = _catalogRepository.getFavouritesProducts();
        favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
        emit(const SearchState.load());
      }

      emit(initState.copyWith(
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
        isError: deleteFavouriteProdcut?.errorMessage.isNotEmpty ?? false,
        typeError: event.typeError,
        errorMessage: MessageInfo.errorMessage,
        indexProduct: event.index,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _getInfoProduct(
    GetInfoProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      SkuProductDataModel? selectSizeProduct;
      AppMetrica.reportEvent(event.titleScreen);
      String errorMessage = '';
      bool isShoppingCartDetailsProduct = false;
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
        emit(const SearchState.load());
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
        typeError: event.typeError ?? '',
        isError: isError,
        errorMessage: errorMessage,
        codeProduct: event.code,
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProdcutsComplect: additionalProductsDescriptionComplect.products,
        listProductsCode: listProductsCode,
        isAuth: isAuth,
        isShoppingCart: soppingCart.isNotEmpty,
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
        selectSizeProduct: selectSizeProduct ?? event.size,
      ));
    });
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotySearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      if (listProductsCode.isNotEmpty) {
        listProductsCode.removeLast();
      }

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const SearchState.load());
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

  Future<void> _paginationProduct(
    PaginationProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      CatalogSearchProductsRequest request = initState.request;
      List<ProductDataModel> products = initState.products.toList();
      List<FilterCatalogDataModel> filters = initState.request.filters?.toList() ?? [];
      List<int> favouritesProductsId = [];
      CatalogSearchInfoDataModel? searchResultInfo;
      int offset = 0;

      filters.add(FilterCatalogDataModel(
        key: 'nav',
        value: 'page-${initState.offset + 1}',
      ));

      if (initState.offset != int.parse(filters.last.value.replaceAll('page-', '')) &&
          offset != initState.offset) {
        offset = initState.offset;
        searchResultInfo = await _catalogRepository.searchProductsInfo(
          request: request.copyWith(
            query: initState.query,
            filters: filters,
          ),
        );
      }

      List<ProductDataModel> favouritesProducts = [];

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        logging(result.toString(), stackTrace: StackTrace.current);
      } else {
        favouritesProducts = _catalogRepository.getFavouritesProducts();
        favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
      }

      products = [...products, ...searchResultInfo?.products ?? []];

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

  Future<void> _addProductToSoppingCart(
    AddProductToSoppingCartSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
        titleScreen: event.titleScreen,
        titleProduct: initState.detailsProduct?.name ?? '',
        codeProduct: (initState.detailsProduct?.code ?? 0).toString(),
        typeProductToSoppingCart: AppMetricaShoppingCartEnum.addProductToShoppingCart,
        type: event.typeAddProductToShoppingCart,
        identifier: event.identifierAddProductToShoppingCart,
        quantity: 1,
        searchQuery: initState.query,
        sectionCategoriesPath: [],
        productCategoriesPath: [],
        priceActual: initState.detailsProduct?.price.yourPrice ?? 0,
        priceOriginal: int.parse(initState.detailsProduct?.price.pb ?? '0'),
        internalComponentsActualPrice: [
          AppMetricaECommerceAmount(
            amount: Decimal.fromInt(initState.detailsProduct?.price.yourPrice ?? 0),
            currency: event.size?.value ?? '',
          ),
          AppMetricaECommerceAmount(
            amount: Decimal.fromInt(initState.detailsProduct?.price.yourPrice ?? 0),
            currency: event.size?.id ?? '',
          ),
        ],
        internalComponentsOriginalPrice: [
          AppMetricaECommerceAmount(
            amount: Decimal.parse(initState.detailsProduct?.price.pb ?? '0'),
            currency: event.size?.value ?? '',
          ),
          AppMetricaECommerceAmount(
            amount: Decimal.parse(initState.detailsProduct?.price.pb ?? '0'),
            currency: event.size?.id ?? '',
          ),
        ],
      );
      final listProducts = initState.products.toList();
      bool isShoppingCart = false;
      bool isShoppingCartDetailsProduct = false;
      final detailsProduct = initState.detailsProduct;

      final items = listProducts.where((element) => element.id == event.code).toList();

      if (items.isNotEmpty) {
        int index = listProducts.indexOf(items.first);
        ProductDataModel product = ProductDataModel(
          id: items.first.id,
          title: items.first.title,
          category: items.first.category,
          size: items.first.size,
          price: items.first.price,
          pb: items.first.pb,
          yourPrice: items.first.yourPrice,
          brend: items.first.brend,
          lensDiameter: items.first.lensDiameter,
          templeLength: items.first.templeLength,
          country: items.first.country,
          images: items.first.images,
          variants: items.first.variants,
          maximumCashback: items.first.maximumCashback,
          discount: 0,
          maximumPersonalDiscount: items.first.maximumPersonalDiscount,
          isYourPriceDisplayed: items.first.isYourPriceDisplayed,
          isShop: true,
          sz: [],
          promo: '',
          promoValue: 0,
          video: DetailProductVideoDataModel(
            i: '',
            v: '',
          ),
        );

        listProducts[index] = product;
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
        if (selectSizeProduct.id == (event.size?.id ?? '') &&
            (event.size?.id ?? '').contains('-')) {
          isShoppingCart = true;
        }

        if (selectSizeProduct.id == (event.size?.id ?? '') &&
            detailsProduct.sku.length == 1 &&
            !(event.size?.id ?? '').contains('-')) {
          isShoppingCart = true;
          isShoppingCartDetailsProduct = true;
        }

        if (event.size?.id.isEmpty ?? true) {
          isShoppingCart = true;
          isShoppingCartDetailsProduct = true;
        }
      } else {
        isShoppingCart = false;
        isShoppingCartDetailsProduct = true;
      }

      emit(initState.copyWith(
        products: listProducts,
        searchDefaultProducts: listProducts,
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
        isShoppingCart: (initState.isShoppingCart ?? false) || isShoppingCart,
      ));
    });
  }

  Future<void> _updateInfoProducts(
    UpdateInfoProductsSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
      emit(initState.copyWith(
        codeProduct: initState.codeProduct,
      ));
      final catalogInfo = await _catalogRepository.searchProductsInfo(
        request: initState.request,
      );

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: initState.codeProduct ?? '0',
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      if (detailsProduct.sku.isNotEmpty) {
        if (detailsProduct.sku.first.id.contains('-') && detailsProduct.sku.first.id.length > 10) {
          emit(SearchState.getSizeProduct(
            code: initState.codeProduct ?? '0',
            listSize: detailsProduct.sku,
            listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
            titleScreen: event.titleScreen,
            query: initState.query,
          ));
        }
      }

      emit(initState.copyWith(
        filter: catalogInfo.filter,
        searchResultInfo: catalogInfo,
        products: catalogInfo.products,
        listSize: detailsProduct.sku,
        searchDefaultProducts: catalogInfo.products,
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
      List<BasketFullInfoItemDataModel> soppingCart = [];
      SkuProductDataModel selectSizeProduct = initState.selectSizeProduct ??
          (initState.detailsProduct?.sku.first ??
              SkuProductDataModel(
                id: '',
                value: '',
              ));

      if (initState.detailsProduct?.sku.isNotEmpty ?? false) {
        soppingCart = basketInfo.basket
            .where(
              (element) =>
                  int.parse(element.code) == (initState.detailsProduct?.code ?? 0) &&
                  ((element.sku.isNotEmpty ? element.sku == event.size.id : true) ||
                      selectSizeProduct.id == element.sku),
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

  Future<void> _changeSizeProduct(
    ChangeSizeProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    state.mapOrNull(searchProductsResult: (initState) {
      emit(initState.copyWith(
        selectSizeProduct: event.selectSizeProduct,
      ));
    });
  }

  Future<void> _getInfoProductSize(
    GetInfoProductSizeSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    await state.mapOrNull(searchProductsResult: (initState) async {
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
            emit(SearchState.getSizeProduct(
              code: event.code,
              listSize: detailsProduct.sku,
              listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
              titleScreen: event.titleScreen,
              query: initState.query,
            ));
          } else {
            if (event.isShop) {
              emit(const SearchState.openSoppingCart());
            } else {
              emit(SearchState.addProductToSoppingCart(
                code: event.code,
                titleScreen: event.titleScreen,
                query: initState.query,
              ));
            }
          }
        } else {
          if (event.isShop) {
            emit(const SearchState.openSoppingCart());
          } else {
            emit(SearchState.addProductToSoppingCart(
              code: event.code,
              titleScreen: event.titleScreen,
              query: initState.query,
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
        typeError: 'выбор размера ${event.titleScreen.toLowerCase()}',
        isLoadErrorButton: false,
      ));
    });
  }
}
