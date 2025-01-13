import 'dart:convert';
import 'package:blind_chicken/utils/logging.dart';
import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:dio/dio.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';

class AppStoreInfoService {
  final Dio _dio;
  AppStoreInfoService(this._dio);

  Future<AppStoreInfoResponse> checkAndroidVersion() async {
    AppStoreInfoResponse? appStoreInfo;
    const String bundle = 'com.slepayakurica.app';
    const String url = 'https://play.google.com/store/apps/details?id=$bundle';

    try {
      Response response = await _dio.get(url);

      try {
        List<String> splitted = response.data.split(',[[["');

        // In each element, remove everything after "]] pattern
        List<String> removedLast = splitted.map((String e) {
          return e.split('"]],').first;
        }).toList();

        // We are looking for a version in the array that satisfies the regular expression:
        // starts with one or more digits (\d), followed by a period (.), followed by one or more digits.
        List<String> filteredByVersion = removedLast
            .map((String e) {
              RegExp regex = RegExp(r'^\d+\.\d+');
              if (regex.hasMatch(e)) {
                return e;
              }
            })
            .whereType<String>()
            .toList();

        if (filteredByVersion.length == 1) {
          appStoreInfo = AppStoreInfoResponse(
            appStroreVersion: filteredByVersion.first,
          );
        } else {
          appStoreInfo = AppStoreInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        appStoreInfo = AppStoreInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }
      return appStoreInfo;
    } on DioException catch (e) {
      if (e.response != null) {
        logging(e.response!.data.toString(), stackTrace: StackTrace.current);
        logging(e.response!.headers.toString(), stackTrace: StackTrace.current);
        logging(e.response!.requestOptions.toString(), stackTrace: StackTrace.current);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        logging(e.requestOptions.toString(), stackTrace: StackTrace.current);
        logging(e.message.toString(), stackTrace: StackTrace.current);
      }
      return AppStoreInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }

  Future<AppStoreInfoResponse> checkiOSVersion() async {
    AppStoreInfoResponse? appStoreInfo;
    const String bundle = 'com.slepayakurica.app';
    const String url = 'https://itunes.apple.com/lookup?bundleId=$bundle';

    final Options options = Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    try {
      Response response = await _dio.get(url, options: options);

      try {
        Map<String, dynamic> result = jsonDecode(response.data);

        if (result['resultCount'] > 0 &&
            result['results'] != null &&
            result['results'].length > 0) {
          appStoreInfo = AppStoreInfoResponse(
            appStroreVersion: result['results'][0]['version'] ?? '',
          );
        } else {
          appStoreInfo = AppStoreInfoResponse(
            errorMessage: MessageInfo.errorMessage,
          );
        }
      } catch (e) {
        appStoreInfo = AppStoreInfoResponse(
          errorMessage: MessageInfo.errorMessage,
        );
      }

      return appStoreInfo;
    } on DioException catch (e) {
      if (e.response != null) {
        logging(e.response!.data.toString(), stackTrace: StackTrace.current);
        logging(e.response!.headers.toString(), stackTrace: StackTrace.current);
        logging(e.response!.requestOptions.toString(), stackTrace: StackTrace.current);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        logging(e.requestOptions.toString(), stackTrace: StackTrace.current);
        logging(e.message.toString(), stackTrace: StackTrace.current);
      }
      return AppStoreInfoResponse(
        errorMessage: MessageInfo.errorMessage,
      );
    }
  }
}
