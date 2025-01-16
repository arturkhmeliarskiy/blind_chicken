part of '../remote_repository.dart';

abstract class _RepositoryRole {
  Future<Either<ErrorResponse?, List<Role>?>> getRoles({
    required String storeId,
    String? categoryId,
  });

  Future<Either<ErrorResponse?, List<Role>?>> createRole({
    required String storeId,
    required String roleName,
  });

  Future<Either<ErrorResponse?, List<Role>?>> updateRoles({
    required String storeId,
    required List<RoleDto>? list,
  });

  Future<Either<ErrorResponse?, List<Role>?>> deleteRoleUser({
    required String storeId,
    required String roleId,
    required String userId,
  });

  Future<Either<ErrorResponse?, String?>> getRoleInviteUrl(
    String storeId,
    String roleId,
  );

  Future<Either<ErrorResponse?, InviteCodeResponse?>> checkInviteCode(
    String inviteCode,
  );

  Future<Either<ErrorResponse?, User?>> acceptInviteCode({
    required String inviteCode,
    required String name,
    required String phone,
  });
}

class RemoteRepositoryRole implements _RepositoryRole {
  RemoteRepositoryRole._privateConstructor({required this.dio});

  static RemoteRepositoryRole createInstance({required Dio dio}) {
    return RemoteRepositoryRole._privateConstructor(dio: dio);
  }

  final Dio dio;

  @override
  Future<Either<ErrorResponse?, List<Role>?>> getRoles({
    required String storeId,
    String? categoryId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var queryParams = {
        if (categoryId != null) 'categoryId': categoryId,
      };
      Response response = await dio.get(
        '${Env.baseUrl}/store/$storeId/roles',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        queryParameters: queryParams,
      );
      logging(response.toString(), name: 'Body $currentMethod');
      List<Role> roles = (response.data as List).map((item) => Role.fromJson(item)).toList();
      logging(roles.toString(), name: 'Body $currentMethod');

      logging('end', stackTrace: StackTrace.current);
      return Right(roles);
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
  Future<Either<ErrorResponse?, List<Role>?>> createRole({
    required String storeId,
    required String roleName,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.post('${Env.baseUrl}/store/$storeId/roles',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          data: {
            "name": roleName,
          });
      logging(response.toString(), name: 'Body $currentMethod');
      List<Role> role = (response.data as List).map((item) => Role.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);
      return Right(role);
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
  Future<Either<ErrorResponse?, List<Role>?>> updateRoles({
    required String storeId,
    required List<RoleDto>? list,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      Response response = await dio.put('${Env.baseUrl}/store/$storeId/roles',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          data: list?.map((item) => item.toJson()).toList());
      logging(response.toString(), name: 'Body $currentMethod');
      List<Role> roles = (response.data as List).map((item) => Role.fromJson(item)).toList();
      logging(roles.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);
      return Right(roles);
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
  Future<Either<ErrorResponse?, List<Role>?>> deleteRoleUser({
    required String storeId,
    required String roleId,
    required String userId,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start\n$storeId', stackTrace: StackTrace.current);
      var response = await dio.put('${Env.baseUrl}/store/$storeId/roles/removeUser',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          data: {
            "roleId": roleId,
            "userId": userId,
          });
      logging(response.toString(), name: 'Body $currentMethod');
      List<Role> role = (response.data as List).map((item) => Role.fromJson(item)).toList();

      logging('end', stackTrace: StackTrace.current);
      return Right(role);
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
  Future<Either<ErrorResponse?, String?>> getRoleInviteUrl(
    String storeId,
    String roleId,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      Response response = await dio.get('${Env.baseUrl}/store/$storeId/roles/invite',
          options: Options(
            extra: {'customString': currentMethod},
          ),
          queryParameters: {
            'roleId': roleId,
          });

      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      String? url = response.data['link'];
      return Right(url);
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
  Future<Either<ErrorResponse?, InviteCodeResponse?>> checkInviteCode(
    String inviteCode,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      Response response = await dio.get(
        '${Env.baseUrl}/invite/$inviteCode',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      InviteCodeResponse? resp = InviteCodeResponse.fromJson(response.data);
      return Right(resp);
    } catch (e, s) {
      if (e is DioException && e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return Left(errorResponse);
      } else {
        logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return const Left(null);
      }
    }
  }

  @override
  Future<Either<ErrorResponse?, User?>> acceptInviteCode({
    required String inviteCode,
    required String name,
    required String phone,
  }) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      Response response = await dio.put(
        '${Env.baseUrl}/invite/$inviteCode',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          "name": name,
          "phone": phone,
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');
      logging('end', stackTrace: StackTrace.current);

      User? user = User.fromJson(response.data);
      return Right(user);
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
}
