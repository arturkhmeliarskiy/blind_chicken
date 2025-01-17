import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../core_config/data/repositories/local/local_repository.dart';
import '../../screens/app/router/app_router.dart';

class DioHelper {
  static const Duration timeout = Duration(milliseconds: 30000);
  static const Duration thetaTimeout = Duration(milliseconds: 10000);

  static Future<Dio> getDio({
    required LocalRepository preferencesLocalGateway,
    required AppRouter appRouter,
    required String baseUrl,
  }) async {
    Dio dio = Dio()
      ..options.headers = {
        'Accept': 'application/json',
        'User-Agent': await getUserAgent(),
      }
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = timeout
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
          ///todo
          String? accessToken = await preferencesLocalGateway.getToken();
          if (accessToken != null) {
            options.headers.addAll({'X-jwt-Token': accessToken});
          }
          handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) async {
          //Время жизни токена истекло
          dynamic status = response.data['status'];
          if (status is Map && status['error_code'] == 1101) {
            ///todo
            preferencesLocalGateway.clear();
            //appRouter.replaceAll([const AuthorizationScreen()],);
          } else {
            handler.next(response);
          }
        },
        onError: (DioException error, ErrorInterceptorHandler handler) async {
          handler.next(error);
        },
      ),
    );
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
    return dio;
  }

  static Dio getThetaDio({
    required String baseUrl,
  }) {
    Dio dio = Dio()
      ..options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8',
      }
      ..options.receiveDataWhenStatusError = true
      ..options.baseUrl = baseUrl
      ..options.sendTimeout = thetaTimeout
      ..options.connectTimeout = thetaTimeout
      ..options.receiveTimeout = thetaTimeout;
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
    return dio;
  }

  static Future<String> getUserAgent() async {
    PackageInfo info = await PackageInfo.fromPlatform();
    String? version = info.version;
    String? buildNumber = info.buildNumber;
    return 'Pimmer ver.name $version ver.code $buildNumber';
  }
}
