import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'internet_connection_bloc.freezed.dart';
part 'internet_connection_event.dart';
part 'internet_connection_state.dart';

class InternetConnectionBloc extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  InternetConnectionBloc() : super(const InternetConnectionState.init()) {
    on<InitInternetConnectionEvent>(_init);
  }

  Future<void> _init(
    InitInternetConnectionEvent event,
    Emitter<InternetConnectionState> emit,
  ) async {
    final isInternet = await InternetConnection().hasInternetAccess;

    if (isInternet) {
      emit(const InternetConnectionState.active());
    } else {
      emit(const InternetConnectionState.notActive());
    }
  }
}
