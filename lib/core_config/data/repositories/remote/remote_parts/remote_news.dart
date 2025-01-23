part of '../remote_repository.dart';

enum TypeContent { news, notice, media }

abstract class _RepositoryNews {
  Future<Either<ErrorResponse?, News?>> getNews({required int page});

  Future<Either<ErrorResponse?, NotificationInfoResponse?>> getNotification({required int page});

  Future<Either<ErrorResponse?, int>> likeNews({
    required String idNews,
    required bool isLiked,
  });

  Future<Either<ErrorResponse?, UnreadModel?>> getUnread({required TypeContent typeContent});

  Future<Either<ErrorResponse?, UnreadModel?>> sendWhatRead({
    required String idRead,
    required TypeContent typeContent,
  });
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
  Future<Either<ErrorResponse?, News?>> getNews({required int page}) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    SharedPreferencesService sharedPreferencesService = SharedPreferencesService();
    await sharedPreferencesService.initialize();
    final isAuth = sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = ConverterService.generateMd5Static("Hf5_dfg23fhh9p$token");
    final tel = sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = tel.isNotEmpty ? ConverterService.generateMd5Static("Hf5_dfg23fhh9p$tel") : '';
    final platformDevice = sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';

    try {
      final response = await dio.post(
        '/local/service/app/api/',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          "nav": "page-$page"
        },
        data: {
          "version": "2.0",
          "method": "list_news",
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "params": {
            //"id": idNews,
          }
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      News newsResponse;

      final result = jsonDecode(response.data);

      newsResponse = NewsResponse.fromJson(result).result!;

      return Right(newsResponse);
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

  @override
  Future<Either<ErrorResponse?, UnreadModel?>> getUnread({required TypeContent typeContent}) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    SharedPreferencesService sharedPreferencesService = SharedPreferencesService();
    await sharedPreferencesService.initialize();
    final isAuth = sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = ConverterService.generateMd5Static("Hf5_dfg23fhh9p$token");
    final tel = sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = tel.isNotEmpty ? ConverterService.generateMd5Static("Hf5_dfg23fhh9p$tel") : '';
    final platformDevice = sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    String idTypeContent = '';
    switch (typeContent) {
      case TypeContent.news:
        idTypeContent = 'news';
        break;
      case TypeContent.notice:
        idTypeContent = 'notice';
        break;
      case TypeContent.media:
        idTypeContent = 'media';
        break;
    }

    try {
      final response = await dio.post(
        '/local/service/app/badge_operation.php',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "platform_device": platformDevice == 'IOS' ? 1 : 2,
          "id_read": '',
          "id_type_content": idTypeContent,
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);
      UnreadModel unread;

      final result = jsonDecode(response.data);
      unread = UnreadModel.fromJson(result);

      return Right(unread);
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
  Future<Either<ErrorResponse?, UnreadModel?>> sendWhatRead(
      {required String idRead, required TypeContent typeContent}) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    SharedPreferencesService sharedPreferencesService = SharedPreferencesService();
    await sharedPreferencesService.initialize();
    final isAuth = sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = ConverterService.generateMd5Static("Hf5_dfg23fhh9p$token");
    final tel = sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = tel.isNotEmpty ? ConverterService.generateMd5Static("Hf5_dfg23fhh9p$tel") : '';
    final platformDevice = sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';
    String idTypeContent = '';
    switch (typeContent) {
      case TypeContent.news:
        idTypeContent = 'news';
        break;
      case TypeContent.notice:
        idTypeContent = 'notice';
        break;
      case TypeContent.media:
        idTypeContent = 'media';
        break;
    }

    try {
      final response = await dio.post(
        '/local/service/app/badge_operation.php?a=read',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "auth": isAuth ? 1 : 0,
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "platform_device": platformDevice == 'IOS' ? 1 : 2,
          "id_read": idRead,
          "id_type_content": idTypeContent,
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);
      UnreadModel unread;

      final result = jsonDecode(response.data);
      unread = UnreadModel.fromJson(result);

      return Right(unread);
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
  Future<Either<ErrorResponse?, int>> likeNews({required String idNews, required bool isLiked}) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    SharedPreferencesService sharedPreferencesService = SharedPreferencesService();
    await sharedPreferencesService.initialize();
    final isAuth = sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = ConverterService.generateMd5Static("Hf5_dfg23fhh9p$token");
    final tel = sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = tel.isNotEmpty ? ConverterService.generateMd5Static("Hf5_dfg23fhh9p$tel") : '';
    final platformDevice = sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';

    try {
      final response = await dio.post(
        '/local/service/app/api/',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "version": "2.0",
          "method": "like_news",
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "params": {
            "id": idNews,
            "phone": tel,
            "operation": isLiked ? 1 : 0,
          }
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);
      int result = 0;
      result = int.tryParse(jsonDecode(response.data)['body']['count'])??0;
      return Right(result);
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
  Future<Either<ErrorResponse?, int>> likeNewsNow({required String idNews, required bool isLiked}) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    SharedPreferencesService sharedPreferencesService = SharedPreferencesService();
    await sharedPreferencesService.initialize();
    final isAuth = sharedPreferencesService.getBool(key: SharedPrefKeys.userAuthorized) ?? false;
    final token = sharedPreferencesService.getString(key: SharedPrefKeys.deviceId) ?? '';
    final hashToken = ConverterService.generateMd5Static("Hf5_dfg23fhh9p$token");
    final tel = sharedPreferencesService.getString(key: SharedPrefKeys.userPhoneNumber) ?? '';
    final hashTokenTel = tel.isNotEmpty ? ConverterService.generateMd5Static("Hf5_dfg23fhh9p$tel") : '';
    final platformDevice = sharedPreferencesService.getString(key: SharedPrefKeys.platformDevice) ?? '';

    try {
      final response = await dio.post(
        '/local/service/app/api/',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "version": "2.0",
          "method": "like_news",
          "token": token,
          "hash_token": hashToken,
          "tel": tel,
          "hash_token_tel": hashTokenTel,
          "params": {
            "id": idNews,
            "phone": tel,
            "operation": isLiked ? 1 : 0,
          }
        },
      );
      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      int result = 0;
      result = int.tryParse(jsonDecode(response.data)['body']['count'])??0;
      return Right(result);
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
