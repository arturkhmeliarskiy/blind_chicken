import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_card_bloc.freezed.dart';
part 'gift_card_event.dart';
part 'gift_card_state.dart';

class GiftCardBloc extends Bloc<GiftCardEvent, GiftCardState> {
  GiftCardBloc() : super(const GiftCardState.init()) {
    on<SearchGiftCardEvent>(_search);
  }

  Future<void> _search(
    SearchGiftCardEvent event,
    Emitter<GiftCardState> emit,
  ) async {
    emit(const GiftCardState.load());

    emit(
      const GiftCardState.preloadDataCompleted(
        searchResult: [],
      ),
    );
  }
}
