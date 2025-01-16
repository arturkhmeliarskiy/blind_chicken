part of '../remote_repository.dart';

abstract class _RepositoryStore {
  Future<Either<ErrorResponse?, Store?>> getStore(
    String storeId,
  );

  Future<Either<ErrorResponse?, List<StoreType>>> getStoreTypes(
    Country country,
  );

  Future<Either<ErrorResponse?, Store?>> createStore(
    Country country,
    Language language,
    StoreType storeType,
  );

  Future<Either<ErrorResponse?, Store?>> editStore(
    String storeId,
    StoreDto storeDto,
  );

  Future<Either<ErrorResponse?, bool>> storeTaskDone({
    required Store store,
    required StoreTask task,
  });

  Future<Either<ErrorResponse?, Store?>> editStoreLogo(
    String storeId,
    String? storeLogoBase64,
  );

  Future<Either<ErrorResponse?, List<StoreInfo>?>> getStoreInfo(
    String storeId,
  );

  Future<Either<ErrorResponse?, List<StoreInfo>?>> updateStoreInfo({
    required String storeId,
    required List<StoreInfoDto>? list,
  });

  Future<Either<ErrorResponse?, StoreInfo?>> createStoreInfo({
    required String storeId,
    required String name,
    required int sort,
  });
}

class RemoteRepositoryStore implements _RepositoryStore {
  RemoteRepositoryStore._privateConstructor({required this.dio, required this.localRepository});

  static RemoteRepositoryStore createInstance({required Dio dio, required LocalRepository localRepository}) {
    return RemoteRepositoryStore._privateConstructor(dio: dio, localRepository: localRepository);
  }

  final Dio dio;
  final LocalRepository localRepository;

  @override
  Future<Either<ErrorResponse?, Store?>> getStore(String storeId) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);

      var response = await dio.get(
        '${Env.baseUrl}/store/$storeId/profile',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      Store storeResponse = Store.fromJson(response.data);
      RoleHelper.clearValues();
      RoleHelper.setValues(storeResponse);
      await localRepository.store.saveStore(storeResponse);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
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
  }

  @override
  Future<Either<ErrorResponse?, List<StoreType>>> getStoreTypes(Country country) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    List<StoreType> storeTypes = [];
    try {
      Response response = await dio.get(
        '${Env.baseUrl}/store/types',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: {
          'countryId': country.countryId,
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      for (var item in response.data) {
        storeTypes.add(StoreType.fromJson(item));
      }

      logging('end', stackTrace: StackTrace.current);
      return Right(storeTypes);
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
  }

  @override
  Future<Either<ErrorResponse?, Store?>> createStore(
    Country country,
    Language language,
    StoreType storeType,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      var response = await dio.post('${Env.baseUrl}/store',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          data: {
            'countryId': country.countryId,
            'defaultLanguage': language.lang,
            'typeId': storeType.typeId,
          });

      logging(response.toString(), name: 'Body $currentMethod');

      Store storeResponse = Store.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(e.response.toString(), stackTrace: StackTrace.current);
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
  }

  @override
  Future<Either<ErrorResponse?, Store?>> editStore(String storeId, StoreDto storeDto) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);

      var response = await dio.put('${Env.baseUrl}/store/$storeId/profile',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          data: storeDto.toRawJson());

      logging(response.toString(), name: 'Body $currentMethod');

      Store storeResponse = Store.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
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
  }

  @override
  Future<Either<ErrorResponse?, bool>> storeTaskDone({
    required Store store,
    required StoreTask task,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n${store.generalInfo.storeId}', stackTrace: StackTrace.current);

      var response = await dio.put(
        '${Env.baseUrl}/store/${store.generalInfo.storeId}/task',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "taskId": task.taskId,
          "complete": 1,
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      bool isSuccess = response.data['result'];

      logging('end', stackTrace: StackTrace.current);
      return Right(isSuccess);
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
  }

  @override
  Future<Either<ErrorResponse?, Store?>> editStoreLogo(String storeId, String? storeLogoBase64) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);

      var response = await dio.put(
        '${Env.baseUrl}/store/$storeId/profile',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          'storeLogo': storeLogoBase64,
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      Store storeResponse = Store.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storeResponse);
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
  }

  @override
  Future<Either<ErrorResponse?, List<StoreInfo>?>> getStoreInfo(String storeId) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);

      var response = await dio.get(
        '${Env.baseUrl}/store/$storeId/info',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<StoreInfo> storesInfoList = response.data.map<StoreInfo>((item) => StoreInfo.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);
      return Right(storesInfoList);
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
  }

  @override
  Future<Either<ErrorResponse?, List<StoreInfo>?>> updateStoreInfo({
    required String storeId,
    required List<StoreInfoDto>? list,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);

      var response = await dio.put(
        '${Env.baseUrl}/store/$storeId/info',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: list,
      );

      logging(response.toString(), name: 'Body $currentMethod');

      List<StoreInfo> storesInfoList = response.data.map<StoreInfo>((item) => StoreInfo.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);
      return Right(storesInfoList);
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
  }

  @override
  Future<Either<ErrorResponse?, StoreInfo?>> createStoreInfo({
    required String storeId,
    required String name,
    required int sort,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);

      var response = await dio.post(
        '${Env.baseUrl}/store/$storeId/info',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          'name': name,
          'sort': sort,
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      StoreInfo? storesInfo = StoreInfo.fromJson(response.data);

      logging('end', stackTrace: StackTrace.current);
      return Right(storesInfo);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      ErrorResponse? errorResponse = ErrorResponse.fromJson(e.response?.data);
      if (e.response != null) {
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
  }
}
