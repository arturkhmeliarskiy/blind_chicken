import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const OrderState.init()) {
    on<InfoOrderEvent>(_init);
  }

  Future<void> _init(
    InfoOrderEvent event,
    Emitter<OrderState> emit,
  ) async {
    emit(const OrderState.load());

    Random random = Random();

    DateTime dateTimeNow = DateTime.now();

    emit(
      OrderState.productsOrder(
        products: event.products,
        numberProducts: event.numberProducts,
        amountPaid: event.amountPaid,
        favouritesProducts: event.favouritesProducts,
        orderNumber: random.nextInt(10000),
        dateRegistration: '${dateTimeNow.day}.${dateTimeNow.month}.${dateTimeNow.year}',
      ),
    );
  }
}
