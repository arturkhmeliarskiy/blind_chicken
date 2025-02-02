import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_connection_bloc.freezed.dart';
part 'internet_connection_event.dart';
part 'internet_connection_state.dart';

class InternetConnectionBloc extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  //final InternetConnection _connection = InternetConnection();
  // late StreamSubscription<InternetStatus> _connectivitySubscription;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  //ConnectivityResult connectionStatus = ConnectivityResult.none;
  // final Connectivity _connection = Connectivity();
  // late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  InternetConnectionBloc() : super(const InternetConnectionState.init()) {
    // _connectivitySubscription = _connection.onConnectivityChanged.listen((status) async {
    //   add(CheckInitInternetConnectionEvent(status: status));
    // });
    // _connectivitySubscription = _connectivity.onConnectivityChanged.listen((status) {
    //   add(CheckInitInternetConnectionEvent(status: status));
    // });
    on<InternetConnectionEvent>((event, emit) => event.map<Future<void>>(
          init: (event) => _init(event, emit),
          preloadData: (event) => _preloadData(event, emit),
          checkInternetConnection: (event) => _checkInternetConnection(event, emit),
        ));
  }

  Future<void> _init(
    InitInternetConnectionEvent event,
    Emitter<InternetConnectionState> emit,
  ) async {
    // ConnectivityResult internetStatus = await _connection.checkConnectivity();

    // if (internetStatus == ConnectivityResult.wifi || internetStatus == ConnectivityResult.mobile) {
    //   emit(const InternetConnectionState.active());
    // } else {
    //   emit(const InternetConnectionState.notActive());
    // }
    // emit(const InternetConnectionState.active());
  }

  Future<void> _checkInternetConnection(
    CheckInitInternetConnectionEvent event,
    Emitter<InternetConnectionState> emit,
  ) async {
    // if (event.status != InternetStatus.connected) {
    //   emit(const InternetConnectionState.notActive());
    // }

    if ((event.status == ConnectivityResult.wifi || event.status == ConnectivityResult.mobile) &&
        state is! ActiveInternetConnectionState) {
      emit(const InternetConnectionState.active());
    } else {
      if (state is! NotActiveInternetConnectionState) {
        emit(const InternetConnectionState.notActive());
      }
    }
  }

  Future<void> _preloadData(
    PreloadDataInternetConnectionEvent event,
    Emitter<InternetConnectionState> emit,
  ) async {
    emit(const InternetConnectionState.load());
    // final internetStatus = await InternetConnection().internetStatus;

    // if (internetStatus == InternetStatus.connected) {
    //   emit(const InternetConnectionState.active());
    // }

    List<ConnectivityResult> internetStatuses = await _connectivity.checkConnectivity();

    if (internetStatuses.contains(ConnectivityResult.wifi) ||
        internetStatuses.contains(ConnectivityResult.mobile)) {
      emit(const InternetConnectionState.active());
    }
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
