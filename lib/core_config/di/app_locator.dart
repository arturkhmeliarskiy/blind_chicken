import 'package:blind_chicken/app/bloc/app_bloc.dart';
import 'package:blind_chicken/core/network/dio_provider.dart';
import 'package:blind_chicken/core_config/data/repositories/local/local_repository.dart';
import 'package:blind_chicken/core_config/data/repositories/remote/remote_repository.dart';
import 'package:blind_chicken/core_config/utils/debug_overlay/util/log_bucket.dart';
import 'package:blind_chicken/core_config/utils/notifications/notifications_manager.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Locator {
  static GetIt injection = GetIt.I;

  static Future<void> initBeforeAppLaunch() async {
    ///Setup App Router
    injection.registerSingleton<AppRouter>(AppRouter());

    ///Init logging bucket
    injection.registerSingleton<LogBucket>(LogBucket());

    ///Setup Dio
    injection.registerLazySingleton<DioProvider>(() => DioProvider(
          injection(),
          injection(),
          injection(),
        )..configureDio());

    ///Setup Dio params
    injection.registerSingleton<Dio>(Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 120),
      receiveTimeout: const Duration(seconds: 60),
    )));
    ///Setup Storage
    injection.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());
    injection.registerSingleton<SharedPreferences>(await SharedPreferences.getInstance());

    ///Setup device info
    injection.registerSingleton<DeviceInfoPlugin>(DeviceInfoPlugin());
    injection.registerSingleton<PackageInfo>(await PackageInfo.fromPlatform());

    //injection.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);

    ///Setup Repositories
    injection.registerSingleton<LocalRepository>(
      LocalRepository(
        flutterSecureStorage: injection(),
        sharedPreferences: injection(),
      ),
    );
    injection.registerSingleton<RemoteRepository>(
      RemoteRepository(
        dio: injection.get<DioProvider>().dio,
        localRepository: injection(),
        packageInfo: injection(),
      ),
    );

    ///Setup Blocs
    injection.registerSingleton<AppBloc>(AppBloc(
      injection(),
      injection(),
    ));

    ///Setup Data Sources

    //injection.registerSingleton<InternetConnectionChecker>(InternetConnectionChecker());
    //todo Добавить проверку на отсутствие интернета
    //injection.registerSingleton<NetworkInfo>(NetworkInfoImpl(injection()));
    //injection.registerSingleton<StoreLauncher>(StoreLauncher());
    //injection.registerSingleton<ImagePicker>(ImagePicker());

    ///Setup Notification Manager
    injection.registerSingleton<NotificationsManager>(NotificationsManager(
      appRouter: injection(),
      localRepository: injection(),
      remoteRepository: injection(),
    ));
    final NotificationsManager notificationManager = Locator.injection();
    await notificationManager.initFirebase();
    await notificationManager.initSDK();
  }

  static Future<void> initAfterAppLaunch() async {
    EquatableConfig.stringify = true;
    LocalRepository localRepository = Locator.injection();
    DateTime? dateTime = localRepository.getDateInstall();
    if (dateTime == null) {
      await localRepository.setDateInstall();
    }

    //В будущем понадобиться для определения самсунга, тк там приколы со шрифтами
    // DeviceInfoPlugin deviceInfo = Locator.injection();
    // AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    // logging('Running on ${androidInfo.manufacturer}');
    // NetworkInfo networkInfo = Locator.injection();
    // logging('Internet is ${await networkInfo.isConnected}');

    //AppConfig config = AppConfig.instance!;
    //injection.registerSingleton<AppConfig>(config);
    //injection.registerSingleton<Dio>(
    //  await DioHelper.getDio(
    //    preferencesLocalGateway: injection(),
    //    baseUrl: config.apiUrl,
    //    appRouter: injection(),
    //  ),
    //);
  }
}
