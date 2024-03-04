import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class LocationService {
  final Dio _dio;
  final DeviceInfoService _deviceInfoService;
  final ConverterService _converterService;

  LocationService(
    this._dio,
    this._deviceInfoService,
    this._converterService,
  );

  Future<SearchLocationResponse?> searchLocation({
    required String contentType,
    String? query,
    String? cityId,
    String? streetId,
    int? limit,
    int? offset,
  }) async {
    SearchLocationResponse? searchLocationResponse;

    try {
      log(_dio.options.headers.toString());
      _dio.options.baseUrl = 'https://kladr-api.com';
      final response = await _dio.get(
        '/api.php',
        queryParameters: {
          'token': '5KdnYde7hn9rA3kk25kreySKitEeshYs',
          'contentType': contentType,
          if (query != null) 'query': query,
          if (cityId != null) 'cityId': cityId,
          if (streetId != null) 'streetId': streetId,
          if (limit != null) 'limit': limit,
          if (offset != null) 'offset': offset,
        },
      );

      searchLocationResponse = SearchLocationResponse.fromJson(
        response.data,
      );

      return searchLocationResponse;
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

  Future<CalculationCostDeliveryRsponse?> calculationCostDelivery({
    required String zipcode,
    required int sum,
    required String cityId,
  }) async {
    CalculationCostDeliveryRsponse? calculationCostDeliveryRsponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      log(_dio.options.headers.toString());
      _dio.options.baseUrl = 'https://slepayakurica.ru';
      final response = await _dio.post(
        '/local/service/app/calc_delivery.php',
        data: {
          "token": token,
          "hash_token": hashToken,
          "zipcode": zipcode,
          "sum": sum,
          "city_id": cityId,
        },
      );
      log(response.data);

      calculationCostDeliveryRsponse = CalculationCostDeliveryRsponse.fromJson(
        jsonDecode(response.data),
      );

      return calculationCostDeliveryRsponse;
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
