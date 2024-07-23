import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class BasketService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  BasketService(
    this._dio,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<BasketResponse?> addProductToBasket({
    required String code,
    required String sku,
    required int count,
  }) async {
    BasketResponse? basketResponse;
    String hashTokenTel = '';
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/basket.php',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "code": code,
          "sku": sku,
          "count": count,
        },
      );
      log(response.data);

      basketResponse = BasketResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return basketResponse;
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

  Future<BasketInfoResponse?> getProductToBasket() async {
    BasketInfoResponse? basketInfoResponse;
    String hashTokenTel = '';
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/basket.php?action=get',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );
      log(response.data);

      basketInfoResponse = BasketInfoResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return basketInfoResponse;
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

  Future<BasketFullInfoResponse?> getProductToBasketFullInfo({
    String? promo,
    String? pickup,
    List<BasketInfoRequest>? basket,
  }) async {
    BasketFullInfoResponse? basketFullInfoResponse;
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
        '/local/service/app/basket_order.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "promo": promo ?? '',
          "pickup": pickup ?? '',
          "basket": basket?.isNotEmpty ?? false ? jsonEncode(basket) : '',
        },
      );
      try {
        log(response.data);
        final result = jsonDecode(response.data);

        basketFullInfoResponse = BasketFullInfoResponse.fromJson(
          result,
        );
      } catch (e) {
        basketFullInfoResponse = BasketFullInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return basketFullInfoResponse;
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
      return BasketFullInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<PaymentsResponse?> getPaymentMethods() async {
    PaymentsResponse? paymentsResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/payments.php',
        data: {
          "token": token,
          "hash_token": hashToken,
        },
      );
      log(response.data);

      try {
        paymentsResponse = PaymentsResponse.fromJson(
          jsonDecode(
            response.data,
          ),
        );
      } catch (e) {
        paymentsResponse = PaymentsResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return paymentsResponse;
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
      return PaymentsResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<PaymentBonusResponse?> getPaymentBonus() async {
    PaymentBonusResponse? paymentBonusResponse;
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
        '/local/service/app/bonus.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );
      log(response.data);

      paymentBonusResponse = PaymentBonusResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return paymentBonusResponse;
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

  Future<PaymentBonusResponse?> checkingGiftCardGettingBalance({
    required String number,
    required String pin,
  }) async {
    PaymentBonusResponse? paymentBonusResponse;
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
        '/local/service/app/gift_cart.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "number": number,
          "pin": pin,
        },
      );
      log(response.data);

      paymentBonusResponse = PaymentBonusResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return paymentBonusResponse;
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

  Future<PaymentOrderResponse?> createOrder({
    required BasketOrderRequest request,
    List<BasketSertDeliveryDataRequest>? sert,
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
        '/local/service/app/order.php',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "data": jsonEncode({
            "promo": request.promo,
            "delivery": {
              "id": request.delivery.id,
              "pck": request.delivery.pck,
              "adr": request.delivery.adr,
              "zip": request.delivery.zip,
            },
            "payment": request.payment,
            if (request.bonus != null) "bonus": request.bonus,
            if (sert != null) "sert": sert,
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

  Future<PayOrderResponse?> payOrder({
    required String id,
  }) async {
    PayOrderResponse? payOrderResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/get_order_payment_url.php',
        data: {
          "token": token,
          "hash_token": hashToken,
          "id": id,
        },
      );
      log(response.data);

      payOrderResponse = PayOrderResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return payOrderResponse;
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
