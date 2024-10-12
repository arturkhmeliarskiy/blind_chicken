import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:shared/shared.dart';

class NewsService {
  final Dio _dio;
  final SharedPreferencesService _sharedPreferencesService;
  final ConverterService _converterService;

  NewsService(
    this._dio,
    this._sharedPreferencesService,
    this._converterService,
  ) {
    _dio.options.baseUrl = 'https://slepayakurica.ru';
    _dio.options.headers["Content-Type"] = "application/x-www-form-urlencoded";
    _dio.options.connectTimeout = const Duration(seconds: 10);
  }

  Future<NewsInfoResponse> getNews({
    required int page,
  }) async {
    NewsInfoResponse? newsInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_news.php?nav=page-$page',
        data: {
          "token": token,
          "hash_token": hashToken,
          "show": 1,
        },
      );
      try {
        final result = jsonDecode(response.data);

        newsInfoResponse = NewsInfoResponse.fromJson(result);
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

  Future<OneNewsInfoResponse> getOneNews({
    required String id,
    String? messageId,
  }) async {
    OneNewsInfoResponse? oneNewsInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final pushToken = _sharedPreferencesService.getString(key: SharedPrefKeys.pushToken) ?? '';
    final platformDevice =
        _sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    final appVersion = _sharedPreferencesService.getString(key: SharedPrefKeys.appVersion) ?? '';

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_news.php?id=$id',
        data: {
          "token": token,
          "hash_token": hashToken,
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
        final result = jsonDecode(response.data);
        if (result["r"] == '1') {
          oneNewsInfoResponse = OneNewsInfoResponse.fromJson(result);
        } else {
          oneNewsInfoResponse = OneNewsInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        oneNewsInfoResponse = OneNewsInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return oneNewsInfoResponse;
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
      return OneNewsInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<MediaInfoResponse> getMedia({
    required int page,
  }) async {
    MediaInfoResponse? mediaInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
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
        mediaInfoResponse = MediaInfoResponse.fromJson(result);
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

  Future<OneMediaInfoResponse> getOneMedia({
    required String id,
    String? messageId,
  }) async {
    OneMediaInfoResponse? oneMediaInfoResponse;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final pushToken = _sharedPreferencesService.getString(key: SharedPrefKeys.pushToken) ?? '';
    final platformDevice =
        _sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    final appVersion = _sharedPreferencesService.getString(key: SharedPrefKeys.appVersion) ?? '';

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_media.php?id=$id',
        data: {
          "token": token,
          "hash_token": hashToken,
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
        final result = await jsonDecode(response.data);
        if (result["r"] == '1') {
          oneMediaInfoResponse = OneMediaInfoResponse.fromJson(result);
        } else {
          oneMediaInfoResponse = OneMediaInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        oneMediaInfoResponse = OneMediaInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return oneMediaInfoResponse;
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
      return OneMediaInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<NotificationInfoResponse> getNotifications({
    required int page,
  }) async {
    NotificationInfoResponse? notificationInfoResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }
    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_notice.php?nav=page-$page',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );
      try {
        final result = await jsonDecode(response.data);

        notificationInfoResponse = NotificationInfoResponse.fromJson(result);
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

  Future<OneNotificationInfoResponse> getOneNotifcation({
    required String id,
    String? messageId,
  }) async {
    OneNotificationInfoResponse? oneNotificationInfoResponse;
    String hashTokenTel = '';
    final isAuth = _sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = _sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = _converterService.generateMd5("Hf5_dfg23fhh9p$token");
    final tel = _sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    if (tel.isNotEmpty) {
      hashTokenTel = _converterService.generateMd5("Hf5_dfg23fhh9p$tel");
    }

    try {
      log(_dio.options.headers.toString());
      final response = await _dio.post(
        '/local/service/app/list_notice.php?id=$id',
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
        },
      );
      try {
        final result = await jsonDecode(response.data);
        if (result["r"] == '1') {
          oneNotificationInfoResponse = OneNotificationInfoResponse.fromJson(result);
        } else {
          oneNotificationInfoResponse = OneNotificationInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        oneNotificationInfoResponse = OneNotificationInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return oneNotificationInfoResponse;
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
      return OneNotificationInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
