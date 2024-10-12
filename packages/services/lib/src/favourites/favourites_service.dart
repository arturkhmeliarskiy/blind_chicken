import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class FavouritesService {
  final Dio _dio;
  final ConverterService _converterService;
  final SharedPreferencesService _sharedPreferencesService;

  FavouritesService(
    this._dio,
    this._converterService,
    this._sharedPreferencesService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
    _dio.options.connectTimeout = const Duration(seconds: 10);
  }

  Future<FavouritesInfoResponse?> addFavouriteProdcut({
    required String code,
  }) async {
    FavouritesInfoResponse? favouritesInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/favorites.php?action=add',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "code": code,
        },
      );
      log(response.data);

      try {
        log(response.data);
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          favouritesInfoResponse = FavouritesInfoResponse.fromJson(
            jsonDecode(
              response.data,
            ),
          );
        } else {
          favouritesInfoResponse = FavouritesInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        favouritesInfoResponse = FavouritesInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return favouritesInfoResponse;
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
      return FavouritesInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<FavouritesInfoResponse?> deleteFavouriteProdcut({
    required String code,
  }) async {
    FavouritesInfoResponse? favouritesInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/favorites.php?action=del',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "code": code,
        },
      );
      log(response.data);

      try {
        log(response.data);
        final result = jsonDecode(response.data);
        if (result['r'] == '1') {
          favouritesInfoResponse = FavouritesInfoResponse.fromJson(
            jsonDecode(
              response.data,
            ),
          );
        } else {
          favouritesInfoResponse = FavouritesInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        favouritesInfoResponse = FavouritesInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return favouritesInfoResponse;
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
      return FavouritesInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<FavouritesResponse?> getFavouritesProdcuts() async {
    FavouritesResponse? favouritesResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/favorites.php?action=get',
        data: {
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );
      log(response.data);

      try {
        favouritesResponse = FavouritesResponse.fromJson(
          jsonDecode(
            response.data,
          ),
        );
      } catch (e) {
        favouritesResponse = FavouritesResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return favouritesResponse;
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
      return FavouritesResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<FavouritesCatalogInfoResponse?> getFavouritesProdcutsInfo({
    required FavouritesCatalogProductsRequest request,
  }) async {
    FavouritesCatalogInfoResponse? favouritesCatalogInfoResponse;
    Map<String, dynamic> queryParameters = {};
    List<FilterCatalogDataModel> filters = request.filters ?? [];
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
        '/local/service/cache/app/catalog_favorites.php',
        queryParameters: filters.isNotEmpty ? queryParameters : null,
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "favorites": jsonEncode(request.favourites),
          "discount_first_mobile": 1,
        },
      );
      log(response.data);

      try {
        favouritesCatalogInfoResponse = FavouritesCatalogInfoResponse.fromJson(
          jsonDecode(response.data),
        );
      } catch (e) {
        favouritesCatalogInfoResponse = FavouritesCatalogInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return favouritesCatalogInfoResponse;
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
      return FavouritesCatalogInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
