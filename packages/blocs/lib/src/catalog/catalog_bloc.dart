import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'catalog_bloc.freezed.dart';
part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final CatalogRepository _catalogRepository;

  StreamSubscription<dynamic>? otherBlocSubscription;

  CatalogBloc(
    this._catalogRepository,
  ) : super(const CatalogState.init()) {
    on<CatalogEvent>(
      (event, emit) => event.map<Future<void>>(
        preloadData: (event) => _init(event, emit),
        subCategory: (event) => _subCategory(event, emit),
        backPathMenu: (event) => _backPathMenu(event, emit),
        selectFilter: (event) => _selectFilter(event, emit),
        deleteFilter: (event) => _deleteFilter(event, emit),
        deleteCatalogFilter: (event) => _deleteFilterCatalog(event, emit),
        updateFavouritesProducts: (event) => _updateFavouritesProducts(event, emit),
        addFavouriteProduct: (event) => _addProductToSoppingCart(event, emit),
        deleteFavouriteProduct: (event) => _deleteProductToFavouritesEvent(event, emit),
        paginationProduct: (event) => _paginationProduct(event, emit),
      ),
    );
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
    emit(const CatalogState.load());
    List<ProductDataModel> listProducts = [];
    final filter = await _catalogRepository.getFilters();
    final products = await _catalogRepository.getProducts();
    for (int i = 0; i < 10; i++) {
      listProducts.add(products[i]);
    }
    final favouritesProducts = _catalogRepository.getFavouritesProducts();
    final menu = await _catalogRepository.postMenuItems(
      auth: 0,
      a: 'get-main-menu',
      b: 0,
      id: 1,
      u: '',
      pid: 0,
    );
    // menu.add(MenuItemDataModel(
    //   url: '',
    //   idParent: 0,
    //   id: 0,
    //   name: 'Sale',
    //   sub: -1,
    //   title: 1,
    //   brand: -1,
    // ));

    emit(
      CatalogState.preloadDataCompleted(
        filter: filter,
        selectFilter: {},
        allSelectFilter: [],
        products: listProducts,
        defaultProducts: listProducts,
        favouritesProducts: favouritesProducts,
        menu: menu,
        pathMenu: [],
      ),
    );
  }

  Future<void> _subCategory(
    SubCategoryatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      emit(const CatalogState.load());
      final menu = await _catalogRepository.postMenuItems(
        auth: 0,
        a: event.a,
        b: event.b,
        id: event.id,
        u: event.u,
        pid: event.pid,
      );

      List<MenuItemDataModel> pathMenu = initState.pathMenu.toList();
      // menu.add(MenuItemDataModel(
      //   url: '',
      //   idParent: 0,
      //   id: 0,
      //   name: 'Sale',
      //   sub: -1,
      //   title: 1,
      //   brand: -1,
      // ));

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
  }

  Future<void> _selectFilter(
    SelectFilterCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = [];
      List<ProductDataModel> listProducts = [];
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
          listProducts = initState.defaultProducts
              .where(
                (element) => element.catrgory == filters[j].value,
              )
              .toList();
        }
      }

      log(allSelectFilter.length.toString());
      emit(const CatalogState.load());
      emit(initState.copyWith(
        selectFilter: selectFilter,
        allSelectFilter: allSelectFilter,
        products: listProducts,
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
      List<MenuItemDataModel> menu = [];
      pathMenu.remove(pathMenu.last);
      menu = await _catalogRepository.postMenuItems(
        auth: 0,
        a: pathMenu.isNotEmpty ? 'get-child-menu' : 'get-main-menu',
        b: pathMenu.isNotEmpty ? pathMenu.last.brand : 0,
        id: pathMenu.isNotEmpty ? pathMenu.last.id : event.idParent,
        u: pathMenu.isNotEmpty ? pathMenu.last.url : '',
        pid: pathMenu.isNotEmpty ? pathMenu.last.idParent : 0,
      );

      // menu.add(MenuItemDataModel(
      //   url: '',
      //   idParent: 0,
      //   id: 0,
      //   name: 'Sale',
      //   sub: -1,
      //   title: 1,
      //   brand: -1,
      // ));

      emit(initState.copyWith(pathMenu: pathMenu, menu: menu));
    });
  }

  Future<void> _deleteFilter(
    DeleteFilterCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<FilterItemDataModel> selectItem = selectFilter[event.index] ?? [];
      List<Map<int, FilterItemDataModel>> allSelectFilter = [];
      List<ProductDataModel> listProducts = [];

      selectItem.remove(event.item);
      selectFilter[event.index] = selectItem;

      log(selectFilter.toString());

      for (int i = 0; i < selectFilter.length; i++) {
        int key = selectFilter.keys.toList()[i];
        List<FilterItemDataModel> filters = selectFilter[key] ?? [];
        for (int j = 0; j < filters.length; j++) {
          allSelectFilter.add({key: filters[j]});
          listProducts = initState.products
              .where(
                (element) => element.catrgory == filters[j].value,
              )
              .toList();
        }
      }

      log(allSelectFilter.length.toString());
      emit(const CatalogState.load());
      emit(
        initState.copyWith(
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
          products: listProducts,
        ),
      );
    });
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogFilterEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter.toList();
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

      listProducts = initState.products
          .where(
            (element) => element.catrgory != event.item.value,
          )
          .toList();

      if (allSelectFilter.isNotEmpty) {
        for (int i = 0; i < allSelectFilter.length; i++) {
          for (int j = 0; j < initState.products.length; j++) {
            if (allSelectFilter[i].values.first.value == initState.products[j].catrgory ||
                allSelectFilter[i].values.first.value == initState.products[j].brend) {
              listProducts.add(initState.products[j]);
            }
          }
        }
      } else {
        listProducts = initState.defaultProducts;
      }

      log(allSelectFilter.length.toString());
      emit(const CatalogState.load());
      emit(
        initState.copyWith(
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
          products: listProducts,
        ),
      );
    });
  }

  Future<void> _addProductToSoppingCart(
    AddFavouriteProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      _catalogRepository.addFavouritesProduct(event.product);
      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      emit(const CatalogState.load());
      emit(initState.copyWith(favouritesProducts: favouritesProducts));
    });
  }

  Future<void> _deleteProductToFavouritesEvent(
    DeleteFavouriteProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      _catalogRepository.deleteFavouritesProduct(event.index);
      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      emit(const CatalogState.load());
      emit(initState.copyWith(favouritesProducts: favouritesProducts));
    });
  }

  Future<void> _paginationProduct(
    PaginationProductCatalogEvent event,
    Emitter<CatalogState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<ProductDataModel> products = initState.products.toList();
      final productsList = await _catalogRepository.getProducts();
      for (int i = event.offset; i < productsList.length; i++) {
        products.add(productsList[i]);
      }

      emit(initState.copyWith(products: products));
    });
  }
}
