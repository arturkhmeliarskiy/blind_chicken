import 'dart:convert';
import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

class LocationService {
  final Dio _dio;
  final SharedPreferencesService _sharedPreferencesService;
  final ConverterService _converterService;

  LocationService(
    this._dio,
    this._sharedPreferencesService,
    this._converterService,
  );

  Future<SearchLocationResponse?> searchLocation({
    required String contentType,
    String? query,
    String? cityId,
    String? streetId,
    int? withParent,
    int? limit,
    int? offset,
  }) async {
    SearchLocationResponse? searchLocationResponse;

    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      _dio.options.baseUrl = 'https://kladr-api.com';
      final response = await _dio.get(
        '/api.php',
        queryParameters: {
          'token': '5KdnYde7hn9rA3kk25kreySKitEeshYs',
          'contentType': contentType,
          if (withParent != null) 'withParent': withParent,
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

  Future<CalculationCostDeliveryRsponse?> calculationCostDelivery({
    required String zipcode,
    required int sum,
    required String cityId,
  }) async {
    CalculationCostDeliveryRsponse? calculationCostDeliveryRsponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
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
      logging(response.data, stackTrace: StackTrace.current);

      try {
        logging(response.data, stackTrace: StackTrace.current);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          calculationCostDeliveryRsponse = CalculationCostDeliveryRsponse.fromJson(result);
        } else {
          calculationCostDeliveryRsponse = CalculationCostDeliveryRsponse(
            errorMessage: result["e"],
          );
        }
      } catch (e) {
        calculationCostDeliveryRsponse = CalculationCostDeliveryRsponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return calculationCostDeliveryRsponse;
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
      return calculationCostDeliveryRsponse = CalculationCostDeliveryRsponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<DeliveryRsponse?> getDelivery() async {
    DeliveryRsponse? deliveryRsponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    logging(hashTokenTel, stackTrace: StackTrace.current);
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      _dio.options.baseUrl = 'https://slepayakurica.ru';
      final response = await _dio.post(
        '/local/service/app/save_delivery.php?a=get',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );
      logging(response.data, stackTrace: StackTrace.current);

      try {
        logging(response.data, stackTrace: StackTrace.current);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          deliveryRsponse = DeliveryRsponse.fromJson(result);
        } else {
          deliveryRsponse = DeliveryRsponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        deliveryRsponse = DeliveryRsponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return deliveryRsponse;
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
      return DeliveryRsponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<DeliveryInfoRsponse?> addPickUpPoint({
    required String pickId,
  }) async {
    DeliveryInfoRsponse? deliveryInfoRsponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    logging(hashTokenTel, stackTrace: StackTrace.current);
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      _dio.options.baseUrl = 'https://slepayakurica.ru';
      final response = await _dio.post(
        '/local/service/app/save_delivery.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "delivery_id": 1,
          "pick_id": pickId,
        },
      );
      logging(response.data, stackTrace: StackTrace.current);

      try {
        logging(response.data, stackTrace: StackTrace.current);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          deliveryInfoRsponse = DeliveryInfoRsponse.fromJson(result);
        } else {
          deliveryInfoRsponse = DeliveryInfoRsponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        deliveryInfoRsponse = DeliveryInfoRsponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return deliveryInfoRsponse;
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
      return DeliveryInfoRsponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<DeliveryInfoRsponse?> addDeliveryAddress({
    required String addr,
    required String city,
    required String zip,
  }) async {
    DeliveryInfoRsponse? deliveryInfoRsponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    logging(hashTokenTel, stackTrace: StackTrace.current);
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      _dio.options.baseUrl = 'https://slepayakurica.ru';
      final response = await _dio.post(
        '/local/service/app/save_delivery.php?a=add',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "delivery_id": 2,
          "addr": addr,
          "city": city,
          "zip": zip,
        },
      );
      logging(response.data, stackTrace: StackTrace.current);

      try {
        logging(response.data, stackTrace: StackTrace.current);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          deliveryInfoRsponse = DeliveryInfoRsponse.fromJson(result);
        } else {
          deliveryInfoRsponse = DeliveryInfoRsponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        deliveryInfoRsponse = DeliveryInfoRsponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return deliveryInfoRsponse;
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
      return DeliveryInfoRsponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<DeliveryInfoRsponse?> deleteDeliveryAddress({
    required String id,
  }) async {
    DeliveryInfoRsponse? deliveryInfoRsponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    logging(hashTokenTel, stackTrace: StackTrace.current);
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      _dio.options.baseUrl = 'https://slepayakurica.ru';
      final response = await _dio.post(
        '/local/service/app/save_delivery.php?a=del',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "delivery_id": 2,
          "id": id,
        },
      );
      logging(response.data, stackTrace: StackTrace.current);

      try {
        logging(response.data, stackTrace: StackTrace.current);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          deliveryInfoRsponse = DeliveryInfoRsponse.fromJson(result);
        } else {
          deliveryInfoRsponse = DeliveryInfoRsponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        deliveryInfoRsponse = DeliveryInfoRsponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return deliveryInfoRsponse;
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
      return DeliveryInfoRsponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<DeliveryInfoRsponse?> switchTypeDelivery({
    required String deliveryId,
  }) async {
    DeliveryInfoRsponse? deliveryInfoRsponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    logging(hashTokenTel, stackTrace: StackTrace.current);
    try {
      logging(_dio.options.headers.toString(), stackTrace: StackTrace.current);
      _dio.options.baseUrl = 'https://slepayakurica.ru';
      final response = await _dio.post(
        '/local/service/app/save_delivery.php?a=delivery',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "delivery_id": deliveryId,
        },
      );
      logging(response.data, stackTrace: StackTrace.current);

      try {
        logging(response.data, stackTrace: StackTrace.current);
        final result = jsonDecode(response.data);

        if (result["r"] == '1') {
          deliveryInfoRsponse = DeliveryInfoRsponse.fromJson(result);
        } else {
          deliveryInfoRsponse = DeliveryInfoRsponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        deliveryInfoRsponse = DeliveryInfoRsponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return deliveryInfoRsponse;
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
      return DeliveryInfoRsponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
