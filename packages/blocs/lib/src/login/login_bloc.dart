import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:appmetrica_push_plugin/appmetrica_push_plugin.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:repositories/repositories.dart';
import 'package:shared/shared.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;
  final CatalogRepository _catalogRepository;
  final SharedPreferencesService _sharedPreferencesService;
  final PushNotificationRepository _pushNotificationRepository;

  LoginBloc(
    this._authRepository,
    this._catalogRepository,
    this._sharedPreferencesService,
    this._pushNotificationRepository,
  ) : super(const LoginState.init()) {
    on<LoginEvent>((event, emit) => event.map<Future<void>>(
          init: (event) => _init(event, emit),
          checkCaptcha: (event) => _checkCaptcha(event, emit),
          checkSms: (event) => _checkSms(event, emit),
          phone: (event) => _phone(event, emit),
        ));
  }

  Future<void> _init(
    InitLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.init());
  }

  Future<void> _phone(
    PhoneLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.load());
    final result = await _authRepository.auth(tel: event.phone);
    if (result.send == '1') {
      emit(LoginState.smsCode(phone: event.phone));
    }
    if (result.captcha.code.isNotEmpty && result.captcha.img.isNotEmpty) {
      emit(
        LoginState.captcha(
          code: result.captcha.code,
          phone: event.phone,
        ),
      );
    }

    if (result.errorMessage.isNotEmpty) {
      emit(
        LoginState.init(
          message: result.errorMessage,
        ),
      );
    }
  }

  Future<void> _checkCaptcha(
    CheckCaptchaLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.load());
    final result = await _authRepository.checkCaptcha(
      tel: event.phone,
      captchaValue: event.captcha,
      captchaCode: event.code,
    );
    if (result.send == '1') {
      emit(LoginState.smsCode(phone: event.phone));
    } else {
      emit(
        LoginState.captcha(
          code: result.captcha.code,
          phone: event.phone,
          message: result.errorMessage,
        ),
      );
    }
  }

  Future<void> _checkSms(
    CheckSmsLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.load());
    List<BasketInfoItemDataModel> basket = [];
    String platformDevice = '';

    final favorites = _catalogRepository.getFavouritesProducts();
    final shopping = _catalogRepository.getShoppingCartProducts();
    String deviceId = _sharedPreferencesService.getString(
          key: SharedPrefKeys.deviceId,
        ) ??
        '';
    for (int i = 0; i < shopping.length; i++) {
      basket.add(BasketInfoItemDataModel(
        code: shopping[i].code,
        sku: shopping[i].sku.contains('-') ? shopping[i].sku : '',
        count: shopping[i].count,
        titleScreen: shopping[i].titleScreen,
        searchQuery: shopping[i].searchQuery,
        typeAddProductToShoppingCart: shopping[i].typeAddProductToShoppingCart,
        identifierAddProductToShoppingCart: shopping[i].identifierAddProductToShoppingCart,
        sectionCategoriesPath: shopping[i].sectionCategoriesPath,
        productCategoriesPath: shopping[i].productCategoriesPath,
      ));
    }
    List<String> favoriteProducts = favorites.map((item) => item.id.toString()).toList();
    final result = await _authRepository.checkSmsAndAuthorization(
      tel: event.phone,
      code: event.code,
      favorites: favoriteProducts,
      basket: basket,
    );
    if (result.r == '1') {
      AppMetricaNumberAttribute.withValue(
        'номер телефона',
        double.parse(
          event.phone,
        ),
      );

      String pushToken = '';
      emit(const LoginState.successfully());
      _sharedPreferencesService.setBool(
        key: SharedPrefKeys.userAuthorized,
        value: true,
      );
      _sharedPreferencesService.setString(
        key: SharedPrefKeys.userPhoneNumber,
        value: event.phone,
      );

      _sharedPreferencesService.setString(
        key: SharedPrefKeys.deviceId,
        value: deviceId,
      );

      if (Platform.isIOS) {
        final tokens = await AppMetricaPush.getTokens();
        pushToken = tokens['apns'] ?? '';
      } else {
        // pushToken = await FirebaseMessaging.instance.getToken() ?? '';
      }

      if (Platform.isAndroid) {
        platformDevice = 'Android';
      } else if (Platform.isIOS) {
        platformDevice = 'IOS';
      }

      PackageInfo packageInfo = await PackageInfo.fromPlatform();

      _sharedPreferencesService.setString(
        key: SharedPrefKeys.pushToken,
        value: pushToken,
      );

      _sharedPreferencesService.setString(
        key: SharedPrefKeys.appVersion,
        value: packageInfo.version,
      );

      _sharedPreferencesService.setString(
        key: SharedPrefKeys.platformDevice,
        value: platformDevice,
      );

      await _pushNotificationRepository.postNotificationInfo(event: '3');
      log('Пользватель вошел');
      AppMetrica.reportEvent('Пользователь авторизовался');
      _catalogRepository.deleteAllFavouritesProducts();
      _catalogRepository.deleteAllShoppingProducts();
    } else {
      emit(
        LoginState.smsCode(
          phone: event.phone,
          message: result.errorMessage,
        ),
      );
    }
  }
}
