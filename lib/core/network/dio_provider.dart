import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../core_config/data/repositories/local/local_repository.dart';
import '../../core_config/env.dart';
import 'dio_intercept_to_curl.dart';
import 'dio_interceptors.dart';

class DioProvider {
  final LocalRepository _local;
  final PackageInfo _packageInfo;
  final DeviceInfoPlugin _deviceInfo;

  DioProvider(this._local, this._packageInfo, this._deviceInfo);

  static const Duration timeout = Duration(seconds: 30);

  final Dio _dio = Dio();
  final Dio _noSecureDio = Dio();

  BaseOptions get _options => BaseOptions(
        baseUrl: Env.baseUrl,
        sendTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 120),
        receiveTimeout: const Duration(seconds: 60),
      );

  Dio get dio => _dio;

  Dio get noSecureDio => _noSecureDio;

  void configureDio() {
    _dio.options = _options;
    _dio.interceptors.addAll([
      DioInterceptToCurl(printOnSuccess: true),
      AuthenticationInterceptor(local: _local),
      AppInfoInterceptor(packageInfo: _packageInfo, deviceInfo: _deviceInfo),
    ]);
  }
}
