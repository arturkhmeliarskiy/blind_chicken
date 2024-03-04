import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'gift_card_bloc.freezed.dart';
part 'gift_card_event.dart';
part 'gift_card_state.dart';

class GiftCardBloc extends Bloc<GiftCardEvent, GiftCardState> {
  final CatalogRepository _catalogRepository;
  final UpdateDataService _updateDataService;

  GiftCardBloc(
    this._catalogRepository,
    this._updateDataService,
  ) : super(const GiftCardState.init()) {
    on<GiftCardEvent>(
      (event, emit) => event.map(
        preloadData: (event) => _preloadData(event, emit),
        createOrder: (event) => _createOrder(event, emit),
      ),
    );
  }

  Future<void> _preloadData(
    InitGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    emit(const GiftCardState.load());

    emit(
      GiftCardState.preloadDataCompleted(
        payments: _updateDataService.payments,
        isLoadCreateOrder: false,
      ),
    );
  }

  Future<void> _createOrder(
    CreateOrderGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    await state.mapOrNull(
      preloadDataCompleted: (initState) async {
        emit(initState.copyWith(isLoadCreateOrder: true));
        final result = await _catalogRepository.payGiftCard(
          request: event.request,
        );
        log(result.e);
        if (result.r == '1') {
          emit(
            GiftCardState.createOrderSuccessfully(
              orderId: result.id,
            ),
          );
        } else {
          emit(
            initState.copyWith(
              isLoadCreateOrder: false,
              creatOrderMessage: result.e,
            ),
          );
        }
      },
    );
  }
}
