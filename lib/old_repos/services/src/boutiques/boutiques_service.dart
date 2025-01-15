import 'dart:convert';
import 'package:blind_chicken/utils/logging.dart';

import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

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
    _dio.options.connectTimeout = const Duration(seconds: 10);
  }

  Future<BoutiquesResponse?> getBoutiques({
    int? optic,
  }) async {
    BoutiquesResponse? boutiquesResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
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
      logging(response.data, stackTrace: StackTrace.current);

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
      return BoutiquesResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<BoutiqueInfoResponse?> getInfoBoutique({
    required String uid,
    String? path,
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
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      final response = await _dio.post(
        '/local/service/app/store.php',
        data: {
          "token": token,
          "hash_token": hashToken,
          "uid": uid,
          if (path != null) "path": path,
          if (messageId != null)
            "push_open": {
              "message_id": messageId,
              "platform": platformDevice == 'IOS' ? 1 : 2,
              "version": appVersion,
              "push_token": pushToken,
            },
        },
      );
      logging(response.data, stackTrace: StackTrace.current);

      try {
        boutiqueInfoResponse = BoutiqueInfoResponse.fromJson(
          jsonDecode(
            response.data,
          ),
        );
      } catch (e) {
        boutiqueInfoResponse = BoutiqueInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return boutiqueInfoResponse;
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
      return BoutiqueInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<BoutiqueInfoDetailResponse?> getInfoBoutiqueDetail({
    required String uid,
    String? path,
  }) async {
    BoutiqueInfoDetailResponse? boutiqueInfoDetailResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      final response = await _dio.post(
        '/local/service/app/store.php?action=category',
        data: {
          "token": token,
          "hash_token": hashToken,
          "uid": uid,
          if (path != null) "path": path,
        },
      );
      logging(response.data, stackTrace: StackTrace.current);

      try {
        boutiqueInfoDetailResponse = BoutiqueInfoDetailResponse.fromJson(
          jsonDecode(
            response.data,
          ),
        );
      } catch (e) {
        boutiqueInfoDetailResponse = BoutiqueInfoDetailResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return boutiqueInfoDetailResponse;
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
      return BoutiqueInfoDetailResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
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
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
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
      logging(response.data, stackTrace: StackTrace.current);

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
      return AppointmentVisionCheckResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
