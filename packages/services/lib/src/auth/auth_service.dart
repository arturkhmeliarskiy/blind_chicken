import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class AuthService {
  final Dio _dio;
  final DeviceInfoService _deviceInfoService;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  AuthService(
    this._dio,
    this._deviceInfoService,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<AuthResponse?> auth({
    required String tel,
  }) async {
    AuthResponse? authResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/auth.php?action=send_sms',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );
      authResponse = AuthResponse.fromJson(jsonDecode(response.data));

      return authResponse;
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

  Future<AuthResponse?> checkCaptcha({
    required String tel,
    required String captchaValue,
    required String captchaCode,
  }) async {
    AuthResponse? authResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/auth.php?action=check_captcha',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "captcha_value": captchaValue,
          "captcha_code": captchaCode,
        },
      );
      authResponse = AuthResponse.fromJson(jsonDecode(response.data));

      return authResponse;
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

  Future<UserInfoResponse?> checkSmsAndAuthorization({
    required UserInformationRequest request,
  }) async {
    UserInfoResponse? userInfoResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p${request.tel}");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/auth.php?action=check_sms_login',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": request.tel,
          "code": request.code,
          "hash_token_tel": hashTokenTel,
          "favorites": jsonEncode(request.favorites),
          "basket": jsonEncode(request.basket),
        },
      );
      userInfoResponse = UserInfoResponse.fromJson(jsonDecode(response.data));

      return userInfoResponse;
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

  Future<UserInfoResponse?> getUserInfo() async {
    UserInfoResponse? userInfoResponse;
    final token = await _deviceInfoService.getDeviceId();
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/auth.php?action=info_user',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );
      userInfoResponse = UserInfoResponse.fromJson(jsonDecode(response.data));

      return userInfoResponse;
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
