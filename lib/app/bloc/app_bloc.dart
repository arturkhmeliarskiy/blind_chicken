import 'dart:async';
import 'dart:developer';

import 'package:blind_chicken/core/bloc/base_bloc_state.dart';
import 'package:blind_chicken/core/bloc/bloc_action.dart';
import 'package:blind_chicken/core_config/data/repositories/remote/remote_repository.dart';
import 'package:blind_chicken/core_config/utils/language_helper.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rxdart/subjects.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(
    this._appRouter,
    this._remoteRepository,
  ) : super(AppState()) {
    on<Init>(_init);
    on<AppLifecycleStateChanged>(_appLifecycleStateChanged);
    on<SwitchLocale>(_switchLocale);
    on<ShowDebugOverlay>(_showDebugOverlay);
    on<ShowErrorDialog>(_showErrorDialog);
    add(const AppEvent.init());
  }

  final AppRouter _appRouter;
  final RemoteRepository _remoteRepository;

  final BehaviorSubject<AppLifecycleState?> _appLifecycleStateSubject = BehaviorSubject.seeded(null);

  Stream<AppLifecycleState?> get appLifecycleStateStream => _appLifecycleStateSubject.stream;

  FutureOr<void> _init(Init event, Emitter<AppState> emit) async {
    //emit(
    //  state.copyWith(locale: Locale(LanguageHelper.getCurrentLocale())),
    //);
    await LanguageHelper.setLocaleToDefault();
  }

  FutureOr<void> _appLifecycleStateChanged(
    AppLifecycleStateChanged event,
    Emitter<AppState> emit,
  ) {
    _appLifecycleStateSubject.add(event.state);
  }

  @override
  Future<void> close() async {
    await _appLifecycleStateSubject.close();
    log('AppBloc closed', name: 'Info');
    return super.close();
  }

  FutureOr<void> _switchLocale(SwitchLocale event, Emitter<AppState> emit) async {
    log(event.locale.toString());
    await LanguageHelper.setCurrentLocale(event.locale.languageCode);
    emit(
      state.copyWith(locale: event.locale),
    );
    log(event.locale.toString());
  }

  FutureOr<void> _showDebugOverlay(ShowDebugOverlay event, Emitter<AppState> emit) {
    if (event.visible == null) {
      emit(state.copyWith(visibleDebugOverlay: !state.visibleDebugOverlay));
    } else {
      emit(state.copyWith(visibleDebugOverlay: event.visible!));
    }
  }

  FutureOr<void> _showErrorDialog(ShowErrorDialog event, Emitter<AppState> emit) {
    emit(state.copyWith(action: event.action));
  }
}
