import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'shopping_cart_bloc.freezed.dart';
part 'shopping_cart_event.dart';
part 'shopping_cart_state.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  List<ShoppingCartDataModel> listProducts = [];
  final CatalogRepository _catalogRepository;

  ShoppingCartBloc(this._catalogRepository) : super(const ShoppingCartState.init()) {
    on<ShoppingCartEvent>(
      (event, emit) => event.map(
        preloadData: (event) => _init(event, emit),
        addProductToSoppingCart: (event) => _addProductToSoppingCart(event, emit),
        deleteProductToSoppingCart: (event) => _deleteProductToSoppingCartEvent(event, emit),
        updateProductToSoppingCart: (event) => _updateProductToSoppingCart(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitShoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    emit(const ShoppingCartState.load());
    int numberProducts = 0;
    int amountPaid = 0;
    for (int i = 0; i < listProducts.length; i++) {
      numberProducts = numberProducts + listProducts[i].count;
      amountPaid = amountPaid + listProducts[i].price;
    }
    final favouritesProducts = _catalogRepository.getFavouritesProducts();
    emit(
      ShoppingCartState.productsShoppingCart(
        products: listProducts,
        numberProducts: numberProducts,
        amountPaid: amountPaid,
        favouritesProducts: favouritesProducts,
      ),
    );
  }

  Future<void> _addProductToSoppingCart(
    AddProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(
      productsShoppingCart: (initState) {
        final listProducts = initState.products.toList();
        listProducts.add(event.item);
        int numberProducts = 0;
        int amountPaid = 0;
        for (int i = 0; i < listProducts.length; i++) {
          numberProducts = numberProducts + listProducts[i].count;
          amountPaid = amountPaid + listProducts[i].price;
        }
        emit(
          ShoppingCartState.productsShoppingCart(
            products: listProducts,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
            favouritesProducts: initState.favouritesProducts,
          ),
        );
      },
    );
  }

  Future<void> _deleteProductToSoppingCartEvent(
    DeleteProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(
      productsShoppingCart: (initState) {
        final listProducts = initState.products.toList();
        listProducts.removeAt(event.index);
        int numberProducts = 0;
        int amountPaid = 0;
        for (int i = 0; i < listProducts.length; i++) {
          numberProducts = numberProducts + listProducts[i].count;
          amountPaid = amountPaid + listProducts[i].price;
        }
        emit(
          ShoppingCartState.productsShoppingCart(
            products: listProducts,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
            favouritesProducts: initState.favouritesProducts,
          ),
        );
      },
    );
  }

  Future<void> _updateProductToSoppingCart(
    UpdateProductToSoppingCartEvent event,
    Emitter<ShoppingCartState> emit,
  ) async {
    state.mapOrNull(
      productsShoppingCart: (initState) {
        final listProducts = initState.products.toList();
        listProducts[event.index] = event.item;

        int numberProducts = 0;
        int amountPaid = 0;
        for (int i = 0; i < listProducts.length; i++) {
          numberProducts = numberProducts + listProducts[i].count;
          amountPaid = amountPaid + listProducts[i].price;
        }
        emit(
          ShoppingCartState.productsShoppingCart(
            products: listProducts,
            numberProducts: numberProducts,
            amountPaid: amountPaid,
            favouritesProducts: initState.favouritesProducts,
          ),
        );
      },
    );
  }
}
