import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class AuthService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  AuthService(
    this._dio,
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
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
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

      try {
        final result = jsonDecode(response.data);
        if (result["r"] == '1') {
          authResponse = AuthResponse.fromJson(result);
        } else {
          authResponse = AuthResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        authResponse = AuthResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return AuthResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<AuthResponse?> checkCaptcha({
    required String tel,
    required String captchaValue,
    required String captchaCode,
  }) async {
    AuthResponse? authResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
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

      try {
        final result = jsonDecode(response.data);
        authResponse = AuthResponse.fromJson(result);
      } catch (e) {
        authResponse = AuthResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return AuthResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<AuthResponse?> changeName({
    required String name,
  }) async {
    AuthResponse? authResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/auth.php?action=change_user_name',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "name": name,
        },
      );
      try {
        final result = jsonDecode(response.data);
        if (result["r"] == '1') {
          authResponse = AuthResponse.fromJson(result);
        } else {
          authResponse = AuthResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        authResponse = AuthResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return AuthResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<AuthResponse?> changeEmail({
    required String email,
  }) async {
    AuthResponse? authResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/auth.php?action=change_user_email',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "email": email,
        },
      );
      try {
        final result = jsonDecode(response.data);
        if (result["r"] == '1') {
          authResponse = AuthResponse.fromJson(result);
        } else {
          authResponse = AuthResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        authResponse = AuthResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return AuthResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<UserInfoResponse?> checkSmsAndAuthorization({
    required UserInformationRequest request,
  }) async {
    UserInfoResponse? userInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
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
      try {
        final result = jsonDecode(response.data);
        userInfoResponse = UserInfoResponse.fromJson(result);
      } catch (e) {
        userInfoResponse = UserInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return userInfoResponse = UserInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<UserInfoResponse?> getUserInfo() async {
    UserInfoResponse? userInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    final hashTokenTel2 = _converterService.generateMd5("Hf5_dfg23fhh9p79278988878");
    log(hashTokenTel2);
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

      try {
        log(response.data);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          userInfoResponse = UserInfoResponse.fromJson(jsonDecode(response.data));
        } else {
          userInfoResponse = UserInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        userInfoResponse = UserInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }
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
      return UserInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<OrdersBlankResponse?> getListOrdersBlank({
    String? nav,
  }) async {
    OrdersBlankResponse? ordersBlankResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_orders_blank.php',
        queryParameters: {
          if (nav != null) 'nav': nav,
        },
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );

      try {
        log(response.data);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          ordersBlankResponse = OrdersBlankResponse.fromJson(
            jsonDecode(
              response.data,
            ),
          );
        } else {
          ordersBlankResponse = OrdersBlankResponse(
            message: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        ordersBlankResponse = OrdersBlankResponse(
          message: MessageInfo.errorMessage,
        );
      }
      return ordersBlankResponse;
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
      return OrdersBlankResponse(
        message: MessageInfo.errorMessage,
      );
    }
  }

  Future<OrderBlankPdfResponse?> getOrderBlank({
    required String id,
  }) async {
    OrderBlankPdfResponse? orderBlankPdfResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/get_order_blank.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "id": id,
        },
      );

      try {
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          orderBlankPdfResponse = OrderBlankPdfResponse.fromJson(
            jsonDecode(
              response.data,
            ),
          );
        } else {
          orderBlankPdfResponse = OrderBlankPdfResponse(
            message: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        orderBlankPdfResponse = OrderBlankPdfResponse(
          message: MessageInfo.errorMessage,
        );
      }
      return orderBlankPdfResponse;
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
      return OrderBlankPdfResponse(
        message: MessageInfo.errorMessage,
      );
    }
  }

  Future<OrdersBlankResponse?> getListTailoringBlank({
    String? nav,
  }) async {
    OrdersBlankResponse? ordersBlankResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_tailoring_blank.php',
        queryParameters: {
          if (nav != null) 'nav': nav,
        },
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );

      try {
        log(response.data);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          ordersBlankResponse = OrdersBlankResponse.fromJson(
            jsonDecode(
              response.data,
            ),
          );
        } else {
          ordersBlankResponse = OrdersBlankResponse(
            message: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        ordersBlankResponse = OrdersBlankResponse(
          message: MessageInfo.errorMessage,
        );
      }
      return ordersBlankResponse;
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
      return OrdersBlankResponse(
        message: MessageInfo.errorMessage,
      );
    }
  }

  Future<OrderBlankPdfResponse?> getTailoringBlank({
    required String id,
  }) async {
    OrderBlankPdfResponse? orderBlankPdfResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/get_tailoring_blank.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "id": id,
        },
      );

      try {
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          orderBlankPdfResponse = OrderBlankPdfResponse.fromJson(
            jsonDecode(
              response.data,
            ),
          );
        } else {
          orderBlankPdfResponse = OrderBlankPdfResponse(
            message: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        orderBlankPdfResponse = OrderBlankPdfResponse(
          message: MessageInfo.errorMessage,
        );
      }
      return orderBlankPdfResponse;
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
      return OrderBlankPdfResponse(
        message: MessageInfo.errorMessage,
      );
    }
  }
}
