import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:models/models.dart';

class CatalogService {
  final Dio _dio;

  CatalogService(this._dio) {
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
    required int auth,
    required String token,
    required String hashToken,
    required String a,
    required int b,
    required int id,
    required String u,
    required int pid,
  }) async {
    List<MenuItemResponse>? listMenuItem;
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/menu/get.php',
        data: {
          "auth": auth,
          "token": token,
          "hash_token": hashToken,
          "a": a,
          "b": b,
          "id": id,
          "u": u,
          "pid": pid,
        },
      );
      log(response.data);
      List<dynamic> list = jsonDecode(response.data);
      log(list.toString());
      listMenuItem =
          List<MenuItemResponse>.from(list.map((model) => MenuItemResponse.fromJson(model)));

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
          "auth": request.auth,
          "token": request.token,
          "hash_token": request.hashToken,
          "tel": request.tel,
          "hash_token_tel": request.hashTokenTel,
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
    required int auth,
    required String token,
    required String hashToken,
    required String tel,
    required String hashTokenTel,
    required String code,
  }) async {
    DetailProductResponse? detailProductResponse;
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/cache/app/product.php',
        data: {
          "auth": auth,
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
    required int auth,
    required String token,
    required String hashToken,
    required String tel,
    required String hashTokenTel,
    required String code,
    required String block,
  }) async {
    AdditionalProductsDescriptionResponse? additionalProductsDescriptionResponse;
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/cache/app/product.php?block=$block',
        data: {
          "auth": auth,
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
}
