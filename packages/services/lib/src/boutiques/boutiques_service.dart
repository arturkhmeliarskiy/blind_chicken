import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class BoutiquesService {
  final Dio _dio;
  final DeviceInfoService _deviceInfoService;
  final ConverterService _converterService;

  BoutiquesService(
    this._dio,
    this._deviceInfoService,
    this._converterService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<BoutiquesResponse?> getBoutiques() async {
    BoutiquesResponse? boutiquesResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/store_list.php',
        data: {
          "token": token,
          "hash_token": hashToken,
        },
      );
      log(response.data);

      try {
        boutiquesResponse = BoutiquesResponse.fromJson(
          jsonDecode(
            response.data,
          ),
        );
      } catch (e) {
        boutiquesResponse = BoutiquesResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return boutiquesResponse;
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
      return BoutiquesResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<BoutiqueInfoResponse?> getInfoBoutique({
    required String uid,
  }) async {
    BoutiqueInfoResponse? boutiqueInfoResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/store.php',
        data: {
          "token": token,
          "hash_token": hashToken,
          "uid": uid,
        },
      );
      log(response.data);

      boutiqueInfoResponse = BoutiqueInfoResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return boutiqueInfoResponse;
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

  Future<BoutiqueInfoDetailResponse?> getInfoBoutiqueDetail({
    required String uid,
  }) async {
    BoutiqueInfoDetailResponse? boutiqueInfoDetailResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/store.php?action=category',
        data: {
          "token": token,
          "hash_token": hashToken,
          "uid": uid,
        },
      );
      log(response.data);

      boutiqueInfoDetailResponse = BoutiqueInfoDetailResponse.fromJson(
        jsonDecode(
          response.data,
        ),
      );

      return boutiqueInfoDetailResponse;
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
