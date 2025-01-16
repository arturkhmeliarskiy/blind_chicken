import 'dart:io';

import 'package:blind_chicken/core_config/utils/language_helper.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../core_config/data/repositories/local/local_repository.dart';
import '../../core_config/di/app_locator.dart';
import '../../screens/app/router/app_router.dart';

class AuthenticationInterceptor extends InterceptorsWrapper {
  final LocalRepository _local;

  AuthenticationInterceptor({
    required LocalRepository local,
  }) : _local = local;

  @override
  void onRequest(RequestOptions options, handler) async {
    final String? accessToken = await _local.getToken();

    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    //options.headers['serviceToken'] = Env.serviceToken;
    options.headers['Accept'] = 'application/json';
    options.headers['Content-Type'] = 'application/json';

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    //todo
    if (err.response?.statusCode == HttpStatus.unauthorized || err.response?.statusCode == HttpStatus.forbidden) {
      AppRouter appRouter = Locator.injection();
      LocalRepository localRepository = Locator.injection();
      localRepository.clear();
      //todo appRouter.replaceAll([const SplashScreen()]);
    }
    return handler.next(err);
  }
}

class AppInfoInterceptor extends InterceptorsWrapper {
  final PackageInfo packageInfo;
  final DeviceInfoPlugin deviceInfo;

  AppInfoInterceptor({
    super.onRequest,
    super.onResponse,
    super.onError,
    required this.packageInfo,
    required this.deviceInfo,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String lang = LanguageHelper.getCurrentLocaleToBackend();
    String versionApp = packageInfo.version;
    //todo Сделать нормальную проверку через локатор и выдавать полную информацию
    String info = 'unknown';
    if (Platform.isAndroid) {
      info = 'android';
    }
    if (Platform.isIOS) {
      info = 'ios';
    }
    options.queryParameters['lang'] = lang;
    options.queryParameters['versionApp'] = versionApp;
    options.queryParameters['deviceId'] = Platform.operatingSystem;
    options.queryParameters['os'] = info;

    handler.next(options);
  }
}
