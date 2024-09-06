import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class GiftCardService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  GiftCardService(
    this._dio,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<GiftCardResponse?> pushOpenGiftcard({
    String? messageId,
  }) async {
    GiftCardResponse? giftCardResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final pushToken = _sharedPreferencesService.getString(key: SharedPrefKeys.pushToken) ?? '';
    final platformDevice =
        _sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    final appVersion = _sharedPreferencesService.getString(key: SharedPrefKeys.appVersion) ?? '';
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/push_open_giftcard.php',
        data: {
          "token": token,
          "hash_token": hashToken,
          if (messageId != null)
            "push_open": {
              "message_id": messageId,
              "platform": platformDevice == 'IOS' ? 1 : 2,
              "version": appVersion,
              "push_token": pushToken,
            },
        },
      );
      log(response.data);

      try {
        log(response.data);
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          giftCardResponse = GiftCardResponse.fromJson(
            result,
          );
        } else {
          giftCardResponse = GiftCardResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        giftCardResponse = GiftCardResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return giftCardResponse;
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
