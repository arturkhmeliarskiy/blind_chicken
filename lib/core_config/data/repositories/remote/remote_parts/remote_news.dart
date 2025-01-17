part of '../remote_repository.dart';

abstract class _RepositoryNews {
  Future<Either<ErrorResponse?, NewsInfoResponse?>> getNews({required int page});

  Future<Either<ErrorResponse?, NotificationInfoResponse?>> getNotification({required int page});
}

class RemoteRepositoryNews implements _RepositoryNews {
  RemoteRepositoryNews._privateConstructor({
    required this.dio,
    required this.localRepository,
  });

  static RemoteRepositoryNews createInstance({required Dio dio, required LocalRepository localRepository}) {
    return RemoteRepositoryNews._privateConstructor(dio: dio, localRepository: localRepository);
  }

  final Dio dio;
  final LocalRepository localRepository;

  @override
  Future<Either<ErrorResponse?, NewsInfoResponse?>> getNews({required int page}) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    SharedPreferencesService sharedPreferencesService = SharedPreferencesService();
    await sharedPreferencesService.initialize();
    final token = sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = ConverterService.generateMd5Static("Hf5_dfg23fhh9p$token");

    try {
      logging(dio.options.headers.toString(), stackTrace: StackTrace.current);
      final response = await dio.post(
        '/local/service/app/list_news.php?nav=page-$page',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "token": token,
          "hash_token": hashToken,
          "innerlink": 1,
          "show": 1,
          "get_media": 1,
          "video_original": 1,
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      NewsInfoResponse newsInfoResponse;
      try {
        final result = jsonDecode(response.data);
        newsInfoResponse = NewsInfoResponse.fromJson(result);
      } catch (e) {
        newsInfoResponse = NewsInfoResponse(
            //errorMessage: MessageInfo.errorMessage,
            );
      }
      return Right(newsInfoResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse responseError = ErrorResponse.fromJson(e.response?.data);
        logging(responseError.toString(), stackTrace: StackTrace.current);
        return Left(responseError);
      } else {
        return const Left(null);
      }
    } catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      return const Left(null);
    }
  }

  @override
  Future<Either<ErrorResponse?, NotificationInfoResponse?>> getNotification({required int page}) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    SharedPreferencesService sharedPreferencesService = SharedPreferencesService();
    await sharedPreferencesService.initialize();
    final isAuth = sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = ConverterService.generateMd5Static("Hf5_dfg23fhh9p$token");
    final tel = sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = tel.isNotEmpty ? ConverterService.generateMd5Static("Hf5_dfg23fhh9p$tel") : '';

    try {
      logging(dio.options.headers.toString(), stackTrace: StackTrace.current);
      final response = await dio.post(
        '/local/service/app/list_notice.php?nav=page-$page',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "innerlink": 1,
          "show": 1,
          "video_original": 1,
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      NotificationInfoResponse notificationInfoResponse;
      try {
        final result = jsonDecode(response.data);
        notificationInfoResponse = NotificationInfoResponse.fromJson(result);
      } catch (e) {
        notificationInfoResponse = NotificationInfoResponse(
            //errorMessage: MessageInfo.errorMessage,
            );
      }
      return Right(notificationInfoResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse responseError = ErrorResponse.fromJson(e.response?.data);
        logging(responseError.toString(), stackTrace: StackTrace.current);
        return Left(responseError);
      } else {
        return const Left(null);
      }
    } catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      return const Left(null);
    }
  }
}
