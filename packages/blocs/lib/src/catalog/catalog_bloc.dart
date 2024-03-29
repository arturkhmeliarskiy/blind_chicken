import 'dart:async';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared/shared.dart';
import 'dart:io' show Platform;

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
  final AppStoreInfoRepository _appStoreInfoRepository;
  final DeviceInfoService _deviceInfoService;
  final PushNotificationRepository _pushNotificationRepository;

  CatalogBloc(
    this._catalogRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
    this._constatntsInfo,
    this._updateDataService,
    this._boutiquesRepository,
    this._basketRepository,
    this._appStoreInfoRepository,
    this._deviceInfoService,
    this._pushNotificationRepository,
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
          getInfoProductsPushNotification: (event) => _getInfoProductsPushNotification(event, emit),
          getInfoProduct: (event) => _getInfoProduct(event, emit),
          sortProducts: (event) => _sortProducts(event, emit),
          removeSelectAllFilters: (event) => _removeSelectAllFilters(event, emit),
          removeSelectFilterCategory: (event) => _removeSelectFilterCategory(event, emit),
          goBackProductInfo: (event) => _goBackProductInfo(event, emit),
          addProductToSoppingCart: (event) => _addProductToSoppingCart(event, emit),
          checkProductToSoppingCart: (event) => _checkProductToSoppingCart(event, emit),
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
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;

    String platformDevice = '';

    final deviceId = await _deviceInfoService.getDeviceId();
    const mc = MethodChannel('blind_chicken/getToken');
    final pushToken = await mc.invokeMethod('getDeviceToken');
    final savePackageInfoVersion = _sharedPreferencesService.getString(
          key: SharedPrefKeys.appVersion,
        ) ??
        '';

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (savePackageInfoVersion.isNotEmpty) {
      final packageInfoIOsVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      final savePackageInfoIOsVersion = int.parse(savePackageInfoVersion.replaceAll('.', ''));

      if (packageInfoIOsVersion > savePackageInfoIOsVersion) {
        await _pushNotificationRepository.postNotificationInfo(event: '5');
        log('Приложение обновлено');
      }
    }

    if (Platform.isAndroid) {
      platformDevice = 'Android';
    } else if (Platform.isIOS) {
      platformDevice = 'IOS';
    }

    _sharedPreferencesService.setString(
      key: SharedPrefKeys.deviceId,
      value: deviceId,
    );

    _sharedPreferencesService.setString(
      key: SharedPrefKeys.pushToken,
      value: pushToken,
    );

    _sharedPreferencesService.setString(
      key: SharedPrefKeys.platformDevice,
      value: platformDevice,
    );

    _sharedPreferencesService.setString(
      key: SharedPrefKeys.appVersion,
      value: packageInfo.version,
    );
    final isAppInstalled = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.appInstalled,
        ) ??
        false;
    if (!isAppInstalled) {
      _sharedPreferencesService.setBool(
        key: SharedPrefKeys.appInstalled,
        value: true,
      );

      await _pushNotificationRepository.postNotificationInfo(event: '1');
      log('Приложение установленно');
    }

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
        offset: 1,
        selectedGenderIndex: _updateDataService.selectedIndexGender,
        isAuth: isAuth,
        nowVersionApp: '',
        updateVersionApp: '',
        isUpdateVersionApp: false,
      ),
    );
  }

  Future<void> _preloadData(
    PreloadDataCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    emit(const CatalogState.load());
    List<ProductDataModel> favouritesProducts = [];
    String nowVersionApp = '';
    String updateVersionApp = '';
    bool isUpdateVersionApp = false;
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    List<int> favouritesProductsId = [];
    FavouritesDataModel? favourites;

    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    if (isAuth) {
      favourites = await _favouritesRepository.getFavouritesProdcuts();
      favouritesProductsId = favourites.favorites.map((item) => int.parse(item)).toList();
    } else {
      favouritesProducts = _catalogRepository.getFavouritesProducts();
      favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
    }
    final boutiques = await _boutiquesRepository.getBoutiques();
    final paymentsInfo = await _basketRepository.getPaymentMethods();

    _updateDataService.boutiques = boutiques.data;
    _updateDataService.payments = paymentsInfo.payments;

    final menu = await _catalogRepository.postMenuItems(
      a: 'get-main-menu',
      b: 0,
      id: _updateDataService.selectedIndexGender,
      u: '',
      pid: 0,
    );
    final appStoreInfoIOs = await _appStoreInfoRepository.checkiOSVersion();
    final appStoreInfoAndroid = await _appStoreInfoRepository.checkAndroidVersion();
    log(appStoreInfoAndroid.appStroreVersion);

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoIOs.appStroreVersion.isNotEmpty) {
      final appStoreIOsVersion = int.parse(appStoreInfoIOs.appStroreVersion.replaceAll('.', ''));
      final packageInfoIOsVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreIOsVersion > packageInfoIOsVersion &&
          _updateDataService.isOpenUpdateModalWindow) {
        nowVersionApp = packageInfo.version;
        updateVersionApp = appStoreInfoIOs.appStroreVersion;
        isUpdateVersionApp = true;
        _updateDataService.isOpenUpdateModalWindow = false;
      }
    }

    List<String> allBrands = [];

    allBrands = [
      ..._constatntsInfo.brandsWoman,
      ..._constatntsInfo.brandsMan,
      ..._constatntsInfo.brandsChilren,
    ];

    allBrands.sort();

    if (menu.errorMessage.isNotEmpty ||
        (favourites?.errorMessage.isNotEmpty ?? false) ||
        (boutiques.errorMessage?.isNotEmpty ?? false) ||
        (paymentsInfo.errorMessage?.isNotEmpty ?? false)) {
      emit(
        const CatalogState.error(
          errorMessage: MessageInfo.errorMessage,
        ),
      );
    } else {
      emit(
        CatalogState.preloadDataCompleted(
          filter: [],
          selectFilter: {},
          allSelectFilter: [],
          products: [],
          defaultProducts: [],
          favouritesProducts: favouritesProducts,
          menu: menu.items,
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
          offset: 1,
          selectedGenderIndex: _updateDataService.selectedIndexGender,
          isAuth: isAuth,
          nowVersionApp: nowVersionApp,
          updateVersionApp: updateVersionApp,
          isUpdateVersionApp: isUpdateVersionApp,
        ),
      );
    }
  }

  Future<void> _subCategory(
    SubCategoryatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
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

      _updateDataService.selectedIndexGender =
          event.selectedGenderIndex ?? initState.selectedGenderIndex;

      if (menu.errorMessage.isNotEmpty) {
        emit(
          CatalogState.error(
            errorMessage: menu.errorMessage,
          ),
        );
      } else {
        emit(initState.copyWith(
          menu: menu.items,
          pathMenu: pathMenu,
          selectedGenderIndex: event.selectedGenderIndex ?? initState.selectedGenderIndex,
        ));
      }
    });
  }

  Future<void> _selectFilter(
    SelectFilterCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      CatalogProductsRequest request = initState.request;
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
  }

  Future<void> _backPathMenu(
    BackPathMenuCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const CatalogState.load());

      List<MenuItemDataModel> pathMenu = initState.pathMenu.toList();

      pathMenu.remove(pathMenu.last);
      final menu = await _catalogRepository.postMenuItems(
        a: pathMenu.isNotEmpty ? 'get-child-menu' : 'get-main-menu',
        b: pathMenu.isNotEmpty ? pathMenu.last.brand : 0,
        id: pathMenu.isNotEmpty ? pathMenu.last.id : event.idParent,
        u: pathMenu.isNotEmpty ? pathMenu.last.url : '',
        pid: pathMenu.isNotEmpty ? pathMenu.last.idParent : 0,
      );

      emit(initState.copyWith(pathMenu: pathMenu, menu: menu.items));
    });
  }

  Future<void> _deleteFilter(
    DeleteFilterCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      Map<String, FilterCatalogDataModel> filtersInfo = {};
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
          offset: 1,
        ),
      );
    });
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogFilterEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter.toList();
      CatalogProductsRequest request = initState.request;
      List<ProductDataModel> listProducts = [];
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
      } else {
        listProducts = initState.defaultProducts;
      }

      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );

      request = request.copyWith(
        filters: filtersInfo.values.toList(),
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
          offset: 1,
        ),
      );
    });
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
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
  }

  Future<void> _deleteProductToFavouritesEvent(
    DeleteFavouriteProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
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
  }

  Future<void> _paginationProduct(
    PaginationProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      CatalogProductsRequest request = initState.request;
      List<FilterCatalogDataModel> filters = initState.request.filters?.toList() ?? [];
      List<ProductDataModel> products = initState.products.toList();

      filters.add(FilterCatalogDataModel(
        key: 'nav',
        value: 'page-${initState.offset + 1}',
      ));

      request = request.copyWith(filters: filters);

      final catalogInfo = await _catalogRepository.getCatalogProducts(
        request: request,
      );

      products = [...products, ...catalogInfo.products];

      emit(initState.copyWith(
        products: products,
        request: request,
        offset: initState.offset + 1,
      ));
    });
  }

  Future<void> _searchBrand(
    SearchBrandCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
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
          isUpdateVersionApp: false,
        ),
      );
    });
  }

  Future<void> _getInfoProducts(
    GetInfoProductsCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const CatalogState.load());

      CatalogProductsRequest request = CatalogProductsRequest(
        url: event.path,
        sort: 'n',
      );

      FavouritesDataModel? favourites;
      List<int> favouritesProductsId = [];
      List<ProductDataModel> favouritesProducts = [];
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        favourites = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = favourites.favorites.map((item) => int.parse(item)).toList();
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
        isUpdateVersionApp: false,
        isError:
            (favourites?.errorMessage.isNotEmpty ?? false) || catalogInfo.errorMessage.isNotEmpty,
        errorMessage: MessageInfo.errorMessage,
      ));
    });
  }

  Future<void> _getInfoProductsPushNotification(
    GetInfoProductsPushNotificationCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    emit(const CatalogState.load());

    CatalogProductsRequest request = CatalogProductsRequest(
      url: event.path,
      sort: event.sort,
    );

    FavouritesDataModel? favourites;
    List<int> favouritesProductsId = [];
    List<ProductDataModel> favouritesProducts = [];
    bool isAuth = _sharedPreferencesService.getBool(
          key: SharedPrefKeys.userAuthorized,
        ) ??
        false;
    if (isAuth) {
      favourites = await _favouritesRepository.getFavouritesProdcuts();
      favouritesProductsId = favourites.favorites.map((item) => int.parse(item)).toList();
    } else {
      favouritesProducts = _catalogRepository.getFavouritesProducts();
      favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
    }

    final catalogInfo = await _catalogRepository.getCatalogProducts(
      request: request,
    );

    emit(
      CatalogState.preloadDataCompleted(
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
        isUpdateVersionApp: false,
        isError:
            (favourites?.errorMessage.isNotEmpty ?? false) || catalogInfo.errorMessage.isNotEmpty,
        errorMessage: MessageInfo.errorMessage,
        allBrands: [],
        defaultBrands: [],
        brands: [],
        menu: [],
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        favouritesProducts: [],
        pathMenu: [],
        category: [],
        selectedGenderIndex: _updateDataService.selectedIndexGender,
        isAuth: isAuth,
        offset: 0,
        nowVersionApp: '',
        updateVersionApp: '',
      ),
    );
  }

  Future<void> _getInfoProduct(
    GetInfoProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      bool isError = false;
      String errorMessage = '';
      emit(const CatalogState.load());

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

      if (detailsProduct.errorMessage.isNotEmpty || basketInfo.errorMessage.isNotEmpty) {
        isError = true;
        errorMessage = MessageInfo.errorMessage;
      }

      emit(initState.copyWith(
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProductsCode: listProductsCode,
        isAuth: isAuth,
        isSoppingCart: soppingCart.isNotEmpty,
        isError: isError,
        errorMessage: errorMessage,
      ));
    });
  }

  Future<void> _sortProducts(
    SortProductsCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
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
      List<FilterCatalogDataModel> filters = initState.request.filters?.toList() ?? [];
      filters.add(FilterCatalogDataModel(key: 'nav', value: 'page-1'));
      request = request.copyWith(
        sort: sort,
        filters: filters,
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
  }

  Future<void> _removeSelectFilterCategory(
    RemoveSelectFilterCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      CatalogProductsRequest request = initState.request;
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter.toList();
      List<FilterItemDataModel> filters = selectFilter[event.index]?.toList() ?? [];
      Map<String, FilterCatalogDataModel> filtersInfo = {};
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
      } else {
        listProducts = initState.defaultProducts;
      }
      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );

      request = request.copyWith(
        filters: filtersInfo.values.toList(),
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
  }

  Future<void> _removeSelectAllFilters(
    RemoveSelectAllFiltersCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      CatalogProductsRequest request = initState.request;
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
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
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
    AddProductToSoppingCartCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        isSoppingCart: true,
      ));
    });
  }

  Future<void> _checkProductToSoppingCart(
    CheckProductToSoppingCartCatalogEvent event,
    Emitter<CatalogState> emit,
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
}
