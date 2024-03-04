import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class OrdersService {
  final Dio _dio;
  final DeviceInfoService _deviceInfoService;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  OrdersService(
    this._dio,
    this._deviceInfoService,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<OrdersResponse?> getListOrders({
    String? nav,
  }) async {
    OrdersResponse? ordersResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = await _deviceInfoService.getDeviceId();
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_orders.php',
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
      log(response.data);

      ordersResponse = OrdersResponse.fromJson(jsonDecode(response.data));

      return ordersResponse;
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

  Future<OrderInfoResponse?> getOrderInfo({
    required String id,
  }) async {
    OrderInfoResponse? orderInfoResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = await _deviceInfoService.getDeviceId();
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/get_order.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "id": id,
        },
      );
      log(response.data);

      orderInfoResponse = OrderInfoResponse.fromJson(jsonDecode(response.data));

      return orderInfoResponse;
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
      return orderInfoResponse = OrderInfoResponse(
        error: 'Нет информации',
      );
    }
  }
}
