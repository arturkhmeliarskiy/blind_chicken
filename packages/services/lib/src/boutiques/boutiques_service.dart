import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class BoutiquesService {
  final Dio _dio;
  final SharedPreferencesService _sharedPreferencesService;
  final ConverterService _converterService;

  BoutiquesService(
    this._dio,
    this._sharedPreferencesService,
    this._converterService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<BoutiquesResponse?> getBoutiques({
    int? optic,
  }) async {
    BoutiquesResponse? boutiquesResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/store_list.php',
        queryParameters: {
          if (optic != null) "optic": optic,
        },
        data: {
          "token": token,
          "hash_token": hashToken,
        },
      );
      log(response.data);

      try {
        boutiquesResponse = BoutiquesResponse.fromJson(
          jsonDecode(
            response.data,
          ),
        );
      } catch (e) {
        boutiquesResponse = BoutiquesResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return boutiquesResponse;
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
      return BoutiquesResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<BoutiqueInfoResponse?> getInfoBoutique({
    required String uid,
    String? messageId,
  }) async {
    BoutiqueInfoResponse? boutiqueInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final pushToken = _sharedPreferencesService.getString(key: SharedPrefKeys.pushToken) ?? '';
    final platformDevice =
        _sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    final appVersion = _sharedPreferencesService.getString(key: SharedPrefKeys.appVersion) ?? '';
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/store.php',
        data: {
          "token": token,
          "hash_token": hashToken,
          "uid": uid,
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

      boutiqueInfoResponse = BoutiqueInfoResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return boutiqueInfoResponse;
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

  Future<BoutiqueInfoDetailResponse?> getInfoBoutiqueDetail({
    required String uid,
  }) async {
    BoutiqueInfoDetailResponse? boutiqueInfoDetailResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/store.php?action=category',
        data: {
          "token": token,
          "hash_token": hashToken,
          "uid": uid,
        },
      );
      log(response.data);

      boutiqueInfoDetailResponse = BoutiqueInfoDetailResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return boutiqueInfoDetailResponse;
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

  Future<AppointmentVisionCheckResponse?> createVc({
    required String uid,
    required String date,
  }) async {
    AppointmentVisionCheckResponse? appointmentVisionCheckResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/create_vc.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "uid_shop": uid,
          "date": date,
        },
      );
      log(response.data);

      try {
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          appointmentVisionCheckResponse = AppointmentVisionCheckResponse.fromJson(
            result,
          );
        } else {
          appointmentVisionCheckResponse = AppointmentVisionCheckResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        appointmentVisionCheckResponse = AppointmentVisionCheckResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return appointmentVisionCheckResponse;
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
      return AppointmentVisionCheckResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
