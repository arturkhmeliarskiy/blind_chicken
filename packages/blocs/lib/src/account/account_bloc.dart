import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final CatalogRepository _catalogRepository;
  final ConstatntsInfo _constatntsInfo;

  AccountBloc(
    this._catalogRepository,
    this._constatntsInfo,
  ) : super(const AccountState.init()) {
    on<InitAccountEvent>(_init);
    on<AccountEvent>(
      (event, emit) => event.map<Future<void>>(
        preloadData: (event) => _init(event, emit),
        updateInfo: (event) => _updateInfo(event, emit),
        paginationProduct: (event) => _paginationProduct(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.load());
    final favouritesProducts = _catalogRepository.getFavouritesProducts();
    final orders = await _constatntsInfo.getOrders();
    List<OrderDataModel> listOrders = [];

    for (int i = 0; i < 10; i++) {
      listOrders.add(orders[i]);
    }

    emit(AccountState.preloadDataCompleted(
      phone: event.phone ?? '',
      name: event.name ?? '',
      email: event.email ?? '',
      listOrders: listOrders,
      favouritesProducts: favouritesProducts,
    ));
  }

  Future<void> _updateInfo(
    UpdateInfoAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    state.mapOrNull(preloadDataCompleted: (initState) {
      emit(initState.copyWith(
        phone: event.phone != null ? event.phone ?? '' : initState.phone,
        name: event.name != null ? event.name ?? '' : initState.name,
        email: event.email != null ? event.email ?? '' : initState.email,
      ));
    });
  }

  Future<void> _paginationProduct(
    PaginationOrdersAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    await state.mapOrNull(preloadDataCompleted: (initState) async {
      List<OrderDataModel> listOrders = initState.listOrders.toList();
      List<OrderDataModel> orders = await _constatntsInfo.getOrders();
      for (int i = event.offset; i < orders.length; i++) {
        listOrders.add(orders[i]);
      }

      emit(initState.copyWith(listOrders: listOrders));
    });
  }
}
