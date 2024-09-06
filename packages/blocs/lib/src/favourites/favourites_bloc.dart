import 'dart:async';
import 'dart:developer';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:decimal/decimal.dart';
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
  final BasketRepository _basketRepository;
  final UpdateDataService _updateDataService;
  final AppMetricaEcommerceService _appMetricaEcommerceService;
  StreamSubscription<dynamic>? otherBlocSubscription;

  FavouritesBloc(
    this._catalogRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
    this._basketRepository,
    this._updateDataService,
    this._appMetricaEcommerceService,
  ) : super(const FavouritesState.init()) {
    on<FavouritesEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        preloadData: (event) => _preloadData(event, emit),
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
        addProductToSoppingCart: (event) => _addProductToSoppingCart(event, emit),
        checkProductToSoppingCart: (event) => _checkProductToSoppingCart(event, emit),
        checkButtonTop: (event) => _checkButtonTop(event, emit),
        changeSizeProduct: (event) => _changeSizeProduct(event, emit),
        getInfoProductSize: (event) => _getInfoProductSize(event, emit),
        updateInfoProducts: (event) => _updateInfoProducts(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;

    emit(
      FavouritesState.productsFavourites(
        favouritesProducts: [],
        favouritesDefaultProducts: [],
        filter: [],
        selectFilter: {},
        allSelectFilter: [],
        request: FavouritesCatalogProductsRequest(),
        listProductsCode: [],
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        listProdcutsComplect: [],
        offset: 1,
        favouritesProductsId: [],
        isAuth: isAuth,
        isButtonTop: false,
        listSize: [],
        isLoadGetSizeProduct: false,
        codeProduct: null,
        userDiscount: 0,
      ),
    );
  }

  Future<void> _preloadData(
    PreloadDataFavouritesEvent event,
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
        listProdcutsComplect: [],
        offset: 1,
        favouritesProductsId: favouritesProductsId,
        isAuth: isAuth,
        isButtonTop: false,
        listSize: [],
        isLoadGetSizeProduct: false,
        codeProduct: null,
        userDiscount: favouritesInfo.userDiscount,
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
      FavouritesCatalogProductsRequest request = initState.request;
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = [];
      Map<String, FilterCatalogDataModel> filtersInfo = {};
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
      Map<String, FilterCatalogDataModel> filtersInfo = {};
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
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter.toList();
      FavouritesCatalogProductsRequest request = initState.request;
      Map<String, FilterCatalogDataModel> filtersInfo = {};
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
      }

      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );

      request = request.copyWith(
        filters: filtersInfo.values.toList(),
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
      FavouritesCatalogProductsRequest request = initState.request;
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter.toList();
      List<FilterItemDataModel> filters = selectFilter[event.index]?.toList() ?? [];
      Map<String, FilterCatalogDataModel> filtersInfo = {};

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
      }

      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );

      request = request.copyWith(
        filters: filtersInfo.values.toList(),
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

      request = request.copyWith(filters: [
        FilterCatalogDataModel(
          key: 'nav',
          value: 'page-1',
        )
      ]);

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
      SkuProductDataModel? selectSizeProduct;
      List<String> listProductsCode = initState.listProductsCode.toList();
      bool isShoppingCartDetailsProduct = false;
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      emit(const FavouritesState.load());

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

      if (!(event.isUpdate ?? false)) {
        listProductsCode.add(event.code);
      }

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

      emit(initState.copyWith(
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProdcutsComplect: additionalProductsDescriptionComplect.products,
        listProductsCode: listProductsCode,
        isAuth: isAuth,
        isUpdate: event.isUpdate,
        isShoppingCart: soppingCart.isNotEmpty,
        selectSizeProduct: selectSizeProduct ?? event.size,
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
      ));
    });
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      if (listProductsCode.isNotEmpty) {
        listProductsCode.removeLast();
      }

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
        isUpdate: initState.isUpdate,
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const FavouritesState.load());
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
          isUpdate: initState.isUpdate,
          selectSizeProduct: null,
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
      List<FilterCatalogDataModel> filters = initState.request.filters?.toList() ?? [];
      FavouritesCatalogInfoDataModel? favouritesInfo;
      int offset = 0;
      List<int> favouritesProductsId = [];

      filters.add(FilterCatalogDataModel(
        key: 'nav',
        value: 'page-${initState.offset + 1}',
      ));

      request = request.copyWith(filters: filters);

      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;

      if (isAuth) {
        if (initState.offset != int.parse(filters.last.value.replaceAll('page-', '')) &&
            offset != initState.offset) {
          favouritesInfo = await updateFavouritesProducts(
            isLocal: false,
            request: request,
          );
          favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
        }
      } else {
        if (initState.offset != int.parse(filters.last.value.replaceAll('page-', '')) &&
            offset != initState.offset) {
          favouritesInfo = await updateFavouritesProducts(
            request: request,
          );
          favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
        }
      }

      products = [...products, ...favouritesInfo?.products ?? []];

      emit(initState.copyWith(
        favouritesProducts: products,
        favouritesDefaultProducts: products,
        favouritesProductsId: favouritesProductsId,
        offset: initState.offset + 1,
      ));
    });
  }

  Future<void> _getInfoProductSize(
    GetInfoProductSizeFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      emit(initState.copyWith(
        isLoadGetSizeProduct: true,
        codeProduct: event.code,
      ));
      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      if (detailsProduct.sku.isNotEmpty) {
        if (detailsProduct.sku.first.id.contains('-') && detailsProduct.sku.first.id.length > 10) {
          emit(FavouritesState.getSizeProduct(
            code: event.code,
            listSize: detailsProduct.sku,
            listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
            titleScreen: event.titleScreen,
          ));
        } else {
          if (event.isShop) {
            emit(const FavouritesState.openSoppingCart());
          } else {
            emit(FavouritesState.addProductToSoppingCart(
              code: event.code,
              titleScreen: event.titleScreen,
            ));
          }
        }
      } else {
        if (event.isShop) {
          emit(const FavouritesState.openSoppingCart());
        } else {
          emit(FavouritesState.addProductToSoppingCart(
            code: event.code,
            titleScreen: event.titleScreen,
          ));
        }
      }

      emit(initState.copyWith(
        detailsProduct: detailsProduct,
        listSize: detailsProduct.sku,
        isLoadGetSizeProduct: false,
        codeProduct: event.code,
      ));
    });
  }

  Future<void> _updateInfoProducts(
    UpdateInfoProductsFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      emit(initState.copyWith(
        codeProduct: initState.codeProduct,
      ));

      FavouritesCatalogInfoDataModel? favouritesInfo;
      List<int> favouritesProductsId = [];
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;

      if (isAuth) {
        favouritesInfo = await _favouritesRepository.getFavouritesProdcutsInfo(
          request: initState.request,
        );
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        log(result.toString());
      } else {
        favouritesInfo = await updateFavouritesProducts(
          request: initState.request,
        );
        favouritesProductsId = favouritesInfo.products.map((item) => item.id).toList();
      }

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: initState.codeProduct ?? '0',
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      if (detailsProduct.sku.isNotEmpty) {
        if (detailsProduct.sku.first.id.contains('-') && detailsProduct.sku.first.id.length > 10) {
          emit(FavouritesState.getSizeProduct(
            code: initState.codeProduct ?? '0',
            listSize: detailsProduct.sku,
            listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
            titleScreen: event.titleScreen,
          ));
        }
      }

      emit(initState.copyWith(
        favouritesProducts: favouritesInfo.products,
        favouritesDefaultProducts: favouritesInfo.products,
        favouritesProductsId: favouritesProductsId,
        favouritesProductsInfo: favouritesInfo,
        filter: favouritesInfo.filter,
        listSize: detailsProduct.sku,
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

  Future<void> _changeSizeProduct(
    ChangeSizeProductFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    state.mapOrNull(productsFavourites: (initState) {
      emit(initState.copyWith(
        selectSizeProduct: event.selectSizeProduct,
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
    AddProductToSoppingCartFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
      _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
        titleScreen: event.titleScreen,
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
      final listProducts = initState.favouritesProducts.toList();
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
          maximumPersonalDiscount: items.first.maximumPersonalDiscount,
          isYourPriceDisplayed: items.first.isYourPriceDisplayed,
          isShop: true,
          sz: [],
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
        favouritesProducts: listProducts,
        favouritesDefaultProducts: listProducts,
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
        isShoppingCart: (initState.isShoppingCart ?? false) || isShoppingCart,
      ));
    });
  }

  Future<void> _checkProductToSoppingCart(
    CheckProductToSoppingCartFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    await state.mapOrNull(productsFavourites: (initState) async {
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

  Future<void> _checkButtonTop(
    CheckButtonTopFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    state.mapOrNull(productsFavourites: (initState) {
      emit(initState.copyWith(
        isButtonTop: event.isButtonTop,
      ));
    });
  }
}
