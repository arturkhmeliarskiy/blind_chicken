import 'dart:async';

import 'package:blind_chicken/core_config/data/repositories/local/local_repository.dart';
import 'package:blind_chicken/core_config/data/repositories/remote/remote_repository.dart';
import 'package:blind_chicken/core_config/ui/resources/app_colors.dart';
import 'package:blind_chicken/firebase_options.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationsManager {
  NotificationsManager({
    required AppRouter appRouter,
    required LocalRepository localRepository,
    required RemoteRepository remoteRepository,
  })  : _appRouter = appRouter,
        _localRepository = localRepository,
        _remoteRepository = remoteRepository;

  final AppRouter _appRouter;
  final LocalRepository _localRepository;
  final RemoteRepository _remoteRepository;
  final FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

  static const String channelKey = 'high_importance_channel';
  static const String channelName = 'ic_stat_app_logo_on_a_dark_4';

  Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await FirebaseMessaging.instance.requestPermission();
  }

  Future<void> initSDK() async {
    late AndroidNotificationChannel channel;
    late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

    //await Firebase.initializeApp(
    //  //todo important!!! options: DefaultFirebaseOptions.currentPlatform,
    //);


    // FirebaseMessaging.instance.getToken().then((token) {
    //   print('device token is $token');
    // });

    channel = const AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'This channel is used for important notifications.',
      importance: Importance.high,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_stat_app_logo_on_a_dark_4');

    const DarwinInitializationSettings iosInitializationSettings = DarwinInitializationSettings(
        requestAlertPermission: false, requestBadgePermission: false, requestSoundPermission: false);
    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid, iOS: iosInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _notificationClickedHandler,
    );

    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    ///Get data from terminated state
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    ///Get data from background state
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      String? payload;

      Map<String, dynamic> data = message.data;
      if (data.containsKey('deeplink')) {
        String deeplink = data['deeplink'];
        if (deeplink.contains('/orders/')) {
          payload = deeplink;
        }
      }

      if (notification != null) {
        if (android != null) {
          flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id, channel.name,
                channelDescription: channel.description,
                // icon: 'ic_stat_app_logo_on_a_dark',
                icon: 'ic_stat_app_logo_on_a_dark_4',
                color: AppColors.primary,
              ),
            ),
            payload: payload,
          );
        }
      }
    });
  }

  void _notificationClickedHandler(NotificationResponse message) {
    _notificationClick(message);
  }

  Future<void> _notificationClick(NotificationResponse? message) async {
    // Handle the notification click event
    // Navigate to a specific screen or perform an action
    ///message is orders
    if (message != null) {
      openDeepLink(message.payload!);
    }
  }

  void _handleMessage(RemoteMessage message) {
    Map<String, dynamic> data = message.data;
    if (data.containsKey('deeplink')) {
      String deeplink = data['deeplink'];
      openDeepLink(deeplink);
    }
  }

  Future openDeepLink(String deeplink) async {
    ///storeId/orders/orderId/
    /*if (deeplink.isNotEmpty) {
      if (deeplink.contains('/orders/')) {
        ///Deep link for orders has this form : storeId/orders/orderId/
        ///Segment [0] = storeID
        ///Segment [1] = orders
        ///Segment [2] = orderID
        List<String> segments = getDeepLinkSegments(deeplink);
        final storeId = segments[0];
        final orderId = segments[2];

        /// check if we're in the same store
        final currentStoreId = _localRepository.store.getStore().generalInfo.storeId;
        final isTapOnActiveStore = currentStoreId == storeId;

        ///NOT the same store case
        if (!isTapOnActiveStore) {
          ///Switch the store
          final store = (await _remoteRepository.store.getStore(storeId));

          store.fold((l) {
            final appBloc = Locator.injection.get<AppBloc>();
            appBloc.add(AppEvent.showErrorDialog(action: ShowSomethingWrong(errorResponse: l)));
          }, (r) {
            if (r != null) {
              ///pass new store id in order to switch stores
              _appRouter.replaceAll([
                NavigationScreen(currentStore: r, startTabType: TabsType.orders, navigateToOnStart: 'orders/$orderId')
              ], updateExistingRoutes: false);
            }
          });
        } else {
          ///Same store - GO directly to orders
          _appRouter.push(SelectedOrderScreen(orderId: orderId, orderNumber: '', statusName: ''));
        }
      }
    }*/
  }
}

/// temp solution
// import 'dart:async';
// import 'dart:developer';
// import 'dart:io';
//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:pimmer_app/app/navigation/app_router.dart';
// import 'package:pimmer_app/data/repositories/local/local_repository.dart';
//
// import 'package:pimmer_app/data/repositories/remote/remote_repository.dart';
//
// class NotificationsManager {
//   final FirebaseMessaging _messaging;
//   final AppRouter _appRouter;
//   final RemoteRepository _remoteRepository;
//   final LocalRepository _localRepository;
//   final FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();
//
//   static const String channelKey = 'high_importance_channel';
//   static const String channelName = 'ic_stat_app_logo_on_a_dark_4';
//
//   NotificationsManager({
//     required FirebaseMessaging messaging,
//     required AppRouter appRouter,
//     required RemoteRepository remoteRepository,
//     required LocalRepository localRepository,
//   })  : _messaging = messaging,
//         _appRouter = appRouter,
//         _remoteRepository = remoteRepository,
//         _localRepository = localRepository;
//
//   //static const MethodChannel _methodChannel = MethodChannel('notifications');
//   //static const Map<String, String> _methodChannelMap = {
//   //  "id": channelKey,
//   //  "name": channelName,
//   //  "description": "",
//   //};
//
//   _notificationDetails(String? title, String? body) {
//     BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
//       body ?? '',
//       htmlFormatBigText: true,
//       contentTitle: title,
//       htmlFormatContentTitle: true,
//       //summaryText: 'summary <i>text</i>',
//       htmlFormatSummaryText: true,
//     );
//     return NotificationDetails(
//       android: AndroidNotificationDetails(channelKey, channelName,
//           importance: Importance.max,
//           icon: 'ic_stat_app_logo_on_a_dark_4',
//           category: AndroidNotificationCategory.message,
//           styleInformation: bigTextStyleInformation,
//           groupKey: ''),
//       iOS: const DarwinNotificationDetails(),
//     );
//   }
//
//   Future showNotification({int id = 0, String? title, String? body, String? payLoad}) async {
//     return notificationsPlugin.show(id, title, body, await _notificationDetails(title, body), payload: payLoad);
//   }
//
//   Future<void> setUpNotifications() async {
//     _remoteRepository;
//     _localRepository;
//     await _initNotification();
//
//     NotificationSettings settings = await _messaging.requestPermission();
//
//     if (settings.authorizationStatus == AuthorizationStatus.authorized ||
//         settings.authorizationStatus == AuthorizationStatus.provisional) {
//       await _messaging.setForegroundNotificationPresentationOptions(
//         alert: true,
//         badge: true,
//         sound: true,
//       );
//     }
//
//     log('register listner', name: 'notification');
//     FirebaseMessaging.onMessage.listen(
//       (RemoteMessage message) async {
//         log('onMessage', name: 'notification');
//         String title = message.notification?.title ?? '';
//         String body = message.notification?.body ?? '';
//
//         if (Platform.isAndroid) {
//           try {
//             //String? imageUrl = message.notification?.android?.imageUrl;
//             if (title.isNotEmpty && body.isNotEmpty) {
//               showNotification(id: DateTime.now().second, title: title, body: body, payLoad: 'post/23');
//             }
//           } catch (e, s) {
//             log('$e,\n$s', name: 'notification');
//           }
//         }
//       },
//     );
//
//     //Приложение открылось по клику на пуш (приложение либо на экране, либо в трее)
//     FirebaseMessaging.onMessageOpenedApp.listen(
//       (message) {
//         log('onMessageOpenedApp', name: 'notification');
//         String? url = message.data['mobile_link'];
//         log('onMessageOpenedApp = message url == $url');
//         if (url != null) {
//           _navigateToSplash(url);
//         }
//       },
//     );
//     ////Приложение открылось по клику на пушь (приложение уничтожено)
//     //RemoteMessage? message = await _messaging.getInitialMessage();
//     //String? url = message?.data['mobile_link'];
//     //if (url != null) {
//     //  log('getInitialMessage');
//     //  _navigateToSplash(url);
//     //}
//   }
//
//   void _navigateToSplash(String url) {
//     _appRouter.popForced();
//   }
//
//   Future<void> _initNotification() async {
//     AndroidInitializationSettings initializationSettingsAndroid =
//         const AndroidInitializationSettings('ic_stat_app_logo_on_a_dark_4');
//
//     var initializationSettingsIOS = DarwinInitializationSettings(
//       onDidReceiveLocalNotification: onDidReceiveLocalNotification,
//     );
//
//     var initializationSettings =
//         InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
//     await notificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {
//         //todo onClickNotification
//         //await GetStorage().write('redirect',notificationResponse.payload );
//         log('push to payload ${notificationResponse.payload}', name: 'notification');
//         _navigateToSplash('123');
//       },
//     );
//   }
//
//   void onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) async {
//     //todo onClickNotification
//     log('push to ', name: 'notification');
//   }
// }
