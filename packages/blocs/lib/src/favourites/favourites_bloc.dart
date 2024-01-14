import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'favourites_bloc.freezed.dart';
part 'favourites_event.dart';
part 'favourites_state.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  final CatalogRepository _catalogRepository;
  StreamSubscription<dynamic>? otherBlocSubscription;

  FavouritesBloc(
    this._catalogRepository,
  ) : super(const FavouritesState.init()) {
    on<FavouritesEvent>(
      (event, emit) => event.map(
        preloadData: (event) => _init(event, emit),
        addFavouriteProduct: (event) => _addFavouriteProduct(event, emit),
        deleteFavouriteProduct: (event) => _deleteFavouriteProduct(event, emit),
        selectFilter: (event) => _selectFilter(event, emit),
        deleteFilter: (event) => _deleteFilter(event, emit),
        deleteCatalogFilter: (event) => _deleteFilterCatalog(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    emit(const FavouritesState.load());

    final favouritesProducts = _catalogRepository.getFavouritesProducts();
    final filter = await _catalogRepository.getFilters();
    emit(
      FavouritesState.productsFavourites(
        favouritesProducts: favouritesProducts,
        favouritesDefaultProducts: favouritesProducts,
        filter: filter,
        selectFilter: {},
        allSelectFilter: [],
      ),
    );
  }

  Future<void> _addFavouriteProduct(
    AddFavouriteProductFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    state.mapOrNull(productsFavourites: (initState) {
      _catalogRepository.addFavouritesProduct(event.product);
      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<ProductDataModel> listProducts = [];

      for (int i = 0; i < selectFilter.length; i++) {
        int key = selectFilter.keys.toList()[i];
        List<FilterItemDataModel> filters = selectFilter[key] ?? [];
        for (int j = 0; j < filters.length; j++) {
          listProducts = favouritesProducts
              .where(
                (element) => element.catrgory == filters[j].value,
              )
              .toList();
        }
      }
      emit(const FavouritesState.load());
      emit(
        initState.copyWith(
          favouritesProducts: listProducts,
          favouritesDefaultProducts: listProducts,
        ),
      );
    });
  }

  Future<void> _deleteFavouriteProduct(
    DeleteFavouriteProductFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    state.mapOrNull(productsFavourites: (initState) {
      _catalogRepository.deleteFavouritesProduct(event.index);
      final favouritesProducts = _catalogRepository.getFavouritesProducts();
      Map<int, List<FilterItemDataModel>> selectFilter = Map.of(initState.selectFilter);
      List<Map<int, FilterItemDataModel>> allSelectFilter = initState.allSelectFilter;

      List<ProductDataModel> listProducts = [];

      for (int i = 0; i < selectFilter.length; i++) {
        int key = selectFilter.keys.toList()[i];
        List<FilterItemDataModel> filters = selectFilter[key] ?? [];
        for (int j = 0; j < filters.length; j++) {
          listProducts = favouritesProducts
              .where(
                (element) => element.catrgory == filters[j].value,
              )
              .toList();
        }
      }
      if (listProducts.isEmpty) {
        listProducts = _catalogRepository.getFavouritesProducts();
        selectFilter = {};
        allSelectFilter = [];
      }
      emit(const FavouritesState.load());
      emit(
        initState.copyWith(
          favouritesProducts: listProducts,
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
    state.mapOrNull(productsFavourites: (initState) {
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
          listProducts = initState.favouritesDefaultProducts
              .where(
                (element) => element.catrgory == filters[j].value,
              )
              .toList();
        }
      }

      log(allSelectFilter.length.toString());
      emit(const FavouritesState.load());
      emit(initState.copyWith(
        selectFilter: selectFilter,
        allSelectFilter: allSelectFilter,
        favouritesProducts: listProducts,
      ));
    });
  }

  Future<void> _deleteFilter(
    DeleteFilterFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    state.mapOrNull(productsFavourites: (initState) {
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
          listProducts = initState.favouritesProducts
              .where(
                (element) => element.catrgory == filters[j].value,
              )
              .toList();
        }
      }

      log(allSelectFilter.length.toString());
      emit(const FavouritesState.load());
      emit(
        initState.copyWith(
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
          favouritesProducts: listProducts,
        ),
      );
    });
  }

  Future<void> _deleteFilterCatalog(
    DeleteCatalogFavouritesEvent event,
    Emitter<FavouritesState> emit,
  ) async {
    state.mapOrNull(productsFavourites: (initState) {
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

      listProducts = initState.favouritesProducts
          .where(
            (element) => element.catrgory != event.item.value,
          )
          .toList();

      if (allSelectFilter.isNotEmpty) {
        for (int i = 0; i < allSelectFilter.length; i++) {
          for (int j = 0; j < initState.favouritesProducts.length; j++) {
            if (allSelectFilter[i].values.first.value == initState.favouritesProducts[j].catrgory ||
                allSelectFilter[i].values.first.value == initState.favouritesProducts[j].brend) {
              listProducts.add(initState.favouritesProducts[j]);
            }
          }
        }
      } else {
        listProducts = initState.favouritesDefaultProducts;
      }

      log(allSelectFilter.length.toString());
      emit(const FavouritesState.load());
      emit(
        initState.copyWith(
          selectFilter: selectFilter,
          allSelectFilter: allSelectFilter,
          favouritesProducts: listProducts,
        ),
      );
    });
  }
}
