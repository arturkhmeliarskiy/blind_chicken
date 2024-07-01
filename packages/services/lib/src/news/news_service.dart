import 'dart:convert';
import 'dart:developer';

import 'package:api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

class NewsService {
  Future<NewsInfoResponse> getNews() async {
    NewsInfoResponse? newsInfoResponse;
    final String response = await rootBundle.loadString('assets/news.json');
    try {
      final data = await jsonDecode(response);
      try {
        if (data["r"] == '1') {
          newsInfoResponse = NewsInfoResponse.fromJson(data);
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

  Future<MediaInfoResponse> getMedia() async {
    MediaInfoResponse? mediaInfoResponse;
    final String response = await rootBundle.loadString('assets/media.json');
    try {
      final data = await jsonDecode(response);
      try {
        if (data["r"] == '1') {
          mediaInfoResponse = MediaInfoResponse.fromJson(data);
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

  Future<NotificationInfoResponse> getNotifications() async {
    NotificationInfoResponse? notificationInfoResponse;
    final String response = await rootBundle.loadString('assets/notifications.json');
    try {
      final data = await jsonDecode(response);
      try {
        if (data["r"] == '1') {
          notificationInfoResponse = NotificationInfoResponse.fromJson(data);
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
