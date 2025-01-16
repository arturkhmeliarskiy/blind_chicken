import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pimmer_app/app/navigation/app_router.dart';
import 'package:pimmer_app/core/bloc/base_bloc_state.dart';
import 'package:pimmer_app/core/bloc/bloc_action.dart';
import 'package:pimmer_app/data/repositories/remote/remote_repository.dart';
import 'package:pimmer_app/domain/dto/auth_request.dart';
import 'package:pimmer_app/domain/enums/auth_type.dart';
import 'package:pimmer_app/domain/enums/color_scheme_type.dart';
import 'package:pimmer_app/model/country.dart';
import 'package:pimmer_app/model/error_response.dart';
import 'package:pimmer_app/model/user.dart';
import 'package:pimmer_app/utils/language_helper.dart';
import 'package:rxdart/subjects.dart';

import '../navigation/app_router.gr.dart';

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
    on<SwitchColorScheme>(_switchColorScheme);
    on<SwitchLocale>(_switchLocale);
    on<AuthPressed>(_authPressed);
    on<ShowDebugOverlay>(_showDebugOverlay);
    on<ShowErrorDialog>(_showErrorDialog);
    add(const AppEvent.init());
  }

  final AppRouter _appRouter;
  final RemoteRepository _remoteRepository;

  final BehaviorSubject<AppLifecycleState?> _appLifecycleStateSubject = BehaviorSubject.seeded(null);

  Stream<AppLifecycleState?> get appLifecycleStateStream => _appLifecycleStateSubject.stream;

  FutureOr<void> _init(Init event, Emitter<AppState> emit) async {
    try {
      String brightness = GetStorage().read(
        'brightness',
      );
      if (brightness == ColorSchemeMode.dark.toString()) {
        emit(
          state.copyWith(colorSchemeMode: ColorSchemeMode.dark),
        );
      } else if (brightness == ColorSchemeMode.light.toString()) {
        emit(
          state.copyWith(colorSchemeMode: ColorSchemeMode.light),
        );
      } else {
        emit(
          state.copyWith(colorSchemeMode: ColorSchemeMode.auto),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(colorSchemeMode: ColorSchemeMode.auto),
      );
    }
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

  FutureOr<void> _switchColorScheme(SwitchColorScheme event, Emitter<AppState> emit) {
    emit(state.copyWith(action: null));
    ColorSchemeMode nextColorScheme = state.colorSchemeMode;
    switch (state.colorSchemeMode) {
      case ColorSchemeMode.auto:
        nextColorScheme = ColorSchemeMode.dark;
        break;
      case ColorSchemeMode.dark:
        nextColorScheme = ColorSchemeMode.light;
        break;
      case ColorSchemeMode.light:
        nextColorScheme = ColorSchemeMode.auto;
        break;
    }
    GetStorage().write(
      'brightness',
      nextColorScheme.toString(),
    );
    emit(
      state.copyWith(colorSchemeMode: nextColorScheme),
    );
  }

  FutureOr<void> _switchLocale(SwitchLocale event, Emitter<AppState> emit) async {
    log(event.locale.toString());
    await LanguageHelper.setCurrentLocale(event.locale.languageCode);
    emit(
      state.copyWith(locale: event.locale),
    );
    log(event.locale.toString());
  }

  FutureOr<void> _authPressed(AuthPressed event, Emitter<AppState> emit) async {
    AuthRequest? authRequestArgument;
    switch (event.type) {
      case AuthType.google:
        authRequestArgument = await _remoteRepository.user.googleAuth();
        break;
      case AuthType.apple:
        authRequestArgument = await _remoteRepository.user.appleAuth();
        break;
      case AuthType.nambaOneMerchant:
        // TODO: Обработать AuthType.nambaOneMerchant
        break;
      case AuthType.humans:
        authRequestArgument = await _signWithUpay();
        break;
    }

    if (authRequestArgument != null) {
      Either<ErrorResponse?, User?> resp = await _remoteRepository.user.authenticateUser(authRequestArgument);

      resp.fold(
        (l) => emit(state.copyWith(action: ShowSomethingWrong(errorResponse: l))),
        (r) async {
          if (event.country != null) {
            await _appRouter.replaceAll([NavigationScreen()]);
          }
        },
      );
    }
  }

  Future<AuthRequest?> _signWithUpay() async {
    String? code = await _appRouter.push<String>(const SignInWithUpayView());

    if (code == null) throw Exception('user is null');

    return AuthRequest(
      authToken: code,
      authProvider: 'humans_merchant',
      deviceId: 'deviceId',
      username: "",
    );
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
