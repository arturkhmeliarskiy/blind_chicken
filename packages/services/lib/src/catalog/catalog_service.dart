import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class CatalogService {
  final Dio _dio;
  final DeviceInfoService _deviceInfoService;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  CatalogService(
    this._dio,
    this._deviceInfoService,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<List<FilterInfoResponse>> getFilters() async {
    final String response = await rootBundle.loadString('assets/json/filters.json');
    final dataList = jsonDecode(response)['filter'] as List<dynamic>;
    final result = List<FilterInfoResponse>.from(
      dataList.map(
        (item) => FilterInfoResponse.fromJson(item),
      ),
    ).toList();
    return result;
  }

  Future<List<ProductResponse>> getProducts() async {
    final String response = await rootBundle.loadString('assets/json/products.json');
    final dataList = jsonDecode(response)['products'] as List<dynamic>;
    final result = List<ProductResponse>.from(
      dataList.map(
        (item) => ProductResponse.fromJson(item),
      ),
    ).toList();
    return result;
  }

  Future<List<MenuItemResponse>?> postMenuItems({
    required String a,
    required int b,
    required int id,
    required String u,
    required int pid,
  }) async {
    List<MenuItemResponse>? listMenuItem;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = await _deviceInfoService.getDeviceId();
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    log(hashTokenTel);
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/cache/app/menu.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "parent-id": id,
        },
      );
      log(response.data);
      List<dynamic> list = jsonDecode(response.data)["items"];
      log(list.toString());
      listMenuItem = List<MenuItemResponse>.from(
        list.map(
          (model) => MenuItemResponse.fromJson(model),
        ),
      );

      return listMenuItem;
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

  Future<CatalogResponse?> getCatalogProducts({
    required CatalogProductsRequest request,
  }) async {
    CatalogResponse? catalogResponse;
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
        '/local/service/cache/app/catalog.php',
        queryParameters: {
          if (request.ct != null) 'ct': request.ct,
          if (request.t26 != null) 't26': request.t26,
          if (request.f2 != null) 'f2': request.f2,
          if (request.s61 != null) 's61': request.s61,
          if (request.t1 != null) 't1': request.t1,
          if (request.f3 != null) 'f3': request.f3,
          if (request.f10 != null) 'f10': request.f10,
          if (request.f12 != null) 'f12': request.f12,
          if (request.f13 != null) 'f13': request.f13,
          if (request.t4 != null) 't4': request.t4,
          if (request.t9 != null) 't9': request.t9,
          if (request.t21 != null) 't21': request.t21,
          if (request.nav != null) 'nav': request.nav,
        },
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "url": request.url,
          "sort": request.sort,
        },
      );
      log(response.data);

      catalogResponse = CatalogResponse.fromJson(jsonDecode(response.data));

      return catalogResponse;
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

  Future<DetailProductResponse?> getDetailsProduct({
    required String code,
  }) async {
    DetailProductResponse? detailProductResponse;
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
        '/local/service/cache/app/product.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "code": code,
        },
      );
      log(response.data);

      detailProductResponse = DetailProductResponse.fromJson(jsonDecode(response.data));

      return detailProductResponse;
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

  Future<AdditionalProductsDescriptionResponse?> getAdditionalProductsDescription({
    required String code,
    required String block,
  }) async {
    AdditionalProductsDescriptionResponse? additionalProductsDescriptionResponse;
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
        '/local/service/cache/app/product.php?block=$block',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "code": code,
        },
      );
      log(response.data);

      additionalProductsDescriptionResponse = AdditionalProductsDescriptionResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return additionalProductsDescriptionResponse;
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

  Future<PaymentOrderResponse?> payGiftCard({
    required CatalogGiftCardRequest request,
  }) async {
    PaymentOrderResponse? paymentOrderResponse;
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
        '/local/service/app/order_gift.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "data": jsonEncode({
            "type": request.type,
            "color": request.color,
            "delivery": {
              "id": request.delivery.id,
              "pck": request.delivery.pck,
              "adr": request.delivery.adr,
              "zip": request.delivery.zip,
            },
            "payment": request.payment,
            "sum": request.sum,
          }),
          "city": request.city,
        },
      );
      log(response.data);

      paymentOrderResponse = PaymentOrderResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return paymentOrderResponse;
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

  Future<CatalogSearchResponse?> searchProducts({
    required String search,
  }) async {
    CatalogSearchResponse? catalogSearchResponse;
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
        '/local/service/cache/app/search.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "search": search,
        },
      );
      log(response.data);

      catalogSearchResponse = CatalogSearchResponse.fromJson(jsonDecode(response.data));

      return catalogSearchResponse;
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

  Future<CatalogSearchInfoResponse?> searchProductsInfo({
    required CatalogSearchProductsRequest request,
  }) async {
    CatalogSearchInfoResponse? catalogSearchInfoResponse;
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
        '/local/service/cache/app/catalog_search.php',
        queryParameters: {
          if (request.ct != null) 'ct': request.ct,
          if (request.t26 != null) 't26': request.t26,
          if (request.f2 != null) 'f2': request.f2,
          if (request.s61 != null) 's61': request.s61,
          if (request.t1 != null) 't1': request.t1,
          if (request.f3 != null) 'f3': request.f3,
          if (request.f10 != null) 'f10': request.f10,
          if (request.f12 != null) 'f12': request.f12,
          if (request.f13 != null) 'f13': request.f13,
          if (request.t4 != null) 't4': request.t4,
          if (request.t9 != null) 't9': request.t9,
          if (request.t21 != null) 't21': request.t21,
          if (request.nav != null) 'nav': request.nav,
        },
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "search": request.query,
        },
      );
      log(response.data);

      catalogSearchInfoResponse = CatalogSearchInfoResponse.fromJson(jsonDecode(response.data));

      return catalogSearchInfoResponse;
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
