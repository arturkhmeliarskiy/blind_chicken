import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class PushNotificationService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  PushNotificationService(
    this._dio,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<PushNotificationResponse?> postNotificationInfo({
    required String event,
  }) async {
    PushNotificationResponse? pushNotificationResponse;
    final deviceId = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashTokenDeviceId = _converterService.generateMd5("Hf5_dfg23fhh9p$deviceId");
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final pushToken = _sharedPreferencesService.getString(key: SharedPrefKeys.pushToken) ?? '';
    final platformDevice =
        _sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    final appVersion = _sharedPreferencesService.getString(key: SharedPrefKeys.appVersion) ?? '';
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/event.php',
        data: {
          "id_device": deviceId,
          "hash_id_device": hashTokenDeviceId,
          "push_token": pushToken,
          "phone_number": event != '4' ? tel : '',
          "event": event,
          "platform_device": platformDevice == 'IOS' ? 1 : 2,
          "app_version": appVersion,
        },
      );
      log(response.data);

      pushNotificationResponse = PushNotificationResponse.fromJson(jsonDecode(response.data));

      return pushNotificationResponse;
    } on DioError catch (e) {
      if (e.response != null) {
        log(e.response!.data.toString());
        log(e.response!.headers.toString());
        log(e.response!.requestOptions.toString());
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        log(e.requestOptions.toString());
        log(e.message.toString());
      }
    }
    return null;
  }
}
