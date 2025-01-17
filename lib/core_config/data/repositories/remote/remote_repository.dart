// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:blind_chicken/core_config/data/repositories/local/local_repository.dart';
import 'package:blind_chicken/core_config/env.dart';
import 'package:blind_chicken/core_config/models/error_response.dart';
import 'package:blind_chicken/core_config/utils/custom_trace.dart';
import 'package:blind_chicken/core_config/utils/debug_overlay/log/log_event.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:blind_chicken/old_repos/api_models/src/news/news_info_response.dart';
import 'package:blind_chicken/old_repos/api_models/src/news/notification_info_response.dart';
import 'package:blind_chicken/old_repos/shared/src/constants/shared_pref_keys.dart';
import 'package:blind_chicken/old_repos/shared/src/services/converter_service.dart';
import 'package:blind_chicken/old_repos/shared/src/services/shared_preferences_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'remote_parts/remote_example.dart';

part 'remote_parts/remote_news.dart';

class RemoteRepository {
  RemoteRepository({
    required this.dio,
    required this.localRepository,
    required this.packageInfo,
  })  : example = RemoteRepositoryExample.createInstance(dio: dio, localRepository: localRepository),
        news = RemoteRepositoryNews.createInstance(dio: dio, localRepository: localRepository);

  //user = RemoteRepositoryUser.createInstance(dio: dio, localRepository: localRepository),

  final Dio dio;
  final LocalRepository localRepository;
  final PackageInfo packageInfo;

  final _RepositoryExample example;
  final _RepositoryNews news;

//final _RepositoryUser user;

/*Future<Either<ErrorResponse?, Unit>> hideVideo(String storeId, String videoId) async {
    try {
      logging('start $storeId', stackTrace: StackTrace.current);

      await dio.put(
        '${Env.baseUrl}/store/$storeId/hiddenVideo',
        data: {
          'videoId': videoId,
        },
      );

      logging('end', stackTrace: StackTrace.current);

      // Unit can be used to represent a "void" in a generic type
      return const Right(unit);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
      } else {
        return const Left(null);
      }
    } catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      return const Left(null);
    }
  }*/
}
