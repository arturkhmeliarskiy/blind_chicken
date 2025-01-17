import 'dart:convert';
import 'package:blind_chicken/utils/logging.dart';

import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

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
    _dio.options.connectTimeout = const Duration(seconds: 10);
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
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
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
      logging(response.data, stackTrace: StackTrace.current);

      pushNotificationResponse = PushNotificationResponse.fromJson(jsonDecode(response.data));

      return pushNotificationResponse;
    } on DioException catch (e) {
      if (e.response != null) {
        logging(e.response!.data.toString(), stackTrace: StackTrace.current);
        logging(e.response!.headers.toString(), stackTrace: StackTrace.current);
        logging(e.response!.requestOptions.toString(), stackTrace: StackTrace.current);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        logging(e.requestOptions.toString(), stackTrace: StackTrace.current);
        logging(e.message.toString(), stackTrace: StackTrace.current);
      }
    }
    return null;
  }
}
