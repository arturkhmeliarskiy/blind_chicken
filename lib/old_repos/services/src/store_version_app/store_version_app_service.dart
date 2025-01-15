import 'dart:convert';
import 'package:blind_chicken/utils/logging.dart';

import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

class StoreVersionAppService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  StoreVersionAppService(
    this._dio,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
    _dio.options.connectTimeout = const Duration(seconds: 10);
  }

  Future<StoreVersionAppResponse?> getStoreVersion() async {
    StoreVersionAppResponse? storeVersionAppResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      final response = await _dio.post(
        '/local/service/app/get_version.php',
        data: {
          "token": token,
          "hash_token": hashToken,
        },
      );
      logging(response.data, stackTrace: StackTrace.current);

      storeVersionAppResponse = StoreVersionAppResponse.fromJson(jsonDecode(response.data));

      return storeVersionAppResponse;
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
