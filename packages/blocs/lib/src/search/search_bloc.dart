import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final CatalogRepository _catalogRepository;

  SearchBloc(
    this._catalogRepository,
  ) : super(const SearchState.init()) {
    on<SearchEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        searchProfucts: (event) => _searchProfucts(event, emit),
        selectFilter: (event) => _selectFilter(event, emit),
        deleteFilter: (event) => _deleteFilter(event, emit),
        deleteCatalogFilter: (event) => _deleteFilterCatalog(event, emit),
        addFavouriteProduct: (event) => _addProductToSoppingCart(event, emit),
        deleteFavouriteProduct: (event) => _deleteProductToFavouritesEvent(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    final favouritesProducts = _catalogRepository.getFavouritesProducts();
    final filter = await _catalogRepository.getFilters();
    emit(
      SearchState.searchProductsResult(
        searchProducts: [],
        searchSections: [],
        isLoading: false,
        searchDefaultProducts: [],
        filter: filter,
        favouritesProducts: favouritesProducts,
        query: '',
        selectFilter: {},
        allSelectFilter: [],
      ),
    );
  }

  Future<void> _searchProfucts(
    ProfuctsSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    final favouritesProducts = _catalogRepository.getFavouritesProducts();
    state.mapOrNull(init: (initState) {
      emit(
        SearchState.searchProductsResult(
          searchProducts: [],
          searchSections: [],
          isLoading: true,
          favouritesProducts: favouritesProducts,
          query: event.query,
          filter: [],
          searchDefaultProducts: [],
          selectFilter: {},
          allSelectFilter: [],
        ),
      );
    }, searchProductsResult: (initState) {
      emit(
        SearchState.searchProductsResult(
          searchProducts: event.query.isNotEmpty ? initState.searchProducts : [],
          searchSections: event.query.isNotEmpty ? initState.searchSections : [],
          isLoading: event.query.isNotEmpty,
          favouritesProducts: favouritesProducts,
          query: event.query,
          filter: initState.filter,
          searchDefaultProducts: initState.searchDefaultProducts,
          selectFilter: {},
          allSelectFilter: [],
        ),
      );
    });
    List<ProductDataModel> resultSearchProducts = [];
    List<Map<String, String>> resultSearchSections = [];
    List<ProductDataModel> products = await _catalogRepository.getProducts();

    List<Map<String, String>> sections = [
      {
        'section': 'Аксессуары для очков',
        'gender': 'Женщинам',
      },
      {
        'section': 'Все бабочки',
        'gender': 'Женщинам',
      },
      {
        'section': 'Все сорочки',
        'gender': 'Женщинам',
      },
      {
        'section': 'Все солнцезащитные очки',
        'gender': 'Женщинам',
      },
      {
        'section': 'Детские оправы',
        'gender': 'Детям',
      },
      {
        'section': 'Все туфли лодочки',
        'gender': 'Женщинам',
      },
      {
        'section': 'Детские оправы',
        'gender': 'Детям',
      },
      {
        'section': 'Все туфли лодочки',
        'gender': 'Женщинам',
      },
      {
        'section': 'Все сорочки',
        'gender': 'Женщинам',
      },
      {
        'section': 'Все солнцезащитные очки',
        'gender': 'Женщинам',
      },
    ];

    if (event.query.isNotEmpty) {
      resultSearchProducts = [];
      resultSearchSections = [];
      for (var str in products) {
        if (str.catrgory.toLowerCase().contains(event.query.toLowerCase())) {
          resultSearchProducts.add(str);
        }
      }

      for (var str in sections) {
        if ((str['section'] ?? '').toLowerCase().contains(event.query.toLowerCase())) {
          resultSearchSections.add(str);
        }
      }
      await Future.delayed(const Duration(seconds: 2), () {
        state.mapOrNull(searchProductsResult: (initState) {
          emit(
            SearchState.searchProductsResult(
              searchProducts: resultSearchProducts,
              searchSections: resultSearchSections,
              isLoading: false,
              favouritesProducts: favouritesProducts,
              query: event.query,
              filter: initState.filter,
              searchDefaultProducts: resultSearchProducts,
              selectFilter: {},
              allSelectFilter: [],
            ),
          );
        });
      });
    } else {
      resultSearchProducts = [];
      resultSearchSections = [];
      emit(
        const SearchState.init(),
      );
    }
  }

  Future<void> _selectFilter(
    SelectFilterSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    state.mapOrNull(searchProductsResult: (initState) {
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
          listProducts = initState.searchDefaultProducts
              .where(
                (element) => element.catrgory == filters[j].value,
              )
              .toList();
        }
      }

      log(allSelectFilter.length.toString());
      emit(const SearchState.load());
      emit(initState.copyWith(
        selectFilter: selectFilter,
        allSelectFilter: allSelectFilter,
        searchProducts: listProducts,
      ));
    });
  }

  Future<void> _deleteFilter(
    DeleteFilterSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    state.mapOrNull(searchProductsResult: (initState) {
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
          listProducts = initState.searchProducts
              .where(
                (element) => element.catrgory == filters[j].value,
              )
              .toList();
        }
      }

      log(allSelectFilter.length.toString());
      emit(const SearchState.load());
      emit(
        initState.copyWith(
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
          searchProducts: listProducts,
        ),
      );
    });
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    state.mapOrNull(searchProductsResult: (initState) {
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

      listProducts = initState.searchProducts
          .where(
            (element) => element.catrgory != event.item.value,
          )
          .toList();

      if (allSelectFilter.isNotEmpty) {
        for (int i = 0; i < allSelectFilter.length; i++) {
          for (int j = 0; j < initState.searchProducts.length; j++) {
            if (allSelectFilter[i].values.first.value == initState.searchProducts[j].catrgory ||
                allSelectFilter[i].values.first.value == initState.searchProducts[j].brend) {
              listProducts.add(initState.searchProducts[j]);
            }
          }
        }
      } else {
        listProducts = initState.searchDefaultProducts;
      }

      log(allSelectFilter.length.toString());
      emit(const SearchState.load());
      emit(
        initState.copyWith(
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
          searchProducts: listProducts,
        ),
      );
    });
  }

  Future<void> _addProductToSoppingCart(
    AddFavouriteProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    state.mapOrNull(searchProductsResult: (initState) {
      _catalogRepository.addFavouritesProduct(event.product);
      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      emit(const SearchState.load());
      emit(initState.copyWith(favouritesProducts: favouritesProducts));
    });
  }

  Future<void> _deleteProductToFavouritesEvent(
    DeleteFavouriteProductSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    state.mapOrNull(searchProductsResult: (initState) {
      _catalogRepository.deleteFavouritesProduct(event.index);
      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      emit(const SearchState.load());
      emit(initState.copyWith(favouritesProducts: favouritesProducts));
    });
  }
}
