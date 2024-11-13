import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class CatalogService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  CatalogService(
    this._dio,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
    _dio.options.connectTimeout = const Duration(seconds: 10);
    // Future.delayed(const Duration(seconds: 4), () {
    //   _dio.options.connectTimeout = const Duration(seconds: 3);
    // });
  }

  Future<MenuResponse?> postMenuItems({
    required String a,
    required int b,
    required int id,
    required String u,
    required int pid,
  }) async {
    MenuResponse? menuResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
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
          "brands": 2,
          "proverka_zreniya": 1,
          "servisnaya_karta": 1,
        },
      );
      try {
        log(response.data);
        final result = jsonDecode(response.data);
        List<dynamic> list = result["items"];
        log(list.toString());
        final listMenuItem = List<MenuItemResponse>.from(
          list.map(
            (model) => MenuItemResponse.fromJson(model),
          ),
        );

        if (result["r"] == '1') {
          menuResponse = MenuResponse(
            items: listMenuItem,
          );
        } else {
          menuResponse = MenuResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        menuResponse = MenuResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return menuResponse;
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
      return MenuResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<TopBannerResponse?> postTopBanner() async {
    TopBannerResponse? topBannerResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    log(hashTokenTel);
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/get_topbanner.php',
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
          topBannerResponse = TopBannerResponse.fromJson(result);
        } else {
          topBannerResponse = TopBannerResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        topBannerResponse = TopBannerResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return topBannerResponse;
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
      return TopBannerResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<CatalogResponse?> getCatalogProducts({
    required CatalogProductsRequest request,
    String? messageId,
  }) async {
    CatalogResponse? catalogResponse;
    String hashTokenTel = '';
    Map<String, dynamic> queryParameters = {};
    List<FilterCatalogDataModel> filters = request.filters ?? [];
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    final pushToken = _sharedPreferencesService.getString(key: SharedPrefKeys.pushToken) ?? '';
    final platformDevice =
        _sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    final appVersion = _sharedPreferencesService.getString(key: SharedPrefKeys.appVersion) ?? '';

    for (int i = 0; i < filters.length; i++) {
      queryParameters[filters[i].key] = filters[i].value;
    }

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/cache/app/catalog.php',
        queryParameters: filters.isNotEmpty ? queryParameters : null,
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "url": request.url ?? '',
          "sort": request.sort,
          "proverka_zreniya": 1,
          "discount_first_mobile": 1,
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

      try {
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          catalogResponse = CatalogResponse.fromJson(
            result,
          );
        } else {
          catalogResponse = CatalogResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        catalogResponse = CatalogResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return CatalogResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<BrandsResponse?> getBrands({
    required int gender,
  }) async {
    BrandsResponse? brandsResponse;
    String hashTokenTel = '';

    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/cache/app/get_brands.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "gender": gender,
        },
      );
      log(response.data);

      try {
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          brandsResponse = BrandsResponse.fromJson(result);
        } else {
          brandsResponse = BrandsResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        final result = jsonDecode(response.data);
        brandsResponse = BrandsResponse(
          errorMessage: result['e'] ?? MessageInfo.errorMessage,
        );
      }

      return brandsResponse;
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
      return BrandsResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<DetailProductResponse?> getDetailsProduct({
    required String code,
    String? messageId,
  }) async {
    DetailProductResponse? detailProductResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    final pushToken = _sharedPreferencesService.getString(key: SharedPrefKeys.pushToken) ?? '';
    final platformDevice =
        _sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    final appVersion = _sharedPreferencesService.getString(key: SharedPrefKeys.appVersion) ?? '';
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
          "discount_first_mobile": 1,
          if (messageId != null)
            "push_open": {
              "message_id": messageId,
              "platform": platformDevice == 'IOS' ? 1 : 2,
              "version": appVersion,
              "push_token": pushToken,
            },
        },
      );

      try {
        log(response.data);
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          detailProductResponse = DetailProductResponse.fromJson(
            result,
          );
        } else {
          detailProductResponse = DetailProductResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        detailProductResponse = DetailProductResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return DetailProductResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<AdditionalProductsDescriptionResponse?> getAdditionalProductsDescription({
    required String code,
    required String block,
  }) async {
    AdditionalProductsDescriptionResponse? additionalProductsDescriptionResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
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

      try {
        log(response.data);
        final result = jsonDecode(response.data);

        additionalProductsDescriptionResponse = AdditionalProductsDescriptionResponse.fromJson(
          result,
        );
      } catch (e) {
        additionalProductsDescriptionResponse = AdditionalProductsDescriptionResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return AdditionalProductsDescriptionResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<PaymentOrderResponse?> payGiftCard({
    required CatalogGiftCardRequest request,
  }) async {
    PaymentOrderResponse? paymentOrderResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
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
              "adr_id": request.delivery.adrId,
            },
            "payment": request.payment,
            "sum": request.sum,
          }),
          "city": request.city,
        },
      );

      try {
        log(response.data);
        final result = jsonDecode(response.data);

        paymentOrderResponse = PaymentOrderResponse.fromJson(
          result,
        );
      } catch (e) {
        paymentOrderResponse = PaymentOrderResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return PaymentOrderResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<CatalogSearchResponse?> searchProducts({
    required String search,
  }) async {
    CatalogSearchResponse? catalogSearchResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
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
          "proverka_zreniya": 1,
        },
      );

      try {
        log(response.data);
        final result = jsonDecode(response.data);

        catalogSearchResponse = CatalogSearchResponse.fromJson(
          result,
        );
      } catch (e) {
        catalogSearchResponse = CatalogSearchResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return CatalogSearchResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<CatalogSearchInfoResponse?> searchProductsInfo({
    required CatalogSearchProductsRequest request,
  }) async {
    CatalogSearchInfoResponse? catalogSearchInfoResponse;
    List<FilterCatalogDataModel> filters = request.filters ?? [];
    Map<String, dynamic> queryParameters = {};
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }

    for (int i = 0; i < filters.length; i++) {
      queryParameters[filters[i].key] = filters[i].value;
    }

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/cache/app/catalog_search.php',
        queryParameters: filters.isNotEmpty ? queryParameters : null,
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "search": request.query,
          "discount_first_mobile": 1,
        },
      );

      try {
        log(response.data);
        final result = jsonDecode(response.data);

        catalogSearchInfoResponse = CatalogSearchInfoResponse.fromJson(
          result,
        );
      } catch (e) {
        catalogSearchInfoResponse = CatalogSearchInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

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
      return CatalogSearchInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<CatalogCountProductUrlResponse?> getCountProductUrl({
    required String url,
  }) async {
    CatalogCountProductUrlResponse? catalogCountProductUrlResponse;

    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/get_count_product_url.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "url": url,
        },
      );
      log(response.data);

      try {
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          catalogCountProductUrlResponse = CatalogCountProductUrlResponse.fromJson(result);
        } else {
          catalogCountProductUrlResponse = CatalogCountProductUrlResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        final result = jsonDecode(response.data);
        catalogCountProductUrlResponse = CatalogCountProductUrlResponse(
          errorMessage: result['e'] ?? MessageInfo.errorMessage,
        );
      }

      return catalogCountProductUrlResponse;
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
      return CatalogCountProductUrlResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
