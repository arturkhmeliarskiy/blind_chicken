import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class NewsService {
  final Dio _dio;
  final DeviceInfoService _deviceInfoService;
  final ConverterService _converterService;

  NewsService(
    this._dio,
    this._deviceInfoService,
    this._converterService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
  }

  Future<NewsInfoResponse> getNews({
    required int page,
  }) async {
    NewsInfoResponse? newsInfoResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_news.php?nav=page-$page',
        data: {
          "token": token,
          "hash_token": hashToken,
        },
      );
      try {
        final result = jsonDecode(response.data);
        if (result["r"] == '1') {
          newsInfoResponse = NewsInfoResponse.fromJson(result);
        } else {
          newsInfoResponse = NewsInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        newsInfoResponse = NewsInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return newsInfoResponse;
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
      return NewsInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<MediaInfoResponse> getMedia({
    required int page,
  }) async {
    MediaInfoResponse? mediaInfoResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_media.php?nav=page-$page',
        data: {
          "token": token,
          "hash_token": hashToken,
        },
      );

      try {
        final result = await jsonDecode(response.data);
        if (result["r"] == '1') {
          mediaInfoResponse = MediaInfoResponse.fromJson(result);
        } else {
          mediaInfoResponse = MediaInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        mediaInfoResponse = MediaInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return mediaInfoResponse;
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
      return MediaInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<NotificationInfoResponse> getNotifications({
    required int page,
  }) async {
    NotificationInfoResponse? notificationInfoResponse;
    final token = await _deviceInfoService.getDeviceId();
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_notice.php?nav=page-$page',
        data: {
          "token": token,
          "hash_token": hashToken,
        },
      );
      try {
        final result = await jsonDecode(response.data);
        if (result["r"] == '1') {
          notificationInfoResponse = NotificationInfoResponse.fromJson(result);
        } else {
          notificationInfoResponse = NotificationInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        notificationInfoResponse = NotificationInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return notificationInfoResponse;
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
      return NotificationInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
