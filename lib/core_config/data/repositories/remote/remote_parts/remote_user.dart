part of '../remote_repository.dart';

abstract class _RepositoryUser {
  Future<AuthRequest?> googleAuth();

  Future<AuthRequest?> appleAuth();

  Future<Either<ErrorResponse?, User?>> authenticateUser(
    AuthRequest authRequest,
  );

  Future<Either<ErrorResponse?, User?>> getUser();

  Future<Either<ErrorResponse?, User?>> updateUser(UserDto userDto);

  Future<ErrorResponse?> deleteAccount();
}

class RemoteRepositoryUser implements _RepositoryUser {
  RemoteRepositoryUser._privateConstructor({required this.dio, required this.localRepository});

  static RemoteRepositoryUser createInstance({required Dio dio, required LocalRepository localRepository}) {
    return RemoteRepositoryUser._privateConstructor(dio: dio, localRepository: localRepository);
  }

  final Dio dio;
  final LocalRepository localRepository;

  @override
  Future<AuthRequest?> googleAuth() async {
    GoogleSignInAccount? res = await GoogleSignIn(
      scopes: [
        'https://www.googleapis.com/auth/userinfo.profile',
        'https://www.googleapis.com/auth/userinfo.email',
      ],
    ).signIn();
    if (res != null) {
      GoogleSignInAuthentication auth = await res.authentication;

      if (auth.accessToken != null) {
        return AuthRequest(
          authToken: auth.accessToken!,
          authProvider: 'google',
          deviceId: 'androidPhone',
          username: res.displayName ?? '',
        );
      }
    }
    return null;
  }

  @override
  Future<AuthRequest?> appleAuth() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: WebAuthenticationOptions(
        clientId: Env.appleClientId, //'com.io.pimmer.app',
        redirectUri: Uri.parse(Env.appleRedirectUri), ////Uri.parse('https://pimmer.app/oauth/android_apple_callback'),
      ),
    );

    return AuthRequest(
      authToken: credential.identityToken ?? '',
      authProvider: 'apple',
      deviceId: 'iosPhone',
      username: '',
      appleAuthCode: credential.userIdentifier,
    );
  }

  @override
  Future<Either<ErrorResponse?, User?>> authenticateUser(
    AuthRequest authRequest,
  ) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();
    try {
      logging('start $authRequest \n${Env.baseUrl}', stackTrace: StackTrace.current);

      Response response = await dio.post(
        '${Env.baseUrl}/user/auth',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: {
          'data': {
            'authToken': authRequest.authToken,
            'authProvider': authRequest.authProvider,
            'deviceId': authRequest.deviceId,
            'username': authRequest.username,
            'appleAuthCode': authRequest.appleAuthCode
          }
        },
      );

      logging(response.toString(), name: 'Body $currentMethod');

      AuthResponse authResponse = AuthResponse.fromJson(response.data);

      Future future0 = localRepository.setAccessToken(authResponse.token);
      Future future1 = localRepository.setAuthProvider(authResponse.authProvider);
      Future future2 = localRepository.user.saveUser(authResponse.user);
      await Future.wait([future0, future1, future2]);

      logging('end', stackTrace: StackTrace.current);

      return Right(authResponse.user);
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse? errorResponse = ErrorResponse.fromJson(e.response?.data);
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
  Future<Either<ErrorResponse?, User?>> getUser() async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Future<Response> response = dio.get(
        '${Env.baseUrl}/user/profile',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      String url = '${Env.baseUrl}/user/profile';
      Future<Response> responseNotActive = dio.get(
        url,
        queryParameters: {"disabledStore": true},
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );
      List<Response> responses = await Future.wait([response, responseNotActive]);

      logging(responses[0].toString(), name: 'Body $currentMethod Response Active');
      logging(responses[1].toString(), name: 'Body $currentMethod Response NotActive');

      User user = User.fromJson(responses[0].data);

      User userNotActive = User.fromJson(responses[1].data);
      user.userStores.addAll(userNotActive.userStores);

      logging('End', stackTrace: StackTrace.current);

      await localRepository.user.saveUser(user);

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

  @override
  Future<Either<ErrorResponse?, User?>> updateUser(UserDto userDto) async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.put(
        '${Env.baseUrl}/user/profile',
        options: Options(
          extra: {'customString': currentMethod},
        ),
        data: userDto.toJson(),
      );

      logging(response.toString(), name: 'Body $currentMethod Response Active');

      User user = User.fromJson(response.data);
      logging('End', stackTrace: StackTrace.current);

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

  @override
  Future<ErrorResponse?> deleteAccount() async {
    String currentMethod = CustomTrace.from(StackTrace.current).functionName.toString();

    try {
      Response response = await dio.delete(
        '${Env.baseUrl}/user/profile',
        options: Options(
          extra: {'customString': currentMethod},
        ),
      );

      logging(response.toString(), name: 'Body $currentMethod');

      await localRepository.clear();

      return null;
    } on DioException catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      if (e.response != null) {
        ErrorResponse errorResponse = ErrorResponse.fromJson(e.response!.data, code: e.response!.statusCode);
        logging(errorResponse.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
        return errorResponse;
      } else {
        return null;
      }
    } catch (e, s) {
      logging(e.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      logging(s.toString(), stackTrace: StackTrace.current, logLevel: LogLevel.error);
      return null;
    }
  }
}
