import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:appmetrica_push_plugin/appmetrica_push_plugin.dart';
import 'package:decimal/decimal.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:get_it/get_it.dart';
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
  final StoreVersionAppRepository _storeVersionAppRepository;
  final PushNotificationRepository _pushNotificationRepository;
  final AppMetricaEcommerceService _appMetricaEcommerceService;
  final ContentRepository _contentRepository;
  final CacheInfoService _cacheInfoService;
  final FilterService _filterService;

  CatalogBloc(
    this._catalogRepository,
    this._sharedPreferencesService,
    this._favouritesRepository,
    this._constatntsInfo,
    this._updateDataService,
    this._boutiquesRepository,
    this._basketRepository,
    this._storeVersionAppRepository,
    this._pushNotificationRepository,
    this._appMetricaEcommerceService,
    this._contentRepository,
    this._cacheInfoService,
    this._filterService,
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
          updateInfoProducts: (event) => _updateInfoProducts(event, emit),
          getInfoProductsPushNotification: (event) => _getInfoProductsPushNotification(event, emit),
          getInfoProduct: (event) => _getInfoProduct(event, emit),
          getInfoProductSize: (event) => _getInfoProductSize(event, emit),
          sortProducts: (event) => _sortProducts(event, emit),
          removeSelectAllFilters: (event) => _removeSelectAllFilters(event, emit),
          removeSelectFilterCategory: (event) => _removeSelectFilterCategory(event, emit),
          goBackProductInfo: (event) => _goBackProductInfo(event, emit),
          goBackCatalogInfo: (event) => _goBackCatalogInfo(event, emit),
          addProductToSoppingCart: (event) => _addProductToSoppingCart(event, emit),
          checkProductToSoppingCart: (event) => _checkProductToSoppingCart(event, emit),
          getInfoServiceCard: (event) => _getInfoServiceCard(event, emit),
          changeSizeProduct: (event) => _changeSizeProduct(event, emit),
          checkOpenGetInfoProductSize: (event) => _checkOpenGetInfoProductSize(event, emit),
          checkButtonTop: (event) => _checkButtonTop(event, emit),
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
    String platformDevice = '';
    // bool isHomeScreenUpdate = false;
    String pushToken = _sharedPreferencesService.getString(
          key: SharedPrefKeys.pushToken,
        ) ??
        '';

    // final dateLastChangesCachedInformation = _sharedPreferencesService.getString(
    //       key: SharedPrefKeys.dateLastChangesCachedInformation,
    //     ) ??
    //     '';

    // final checkContent = await _contentRepository.checkContentInfo(
    //   dateTime: dateLastChangesCachedInformation,
    // );

    // _sharedPreferencesService.setString(
    //   key: SharedPrefKeys.dateLastChangesCachedInformation,
    //   value: checkContent.dateTime,
    // );

    // _sharedPreferencesService.setString(
    //   key: SharedPrefKeys.cacheChangeScreens,
    //   value: checkContent.screens.toString(),
    // );

    // final cacheChangeScreens = _sharedPreferencesService.getString(
    //       key: SharedPrefKeys.cacheChangeScreens,
    //     ) ??
    //     '';

    // final screensCacheChange = jsonDecode(cacheChangeScreens) as List<String>;

    // for (int i = 0; i < screensCacheChange.length; i++) {
    //   if (screensCacheChange[i] == 'home') {
    //     isHomeScreenUpdate = true;
    //   }
    // }

    // if (isHomeScreenUpdate) {
    // final contentInfo = await _contentRepository.getContentInfo(
    //   screen: 'home',
    // );

    // contentInfo;

    // _cacheInfoService.addCacheInfo(
    //   CacheInfoDataModel(
    //     screen: 'home',
    //     dateTime: contentInfo.dateTime,
    //     content: contentInfo.content,
    //     images: contentInfo.images,
    //     info: List<CacheInfoItemDataModel>.from(
    //       contentInfo.info.map(
    //         (item) => CacheInfoItemDataModel(
    //           id: item.id,
    //           title: item.title,
    //           mobileImage: item.mobileImage,
    //           tabletImage: item.tabletImage,
    //           url: item.url,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    // }

    if (Platform.isIOS && pushToken.isEmpty) {
      await Future<void>.delayed(
        const Duration(
          seconds: 3,
        ),
      );
      final tokens = await AppMetricaPush.getTokens();
      pushToken = tokens['apns'] ?? '';

      _sharedPreferencesService.setString(
        key: SharedPrefKeys.pushToken,
        value: pushToken,
      );
      AppMetricaStringAttribute.withValue('pushToken', pushToken);
      log('push token app bloc: $pushToken');
    }

    if (Platform.isAndroid && pushToken.isEmpty) {
      await Future<void>.delayed(
        const Duration(
          seconds: 3,
        ),
      );

      // pushToken = await FirebaseMessaging.instance.getToken() ?? '';

      _sharedPreferencesService.setString(
        key: SharedPrefKeys.pushToken,
        value: pushToken,
      );
      AppMetricaStringAttribute.withValue('pushToken', pushToken);
      log('push token app bloc: $pushToken');
    }

    final savePackageInfoVersion = _sharedPreferencesService.getString(
          key: SharedPrefKeys.appVersion,
        ) ??
        '';

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (savePackageInfoVersion.isNotEmpty) {
      final packageInfoIOsVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      final savePackageInfoIOsVersion = int.parse(savePackageInfoVersion.replaceAll('.', ''));

      if (packageInfoIOsVersion > savePackageInfoIOsVersion) {
        _sharedPreferencesService.setString(
          key: SharedPrefKeys.appVersion,
          value: packageInfo.version,
        );
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

      AppMetrica.reportEvent('Приложение установленно');
      log('Приложение установленно');
    }
  }

  Future<void> _preloadData(
    PreloadDataCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    if (state is ErrorCatalogState) {
      emit(const CatalogState.loadErrorButton());
    } else {
      if (state is LoadingCatalogState) {
        emit(const CatalogState.init());
        emit(const CatalogState.load());
      } else {
        emit(const CatalogState.load());
      }
    }

    AppMetrica.reportEvent('Главная страница');
    List<ProductDataModel> favouritesProducts = [];
    String nowVersionApp = '';
    String updateVersionApp = '';
    bool isUpdateVersionApp = false;
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    List<int> favouritesProductsId = [];
    FavouritesDataModel? favourites;
    FilterNotifcationDataModel? filterNotifcation;
    PushNotificationMessageDataModel? notitcationMessage;
    String appStoreInfoVersion = '';
    String type = '';
    String section = '';
    String idMessage = '';
    String sort = '';
    String uid = '';
    String codeProduct = '';
    String idNews = '';

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
    final paymentsInfo = await _basketRepository.getPaymentMethods(bnpl: 1);

    _updateDataService.boutiques = boutiques.data;
    _updateDataService.payments = paymentsInfo.payments;

    String dateReceiptNewNews = _sharedPreferencesService.getString(
          key: SharedPrefKeys.dateReceiptNewNews,
        ) ??
        '';

    if (dateReceiptNewNews.isEmpty) {
      _sharedPreferencesService.setString(
        key: SharedPrefKeys.dateReceiptNewNews,
        value: DateTime.now().toString(),
      );
    }

    final menu = await _catalogRepository.postMenuItems(
      a: 'get-main-menu',
      b: 0,
      id: _updateDataService.selectedIndexGender,
      u: '',
      pid: 0,
    );

    final countProductUrl = await _catalogRepository.getCountProductUrl(url: '/sale/');
    final result = await _storeVersionAppRepository.getStoreVersion();
    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoVersion.isNotEmpty) {
      final appStoreVersion = int.parse((appStoreInfoVersion).replaceAll('.', ''));
      final packageInfoVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreVersion > packageInfoVersion) {
        nowVersionApp = packageInfo.version;
        updateVersionApp = appStoreInfoVersion;
        isUpdateVersionApp = true;
      }
    }

    List<String> allBrands = [];

    allBrands = [
      ..._constatntsInfo.brandsWoman,
      ..._constatntsInfo.brandsMan,
      ..._constatntsInfo.brandsChilren,
    ];

    allBrands.sort();

    if (Platform.isIOS) {
      const platform = MethodChannel('blind_chicken/getMessages');
      const platformAppMetrica = MethodChannel('blind_chicken/getMessagesAppMetrica');
      final appMetrica = await platformAppMetrica.invokeMethod('appMetrica') as String;
      if (appMetrica.isNotEmpty) {
        final info = jsonDecode(appMetrica) as Map;
        type = info['type'] as String;
        section = info['section'] as String;
        idMessage = info['id_message'] as String;
        sort = info['sort'] as String;
        uid = info['uid'] as String;
        codeProduct = info['code_product'] as String;
        idNews = info['id_news'] as String;
      } else {
        type = await platform.invokeMethod('type') as String;
        if (type.isNotEmpty) {
          section = await platform.invokeMethod('section') as String;
          idMessage = await platform.invokeMethod('idMessage') as String;
          sort = await platform.invokeMethod('sort') as String;
          uid = await platform.invokeMethod('uid') as String;
          codeProduct = await platform.invokeMethod('codeProduct') as String;
          idNews = await platform.invokeMethod('idNews') as String;
        }
      }
    } else {
      const platform = MethodChannel('appmetrica.push.notification');
      final message = (await platform.invokeMethod('message') ?? '') as String;
      if (message.isNotEmpty) {
        final info = jsonDecode(message) as Map;
        type = info['type'] as String;
        section = info['section'] as String;
        idMessage = info['id_message'] as String;
        sort = info['sort'] as String;
        uid = info['uid'] as String;
        codeProduct = info['code_product'] as String;
        idNews = info['id_news'] as String;
      }
    }

    if (type.isNotEmpty) {
      if (section.isNotEmpty) {
        filterNotifcation = _filterService.converterNotificationInfo(value: section);
      }
      notitcationMessage = PushNotificationMessageDataModel(
        section: filterNotifcation?.url ?? '',
        idMessage: idMessage,
        type: type,
        sort: sort,
        uid: uid,
        filterNotifcation: filterNotifcation ??
            FilterNotifcationDataModel(
              url: '',
              filter: [],
              fullFilter: [],
            ),
        codeProduct: codeProduct,
        idNews: idNews,
      );
    }

    if (Platform.isAndroid) {
      // final message = await FirebaseMessaging.instance.getInitialMessage();
      // if (message?.data.isNotEmpty ?? false) {
      //   final filterNotifcation =
      //       _filterService.converterNotificationInfo(value: message?.data['section'] ?? '');
      //   notitcationMessage = PushNotificationMessageDataModel(
      //     uid: message?.data['uid'] ?? '',
      //     section: filterNotifcation.url,
      //     idMessage: message?.data['id_message'] ?? '',
      //     type: message?.data['type'] ?? '',
      //     sort: message?.data['sort'] ?? '',
      //     filterNotifcation: filterNotifcation,
      //     codeProduct: message?.data['code_product'] ?? '',
      //     idNews: message?.data['id_news'] ?? '',
      //   );
      // }
    }

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
          listProdcutsComplect: [],
          listProdcutsStyle: [],
          listProductsCode: [],
          offset: 1,
          selectedGenderIndex: _updateDataService.selectedIndexGender,
          isAuth: isAuth,
          nowVersionApp: nowVersionApp,
          updateVersionApp: updateVersionApp,
          isUpdateVersionApp: isUpdateVersionApp,
          isNotification: false,
          notificationMessage: notitcationMessage,
          listSize: [],
          isLoadGetSizeProduct: false,
          codeProduct: null,
          listCatalogPath: [],
          userDiscount: 0,
          isOpenGetSizeProduct: false,
          isButtonTop: false,
          isPromotionsForPurchases: false,
          isSaleSectionVisible: countProductUrl.count > 0,
        ),
      );
    }
  }

  Future<void> _subCategory(
    SubCategoryatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    if (state is LoadingCatalogState) {
      add(const PreloadDataCatalogEvent());
    }
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(
          initState.copyWith(
            isLoadErrorButton: true,
          ),
        );
      } else {
        emit(const CatalogState.load());
      }

      final menu = await _catalogRepository.postMenuItems(
        a: event.a,
        b: event.b,
        id: event.id,
        u: event.u,
        pid: event.pid,
      );

      List<MenuItemDataModel> pathMenu = initState.pathMenu.toList();

      MenuItemDataModel? item = event.item;

      if (menu.errorMessage.isEmpty) {
        if (item != null) {
          pathMenu.add(item);
        } else {
          pathMenu = [];
        }
      }

      _updateDataService.selectedIndexGender =
          event.selectedGenderIndex ?? initState.selectedGenderIndex;

      emit(initState.copyWith(
        isError: menu.errorMessage.isNotEmpty,
        errorMessage: MessageInfo.errorMessage,
        typeError: 'подраздел в меню',
        itemMenu: event.item,
        menu: menu.errorMessage.isNotEmpty ? initState.menu : menu.items,
        pathMenu: menu.errorMessage.isNotEmpty ? initState.pathMenu : pathMenu,
        selectedGenderIndex: event.selectedGenderIndex ?? initState.selectedGenderIndex,
        isNotification: false,
        isUpdateVersionApp: false,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _selectFilter(
    SelectFilterCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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

      if (catalogInfo.errorMessage.isEmpty) {
        emit(const CatalogState.load());
      } else {
        selectItem.remove(event.item);
      }

      emit(initState.copyWith(
        selectFilter: catalogInfo.errorMessage.isNotEmpty ? initState.selectFilter : selectFilter,
        filter: catalogInfo.errorMessage.isNotEmpty ? initState.filter : catalogInfo.filter,
        allSelectFilter:
            catalogInfo.errorMessage.isNotEmpty ? initState.allSelectFilter : allSelectFilter,
        products: catalogInfo.errorMessage.isNotEmpty ? initState.products : catalogInfo.products,
        catalogInfo: catalogInfo.errorMessage.isNotEmpty ? initState.catalogInfo : catalogInfo,
        isError: catalogInfo.errorMessage.isNotEmpty,
        typeError: 'выбрать фильтр',
        errorMessage: MessageInfo.errorMessage,
        indexFileter: event.index,
        indexItemFileter: event.indexItem,
        itemFileter: event.item,
        request: request,
        offset: 1,
        isNotification: false,
        isUpdateVersionApp: false,
        isLoadErrorButton: false,
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

      emit(initState.copyWith(
        pathMenu: pathMenu,
        menu: menu.items,
        isNotification: false,
        isUpdateVersionApp: false,
      ));
    });
  }

  Future<void> _deleteFilter(
    DeleteFilterCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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
      if (catalogInfo.errorMessage.isEmpty) {
        emit(const CatalogState.load());
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
          filter: catalogInfo.errorMessage.isNotEmpty ? initState.filter : catalogInfo.filter,
          request: catalogInfo.errorMessage.isNotEmpty ? initState.request : request,
          selectFilter: catalogInfo.errorMessage.isNotEmpty ? initState.selectFilter : selectFilter,
          products: catalogInfo.errorMessage.isNotEmpty ? initState.products : catalogInfo.products,
          catalogInfo: catalogInfo.errorMessage.isNotEmpty ? initState.catalogInfo : catalogInfo,
          isError: catalogInfo.errorMessage.isNotEmpty,
          typeError: 'удалить фильтр',
          errorMessage: MessageInfo.errorMessage,
          indexFileter: event.index,
          indexItemFileter: event.indexItem,
          itemFileter: event.item,
          allSelectFilter:
              catalogInfo.errorMessage.isNotEmpty ? initState.allSelectFilter : allSelectFilter,
          offset: 1,
          isNotification: false,
          isUpdateVersionApp: false,
          isLoadErrorButton: false,
        ),
      );
    });
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogFilterEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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
      if (catalogInfo.errorMessage.isEmpty) {
        emit(const CatalogState.load());
      }

      emit(
        initState.copyWith(
          filter: catalogInfo.errorMessage.isNotEmpty ? initState.filter : catalogInfo.filter,
          request: catalogInfo.errorMessage.isNotEmpty ? initState.request : request,
          selectFilter: catalogInfo.errorMessage.isNotEmpty ? initState.selectFilter : selectFilter,
          products: catalogInfo.errorMessage.isNotEmpty ? initState.products : listProducts,
          catalogInfo: catalogInfo.errorMessage.isNotEmpty ? initState.catalogInfo : catalogInfo,
          allSelectFilter:
              catalogInfo.errorMessage.isNotEmpty ? initState.allSelectFilter : allSelectFilter,
          isError: catalogInfo.errorMessage.isNotEmpty,
          errorMessage: MessageInfo.errorMessage,
          offset: 1,
          keyFilterCatalog: event.key,
          itemFileter: event.item,
          indexFileter: event.index,
          isNotification: false,
          isUpdateVersionApp: false,
          isLoadErrorButton: false,
          typeError: 'удалить фильтр из каталога',
        ),
      );
    });
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      List<ProductDataModel> favouritesProducts = [];
      List<int> favouritesProductsId = [];
      FavouritesInfoDataModel? addFavouriteProdcut;
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        addFavouriteProdcut =
            await _favouritesRepository.addFavouriteProdcut(code: event.product.id.toString());
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        log(result.toString());
        if (addFavouriteProdcut.errorMessage.isEmpty) {
          emit(const CatalogState.load());
        }
      } else {
        _catalogRepository.addFavouritesProduct(event.product);
        favouritesProducts = _catalogRepository.getFavouritesProducts();
        favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
        emit(const CatalogState.load());
      }

      emit(initState.copyWith(
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
        isError: addFavouriteProdcut?.errorMessage.isNotEmpty ?? false,
        typeError: 'добавить товар в избранное',
        errorMessage: MessageInfo.errorMessage,
        favouriteProduct: event.product,
        indexProduct: event.index,
        isNotification: false,
        isUpdateVersionApp: false,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _deleteProductToFavouritesEvent(
    DeleteFavouriteProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
      List<ProductDataModel> favouritesProducts = [];
      List<int> favouritesProductsId = [];
      FavouritesInfoDataModel? deleteFavouriteProdcut;
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      if (isAuth) {
        deleteFavouriteProdcut =
            await _favouritesRepository.deleteFavouriteProdcut(code: event.index.toString());
        final result = await _favouritesRepository.getFavouritesProdcuts();
        favouritesProductsId = result.favorites.map((item) => int.parse(item)).toList();
        log(result.toString());
        if (deleteFavouriteProdcut.errorMessage.isEmpty) {
          emit(const CatalogState.load());
        }
      } else {
        _catalogRepository.deleteFavouritesProduct(event.index);
        favouritesProducts = _catalogRepository.getFavouritesProducts();
        favouritesProductsId = favouritesProducts.map((item) => item.id).toList();
        emit(const CatalogState.load());
      }

      emit(initState.copyWith(
        favouritesProducts: favouritesProducts,
        favouritesProductsId: favouritesProductsId,
        isError: deleteFavouriteProdcut?.errorMessage.isNotEmpty ?? false,
        typeError: 'удалить товар из избранного',
        errorMessage: MessageInfo.errorMessage,
        indexProduct: event.index,
        isNotification: false,
        isUpdateVersionApp: false,
        isLoadErrorButton: false,
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
      int offset = 0;
      CatalogDataModel? catalogInfo;

      filters.add(FilterCatalogDataModel(
        key: 'nav',
        value: 'page-${initState.offset + 1}',
      ));

      request = request.copyWith(filters: filters);

      if (initState.offset != int.parse(filters.last.value.replaceAll('page-', '')) &&
          offset != initState.offset) {
        offset = initState.offset;
        catalogInfo = await _catalogRepository.getCatalogProducts(
          request: request,
        );
      }

      products = [...products, ...catalogInfo?.products ?? []];

      emit(initState.copyWith(
        products: products,
        request: request,
        offset: initState.offset + 1,
        isNotification: false,
        isUpdateVersionApp: false,
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

      emit(initState.copyWith(
        brands: brands,
        isNotification: false,
        isUpdateVersionApp: false,
      ));
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
        isNotification: false,
        isUpdateVersionApp: false,
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
        isNotification: false,
        isUpdateVersionApp: false,
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
        isNotification: false,
        isUpdateVersionApp: false,
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
        case 1:
          category = _constatntsInfo.categoryWoman.toList();
          brands = _constatntsInfo.brandsWoman;
          _updateDataService.selectedIndexGender = 1;
          name = 'Женщинам';
        case 2:
          category = _constatntsInfo.categoryMan.toList();
          brands = _constatntsInfo.brandsMan;
          _updateDataService.selectedIndexGender = 2;
          name = 'Мужчинам';
        case 3:
          category = _constatntsInfo.categoryChild.toList();
          brands = _constatntsInfo.brandsChilren;
          _updateDataService.selectedIndexGender = 3;
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
          bold: 0,
        )
      ];

      if (!initState.isSaleSectionVisible) {
        category.removeLast();
        category.add(const MainCategoryModel(
          title: 'Каталог брендов',
          imagePath: 'brands',
          pathMenu: '',
        ));
      }

      emit(
        initState.copyWith(
          category: category,
          pathMenu: pathMenu,
          defaultBrands: brands,
          brands: brands,
          isNotification: false,
          isUpdateVersionApp: false,
        ),
      );
    });
  }

  Future<void> _getInfoProducts(
    GetInfoProductsCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    if (state is LoadingCatalogState) {
      add(const PreloadDataCatalogEvent());
    }
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const CatalogState.load());
      }

      List<String> listCatalogPath = initState.listCatalogPath.toList();

      AppMetrica.reportEvent('Каталог ${event.path}');

      CatalogProductsRequest request = CatalogProductsRequest(
        url: event.path,
        sort: 'n',
      );

      if (event.isCleanHistory ?? false) {
        listCatalogPath.clear();
        listCatalogPath.add(event.path);
      } else {
        listCatalogPath.add(event.path);
      }

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

      _appMetricaEcommerceService.openPages(titleScreen: catalogInfo.h1);

      emit(initState.copyWith(
        isAuth: isAuth,
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
        listCatalogPath: listCatalogPath,
        isNotification: false,
        isUpdateVersionApp: false,
        isError:
            (favourites?.errorMessage.isNotEmpty ?? false) || catalogInfo.errorMessage.isNotEmpty,
        typeError: 'каталог',
        errorMessage: MessageInfo.errorMessage,
        codeProduct: null,
        userDiscount: catalogInfo.userDiscount,
        offset: 1,
        isButtonTop: false,
        isLoadErrorButton: false,
        isPromotionsForPurchases: catalogInfo.discountFirstMobile == 1,
      ));
    });
  }

  Future<void> _getInfoProductsPushNotification(
    GetInfoProductsPushNotificationCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    if (event.isError ?? false) {
      emit(const CatalogState.loadErrorButton());
    } else {
      emit(const CatalogState.load());
    }

    AppMetrica.reportEvent('Каталог ${event.path} из push-уведомления');
    List<FilterItemDataModel> selectItems = [];
    Map<int, List<FilterItemDataModel>> selectFilter = {};
    List<Map<int, FilterItemDataModel>> allSelectFilter = [];
    Map<String, FilterCatalogDataModel> filtersInfo = {};
    String appStoreInfoVersion = '';

    if (event.filterNotifcation.filter.isNotEmpty) {
      for (int i = 0; i < event.filterNotifcation.fullFilter.length; i++) {
        selectItems.add(
          FilterItemDataModel(
            id: int.parse(event.filterNotifcation.fullFilter[i].value),
            value: '',
            typeFilter: event.filterNotifcation.fullFilter[i].typeFilter,
          ),
        );
      }

      for (int j = 0; j < selectItems.length; j++) {
        if (filtersInfo.containsKey(selectItems[j].typeFilter)) {
          filtersInfo.update(
            selectItems[j].typeFilter,
            (item) => FilterCatalogDataModel(
              key: selectItems[j].typeFilter,
              value: '${item.value};${selectItems[j].id}',
            ),
          );
        } else {
          filtersInfo[selectItems[j].typeFilter] = FilterCatalogDataModel(
            key: selectItems[j].typeFilter,
            value: '${selectItems[j].id}',
          );
        }
      }

      filtersInfo['nav'] = FilterCatalogDataModel(
        key: 'nav',
        value: 'page-1',
      );
    }

    CatalogProductsRequest request = CatalogProductsRequest(
      url: event.path,
      sort: event.sort,
      filters: filtersInfo.values.toList(),
    );

    log(event.filterNotifcation.toString());

    FavouritesDataModel? favourites;
    List<int> favouritesProductsId = [];
    List<ProductDataModel> favouritesProducts = [];
    String nowVersionApp = '';
    String updateVersionApp = '';
    bool isUpdateVersionApp = false;

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
      messageId: event.messageId,
    );

    final result = await _storeVersionAppRepository.getStoreVersion();
    if (Platform.isIOS) {
      appStoreInfoVersion = result.version.ios;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    if (appStoreInfoVersion.isNotEmpty) {
      final appStoreVersion = int.parse((appStoreInfoVersion).replaceAll('.', ''));
      final packageInfoVersion = int.parse(packageInfo.version.replaceAll('.', ''));
      if (appStoreVersion > packageInfoVersion) {
        nowVersionApp = packageInfo.version;
        updateVersionApp = appStoreInfoVersion;
        isUpdateVersionApp = true;
      }
    }

    if (event.filterNotifcation.filter.isNotEmpty) {
      for (int j = 0; j < selectItems.length; j++) {
        final index = catalogInfo.filter.indexWhere(
          (element) {
            if (element.typeFilter.contains('ct_')) {
              return element.typeFilter.contains(selectItems[j].typeFilter) &&
                  element.items.where((item) => item.id == selectItems[j].id).isNotEmpty;
            } else {
              return element.typeFilter == selectItems[j].typeFilter;
            }
          },
        );
        List<FilterItemDataModel> filters = [];
        for (int k = 0; k < catalogInfo.filter.length; k++) {
          for (int m = 0; m < catalogInfo.filter[k].items.length; m++) {
            if (catalogInfo.filter[k].typeFilter.contains('ct_')) {
              if (catalogInfo.filter[k].typeFilter.contains(selectItems[j].typeFilter) &&
                  catalogInfo.filter[k].items[m].id == selectItems[j].id) {
                filters.add(catalogInfo.filter[k].items[m]);
              }
            } else {
              if (catalogInfo.filter[k].typeFilter == selectItems[j].typeFilter &&
                  catalogInfo.filter[k].items[m].id == selectItems[j].id) {
                filters.add(catalogInfo.filter[k].items[m]);
              }
            }
          }
        }

        selectItems[j] = selectItems[j].copyWith(
          typeFilter: filters.isNotEmpty ? filters.first.typeFilter : '',
          value: filters.isNotEmpty ? filters.first.value : '',
        );

        if (filters.isNotEmpty) {
          allSelectFilter.add({
            index: selectItems[j].copyWith(
              typeFilter: filters.isNotEmpty ? filters.first.typeFilter : '',
              value: filters.isNotEmpty ? filters.first.value : '',
            )
          });
        }

        if (selectFilter.containsKey(index)) {
          List<FilterItemDataModel> listItems = selectFilter[index]?.toList() ?? [];

          listItems.add(selectItems[j]);

          selectFilter[index] = listItems;
        } else {
          selectFilter[index] = [selectItems[j]];
        }
      }
    }

    List<MenuItemDataModel> pathMenu = [
      MenuItemDataModel(
        idParent: 0,
        id: 0,
        url: '',
        name: catalogInfo.breadcrumbs.isNotEmpty ? catalogInfo.breadcrumbs.first.name : '',
        sub: 0,
        title: 0,
        brand: 0,
        bold: 0,
      )
    ];

    emit(
      CatalogState.preloadDataCompleted(
        filter: catalogInfo.filter,
        request: request,
        catalogInfo: catalogInfo,
        products: catalogInfo.products,
        defaultProducts: catalogInfo.products,
        title: catalogInfo.h1,
        favouritesProductsId: favouritesProductsId,
        selectFilter: selectFilter,
        allSelectFilter: allSelectFilter,
        listProductsCode: [],
        isUpdateVersionApp: isUpdateVersionApp,
        isError:
            (favourites?.errorMessage.isNotEmpty ?? false) || catalogInfo.errorMessage.isNotEmpty,
        typeError: 'каталог из уведомления',
        errorMessage: MessageInfo.errorMessage,
        allBrands: [],
        defaultBrands: [],
        brands: [],
        menu: [],
        listProdcutsStyle: [],
        listProdcutsAlso: [],
        listProdcutsBrand: [],
        listProdcutsComplect: [],
        favouritesProducts: [],
        pathMenu: pathMenu,
        category: [],
        selectedGenderIndex: _updateDataService.selectedIndexGender,
        isAuth: isAuth,
        offset: 1,
        nowVersionApp: nowVersionApp,
        updateVersionApp: updateVersionApp,
        isNotification: true,
        selectSizeProduct: null,
        listSize: [],
        isLoadGetSizeProduct: false,
        listCatalogPath: [event.path],
        userDiscount: catalogInfo.userDiscount,
        isOpenGetSizeProduct: false,
        isButtonTop: false,
        isPromotionsForPurchases: false,
        isSaleSectionVisible: false,
      ),
    );
  }

  Future<void> _getInfoProduct(
    GetInfoProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      SkuProductDataModel? selectSizeProduct;
      AppMetrica.reportEvent(event.titleScreen);
      List<String> listProductsCode = initState.listProductsCode.toList();
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;
      bool isError = false;
      bool isShoppingCartDetailsProduct = false;
      String errorMessage = '';
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      } else {
        emit(const CatalogState.load());
      }

      final basketInfo = await getBasketInfo(isLocal: !isAuth);

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: event.code,
        genderIndex: _updateDataService.selectedIndexGender.toString(),
        messageId: event.messageId,
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
        titleScreen: event.messageId?.isNotEmpty ?? false ? 'Уведомление' : event.titleScreen,
        titleProduct: detailsProduct.name,
        codeProduct: detailsProduct.code.toString(),
        type: event.messageId?.isNotEmpty ?? false
            ? 'Уведомление'
            : event.typeAddProductToShoppingCart,
        identifier:
            event.messageId?.isNotEmpty ?? false ? '2' : event.identifierAddProductToShoppingCart,
        sectionCategoriesPath: [initState.catalogInfo?.h1 ?? ''],
        productCategoriesPath: initState.catalogInfo?.breadcrumbs
                .map(
                  (item) => item.name,
                )
                .toList() ??
            [],
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
        codeProduct: event.code,
        detailsProduct: detailsProduct,
        listProdcutsStyle: additionalProductsDescriptionStyle.products,
        listProdcutsAlso: additionalProductsDescriptionAlso.products,
        listProdcutsBrand: additionalProductsDescriptionBrand.products,
        listProdcutsComplect: additionalProductsDescriptionComplect.products,
        listProductsCode: listProductsCode,
        isAuth: isAuth,
        isShoppingCart: soppingCart.isNotEmpty,
        isError: isError,
        typeError: 'информация о товаре',
        errorMessage: errorMessage,
        isNotification: false,
        isUpdateVersionApp: false,
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
        selectSizeProduct: selectSizeProduct ?? event.size,
      ));
    });
  }

  Future<void> _getInfoServiceCard(
    GetInfoServiceCardCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      bool isAuth = _sharedPreferencesService.getBool(
            key: SharedPrefKeys.userAuthorized,
          ) ??
          false;

      _appMetricaEcommerceService.openPages(titleScreen: 'Сервисная карта');

      final basketInfo = await getBasketInfo(isLocal: !isAuth);

      List<BasketFullInfoItemDataModel> soppingCart = [];

      soppingCart = basketInfo.basket
          .where(
            (element) => element.code.contains(event.code),
          )
          .toList();

      emit(initState.copyWith(
        codeProduct: event.code,
        isAuth: isAuth,
        isShoppingCart: soppingCart.isNotEmpty,
        isNotification: false,
        isUpdateVersionApp: false,
      ));
    });
  }

  Future<void> _getInfoProductSize(
    GetInfoProductSizeCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
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
            emit(CatalogState.getSizeProduct(
              code: event.code,
              listSize: detailsProduct.sku,
              listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
              titleScreen: event.titleScreen,
              sectionCategoriesPath: [initState.catalogInfo?.h1 ?? ''],
              productCategoriesPath: initState.catalogInfo?.breadcrumbs
                      .map(
                        (item) => item.name,
                      )
                      .toList() ??
                  [],
            ));
          } else {
            if (event.isShop) {
              emit(const CatalogState.openSoppingCart());
            } else {
              emit(CatalogState.addProductToSoppingCart(
                code: event.code,
                titleScreen: event.titleScreen,
                sectionCategoriesPath: [initState.catalogInfo?.h1 ?? ''],
                productCategoriesPath: initState.catalogInfo?.breadcrumbs
                        .map(
                          (item) => item.name,
                        )
                        .toList() ??
                    [],
              ));
            }
          }
        } else {
          if (event.isShop) {
            emit(const CatalogState.openSoppingCart());
          } else {
            emit(CatalogState.addProductToSoppingCart(
              code: event.code,
              titleScreen: event.titleScreen,
              sectionCategoriesPath: [initState.catalogInfo?.h1 ?? ''],
              productCategoriesPath: initState.catalogInfo?.breadcrumbs
                      .map(
                        (item) => item.name,
                      )
                      .toList() ??
                  [],
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

  Future<void> _sortProducts(
    SortProductsCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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
        request: catalogInfo.errorMessage.isNotEmpty ? initState.request : request,
        products: catalogInfo.errorMessage.isNotEmpty ? initState.products : catalogInfo.products,
        catalogInfo: catalogInfo.errorMessage.isNotEmpty ? initState.catalogInfo : catalogInfo,
        isError: catalogInfo.errorMessage.isNotEmpty,
        typeError: 'сортировка',
        errorMessage: MessageInfo.errorMessage,
        sortInfo: event.value,
        offset: 1,
        isNotification: false,
        isUpdateVersionApp: false,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _removeSelectFilterCategory(
    RemoveSelectFilterCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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
        selectFilter: catalogInfo.errorMessage.isNotEmpty ? initState.selectFilter : selectFilter,
        allSelectFilter:
            catalogInfo.errorMessage.isNotEmpty ? initState.allSelectFilter : allSelectFilter,
        filter: catalogInfo.errorMessage.isNotEmpty ? initState.filter : catalogInfo.filter,
        products: catalogInfo.errorMessage.isNotEmpty ? initState.products : listProducts,
        catalogInfo: catalogInfo.errorMessage.isNotEmpty ? initState.catalogInfo : catalogInfo,
        isError: catalogInfo.errorMessage.isNotEmpty,
        typeError: 'удалить фильтры из категории',
        indexFilterCategory: event.index,
        errorMessage: MessageInfo.errorMessage,
        offset: 1,
        isNotification: false,
        isUpdateVersionApp: false,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _removeSelectAllFilters(
    RemoveSelectAllFiltersCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      if (initState.isError ?? false) {
        emit(initState.copyWith(
          isLoadErrorButton: true,
        ));
      }
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
        selectFilter: catalogInfo.errorMessage.isNotEmpty ? initState.selectFilter : {},
        allSelectFilter: catalogInfo.errorMessage.isNotEmpty ? initState.allSelectFilter : [],
        filter: catalogInfo.errorMessage.isNotEmpty ? initState.filter : catalogInfo.filter,
        products: catalogInfo.errorMessage.isNotEmpty ? initState.products : catalogInfo.products,
        catalogInfo: catalogInfo.errorMessage.isNotEmpty ? initState.catalogInfo : catalogInfo,
        isError: catalogInfo.errorMessage.isNotEmpty,
        typeError: 'удалить все фильтры',
        errorMessage: MessageInfo.errorMessage,
        offset: 1,
        isNotification: false,
        isUpdateVersionApp: false,
        isLoadErrorButton: false,
      ));
    });
  }

  Future<void> _updateInfoProducts(
    UpdateInfoProductsCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(initState.copyWith(
        codeProduct: initState.codeProduct,
      ));
      final catalogInfo = await _catalogRepository.getCatalogProducts(
        request: initState.request,
      );

      final detailsProduct = await _catalogRepository.getDetailsProduct(
        code: initState.codeProduct ?? '0',
        genderIndex: _updateDataService.selectedIndexGender.toString(),
      );

      if (detailsProduct.sku.isNotEmpty) {
        if (detailsProduct.sku.first.id.contains('-') && detailsProduct.sku.first.id.length > 10) {
          emit(CatalogState.getSizeProduct(
            code: initState.codeProduct ?? '0',
            listSize: detailsProduct.sku,
            listSizeToSoppingCart: detailsProduct.skuToSoppingCart,
            titleScreen: event.titleScreen,
            sectionCategoriesPath: [initState.catalogInfo?.h1 ?? ''],
            productCategoriesPath: initState.catalogInfo?.breadcrumbs
                    .map(
                      (item) => item.name,
                    )
                    .toList() ??
                [],
          ));
        }
      }

      emit(initState.copyWith(
        filter: catalogInfo.filter,
        catalogInfo: catalogInfo,
        products: catalogInfo.products,
        listSize: detailsProduct.sku,
        defaultProducts: catalogInfo.products,
      ));
    });
  }

  Future<void> _goBackProductInfo(
    GoBackProductInfoCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<String> listProductsCode = initState.listProductsCode.toList();

      if (listProductsCode.isNotEmpty) {
        listProductsCode.removeLast();
      }

      emit(initState.copyWith(
        listProductsCode: listProductsCode,
        codeProduct: listProductsCode.isNotEmpty ? initState.codeProduct ?? '' : '',
      ));

      if (listProductsCode.isNotEmpty) {
        emit(const CatalogState.load());
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;
        bool isError = false;
        String errorMessage = '';
        emit(const CatalogState.load());

        final basketInfo = await getBasketInfo(isLocal: !isAuth);
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
          listProdcutsComplect: additionalProductsDescriptionComplect.products,
          listProductsCode: listProductsCode,
          isAuth: isAuth,
          isShoppingCart: soppingCart.isNotEmpty,
          isError: isError,
          typeError: 'вернуться назад в карточке товара',
          errorMessage: errorMessage,
          isNotification: false,
          isUpdateVersionApp: false,
          selectSizeProduct: null,
        ));
      }
    });
  }

  Future<void> _goBackCatalogInfo(
    GoBackCatalogInfoCategotyCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<String> listCatalogPath = initState.listCatalogPath.toList();

      if (listCatalogPath.isNotEmpty) {
        listCatalogPath.removeLast();
      }

      emit(initState.copyWith(
        listCatalogPath: listCatalogPath,
      ));

      if (listCatalogPath.isNotEmpty) {
        emit(const CatalogState.load());
        bool isAuth = _sharedPreferencesService.getBool(
              key: SharedPrefKeys.userAuthorized,
            ) ??
            false;
        FavouritesDataModel? favourites;
        List<int> favouritesProductsId = [];
        List<ProductDataModel> favouritesProducts = [];
        bool isError = false;
        String errorMessage = '';
        emit(const CatalogState.load());

        CatalogProductsRequest request = CatalogProductsRequest(
          url: listCatalogPath.last,
          sort: 'n',
        );

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

        if (catalogInfo.errorMessage.isNotEmpty || (favourites?.errorMessage.isNotEmpty ?? false)) {
          isError = true;
          errorMessage = MessageInfo.errorMessage;
        }

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
          listCatalogPath: listCatalogPath,
          isNotification: false,
          isUpdateVersionApp: false,
          isError: isError,
          errorMessage: errorMessage,
          typeError: 'вернуться назад в каталоге',
          codeProduct: null,
          offset: 1,
        ));
      }
    });
  }

  Future<void> _changeSizeProduct(
    ChangeSizeProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        selectSizeProduct: event.selectSizeProduct,
      ));
    });
  }

  Future<void> _checkOpenGetInfoProductSize(
    CheckOpenGetInfoProductSizeCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        isOpenGetSizeProduct: event.isOpenGetSizeProduct,
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
    AddProductToSoppingCartCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      _appMetricaEcommerceService.addOrRemoveProductToSoppingCart(
        typeProductToSoppingCart: AppMetricaShoppingCartEnum.addProductToShoppingCart,
        titleScreen: event.titleScreen,
        titleProduct: initState.detailsProduct?.name ?? '',
        codeProduct: initState.codeProduct ?? '',
        type: event.typeAddProductToShoppingCart,
        identifier: event.identifierAddProductToShoppingCart,
        quantity: 1,
        sectionCategoriesPath: [initState.catalogInfo?.h1 ?? ''],
        productCategoriesPath: initState.catalogInfo?.breadcrumbs
                .map(
                  (item) => item.name,
                )
                .toList() ??
            [],
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
        defaultProducts: listProducts,
        isShoppingCartDetailsProduct: isShoppingCartDetailsProduct,
        isShoppingCart: (initState.isShoppingCart ?? false) || isShoppingCart,
        isNotification: false,
        isUpdateVersionApp: false,
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
        isNotification: false,
        isUpdateVersionApp: false,
      ));
    });
  }

  Future<void> _checkButtonTop(
    CheckButtonTopCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        isButtonTop: event.isButtonTop,
      ));
    });
  }
}
