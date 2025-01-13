import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_bloc.freezed.dart';
part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(const BottomNavigationState.init()) {
    on<BottomNavigationEvent>(
      (event, emit) => event.map<Future<void>>(
        init: (event) => _init(event, emit),
        switchBlocked: (event) => _switchBlocked(event, emit),
      ),
    );
  }

  Future<void> _init(
    InitBottomNavigationEvent event,
    Emitter<BottomNavigationState> emit,
  ) async {
    emit(BottomNavigationState.preloadDataCompleted(
      absorbing: false,
    ));
  }

  Future<void> _switchBlocked(
    SwitchBlockedBottomNavigationEvent event,
    Emitter<BottomNavigationState> emit,
  ) async {
    emit(BottomNavigationState.preloadDataCompleted(
      absorbing: event.isBlocked,
    ));
  }
}
