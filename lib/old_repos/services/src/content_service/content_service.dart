import 'dart:convert';
import 'dart:developer';

import 'package:blind_chicken/old_repos/api_models/src/index.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/shared/src/services/index.dart';
import 'package:dio/dio.dart';

class ContentService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  ContentService(
    this._dio,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
    _dio.options.connectTimeout = const Duration(seconds: 10);
  }

  Future<CheckContentInfoResponse?> checkContentInfo({
    required String dateTime,
  }) async {
    CheckContentInfoResponse? checkContentInfoResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    log(hashTokenTel);

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/cache/app/chec_content_info.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "date_time": dateTime,
        },
      );
      log(response.data);

      try {
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          checkContentInfoResponse = CheckContentInfoResponse.fromJson(result);
        } else {
          checkContentInfoResponse = CheckContentInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        final result = jsonDecode(response.data);
        checkContentInfoResponse = CheckContentInfoResponse(
          errorMessage: result['e'] ?? MessageInfo.errorMessage,
        );
      }

      return checkContentInfoResponse;
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
      return CheckContentInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<ContentInfoResponse?> getContentInfo({
    required String screen,
  }) async {
    ContentInfoResponse? contentInfoResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    log(hashTokenTel);

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/cache/app/chec_content_info.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "screen": screen,
        },
      );
      log(response.data);

      try {
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          contentInfoResponse = ContentInfoResponse.fromJson(result);
        } else {
          contentInfoResponse = ContentInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        final result = jsonDecode(response.data);
        contentInfoResponse = ContentInfoResponse(
          errorMessage: result['e'] ?? MessageInfo.errorMessage,
        );
      }

      return contentInfoResponse;
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
      return ContentInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
