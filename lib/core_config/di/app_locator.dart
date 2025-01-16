import 'package:device_info_plus/device_info_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pimmer_app/app/bloc/app_bloc.dart';
import 'package:pimmer_app/app/navigation/app_router.dart';
import 'package:pimmer_app/app/resources/app_colors.dart';
import 'package:pimmer_app/core/network/dio_provider.dart';
import 'package:pimmer_app/core/network/network_info.dart';
import 'package:pimmer_app/core/utils/debug_overlay/util/log_bucket.dart';
import 'package:pimmer_app/data/repositories/local/local_repository.dart';
import 'package:pimmer_app/data/repositories/remote/remote_repository.dart';
import 'package:pimmer_app/env.dart';
import 'package:pimmer_app/features/orders/about_order/application/about_order_bloc.dart';
import 'package:pimmer_app/features/orders/add_item_to_order/application/item_addition_bloc.dart';
import 'package:pimmer_app/features/orders/general_update_cart_item_bloc/update_cart_item_bloc.dart';
import 'package:pimmer_app/features/orders/history_of_changes/application/order_history_bloc.dart';
import 'package:pimmer_app/features/orders/order_delivery_settings/application/bloc.dart';
import 'package:pimmer_app/features/orders/order_payment/application/order_payment_bloc.dart';
import 'package:pimmer_app/features/orders/orders_general_overview/application/orders_bloc.dart';
import 'package:pimmer_app/features/orders/single_order/application/order_composition_bloc.dart';
import 'package:pimmer_app/features/orders/traceId/application/bloc.dart';
import 'package:pimmer_app/features/settings/delivery_settings/application/bloc.dart';
import 'package:pimmer_app/features/settings/delivery_settings/data/yandex_delivery_data_source.dart';
import 'package:pimmer_app/features/settings/delivery_settings/domain/i_yandex_delivery_settings_data_source.dart';
import 'package:pimmer_app/firebase_options.dart';
import 'package:pimmer_app/utils/notifications/notifications_manager.dart';
import 'package:pimmer_app/utils/store_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Locator {
  static GetIt injection = GetIt.I;

  static Future<void> initBeforeAppLaunch() async {
    if (Env.applicationName == ApplicationName.pimmer) {
      injection.registerSingleton<FirebaseApp>(
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
      );
    }

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
    //injection.registerSingleton<Dio>(Dio(BaseOptions(
    //  connectTimeout: const Duration(seconds: 120),
    //  receiveTimeout: const Duration(seconds: 60),
    //)));

    ///Setup Storage
    injection.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());
    injection.registerSingleton<SharedPreferences>(await SharedPreferences.getInstance());

    ///Setup device info
    injection.registerSingleton<DeviceInfoPlugin>(DeviceInfoPlugin());
    injection.registerSingleton<PackageInfo>(await PackageInfo.fromPlatform());

    injection.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);
    injection.registerSingleton<GetStorage>(GetStorage());

    await GetStorage.init();
    await Env.setupOnboardingConfig();

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

    injection.registerFactory(() => OrdersBloc(
          injection(),
          injection(),
        ));
    injection.registerFactory(() => OrderCompositionBloc(
          injection(),
          injection(),
          injection(),
        ));
    injection.registerFactory(() => TraceIdBloc(
          injection(),
          injection(),
        ));
    injection.registerFactory(() => OrderPaymentBloc(
          injection(),
        ));
    injection.registerFactory(() => AboutOrderBloc(
          injection(),
        ));
    injection.registerFactory(() => OrderHistoryBloc(
          injection(),
        ));
    injection.registerFactory(
      () => ItemAdditionBloc(
        injection(),
        injection(),
      ),
    );
    injection.registerFactory(() => UpdateCartItemBloc(
          injection(),
        ));
    injection.registerFactory(() => DeliverySettingBloc(
          injection(),
          injection(),
        ));
    injection.registerFactory(() => OrderDeliveryInfoBloc(
          injection(),
          injection(),
        ));

    ///Setup Data Sources
    injection.registerFactory<IDeliverySettingsDataSource>(() => DeliverySettingsDataSource(
          injection.get<DioProvider>().dio,
          injection(),
        ));

    injection.registerSingleton<InternetConnectionChecker>(InternetConnectionChecker());
    //todo Добавить проверку на отсутствие интернета
    injection.registerSingleton<NetworkInfo>(NetworkInfoImpl(injection()));
    injection.registerSingleton<StoreLauncher>(StoreLauncher());
    injection.registerSingleton<ImagePicker>(ImagePicker());

    ///Setup Notification Manager
    injection.registerSingleton<NotificationsManager>(NotificationsManager(
      appRouter: injection(),
      localRepository: injection(),
      remoteRepository: injection(),
    ));

    await GetStorage.init();

    final NotificationsManager notificationService = Locator.injection();
    await notificationService.initSDK();

    await FlutterStatusbarcolor.setStatusBarColor(AppColors.white);
    //await FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    //await FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
  }

  static Future<void> initAfterAppLaunch() async {
    EquatableConfig.stringify = true;

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
