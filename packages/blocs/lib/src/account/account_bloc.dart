import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState.init()) {
    on<InitAccountEvent>(_init);
    on<AccountEvent>(
      (event, emit) => event.map<Future<void>>(
        preloadData: (event) => _init(event, emit),
        updateInfo: (event) => _updateInfo(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitAccountEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(const AccountState.load());
    emit(AccountState.preloadDataCompleted(
      phone: event.phone ?? '',
      name: event.name ?? '',
      email: event.email ?? '',
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
}
