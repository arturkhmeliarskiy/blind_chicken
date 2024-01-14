import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

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
}
