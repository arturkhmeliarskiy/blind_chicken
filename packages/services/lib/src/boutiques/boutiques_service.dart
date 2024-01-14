import 'dart:convert';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class BoutiquesService {
  final Dio _dio;

  BoutiquesService(this._dio) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<List<BoutiquesResponse>> getBoutiques() async {
    final String response = await rootBundle.loadString('assets/json/boutiques.json');
    final dataList = jsonDecode(response)['boutiques'] as List<dynamic>;
    final result = List<BoutiquesResponse>.from(
      dataList.map(
        (item) => BoutiquesResponse.fromJson(item),
      ),
    ).toList();
    return result;
  }
}
