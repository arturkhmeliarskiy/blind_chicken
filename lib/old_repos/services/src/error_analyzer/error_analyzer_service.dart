import 'dart:convert';
import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

class ErrorAnalyzerService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  ErrorAnalyzerService(
    this._dio,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
    _dio.options.connectTimeout = const Duration(seconds: 10);
  }

  Future<ErrorAnalyzerResponse?> sendError({
    required String stack,
    required String exception,
  }) async {
    return null;
    //ErrorAnalyzerResponse? errorAnalyzerResponse;
    //String hashTokenTel = '';
    //final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    //final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    //final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    //final pushToken = _sharedPreferencesService.getString(key: SharedPrefKeys.pushToken) ?? '';
    //final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    //if (tel.isNotEmpty) {
    //  hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    //}
    //final platform = _sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    //final version = _sharedPreferencesService.getString(key: SharedPrefKeys.appVersion) ?? '';
    //logging(hashTokenTel, stackTrace: StackTrace.current);
    //try {
    //  logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
    //  final response = await _dio.post(
    //    '/local/service/cache/app/get_log.php',
    //    data: {
    //      "auth": isAuth ? 1 : 0,
    //      "token": token,
    //      "hash_token": hashToken,
    //      "tel": tel,
    //      "hash_token_tel": hashTokenTel,
    //      "push_token": pushToken,
    //      "stack": stack,
    //      "exception": exception,
    //      "platform": platform == 'IOS' ? 1 : 2,
    //      "version": version,
    //    },
    //  );
    //  try {
    //    logging(response.data, stackTrace: StackTrace.current);
    //    final result = jsonDecode(response.data);
//
    //    if (result["r"] == '1') {
    //      errorAnalyzerResponse = ErrorAnalyzerResponse.fromJson(result);
    //    } else {
    //      errorAnalyzerResponse = ErrorAnalyzerResponse(
    //        errorMessage: MessageInfo.errorMessage,
    //      );
    //    }
    //  } catch (e) {
    //    errorAnalyzerResponse = ErrorAnalyzerResponse(
    //      errorMessage: MessageInfo.errorMessage,
    //    );
    //  }
//
    //  return errorAnalyzerResponse;
    //} on DioException catch (e) {
    //  if (e.response != null) {
    //    logging(e.response!.data.toString(), stackTrace: StackTrace.current);
    //    logging(e.response!.headers.toString(), stackTrace: StackTrace.current);
    //    logging(e.response!.requestOptions.toString(), stackTrace: StackTrace.current);
    //  } else {
    //    // Something happened in setting up or sending the request that triggered an Error
    //    logging(e.requestOptions.toString(), stackTrace: StackTrace.current);
    //    logging(e.message.toString(), stackTrace: StackTrace.current);
    //  }
    //  return ErrorAnalyzerResponse(
    //    errorMessage: MessageInfo.errorMessage,
    //  );
    //}
  }
}
