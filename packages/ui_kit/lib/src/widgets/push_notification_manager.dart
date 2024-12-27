import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';

class PushNotificationManager extends StatefulWidget {
  final ValueChanged<PushNotificationMessageDataModel> openScreen;
  final Widget child;

  const PushNotificationManager({
    required this.child,
    required this.openScreen,
    Key? key,
  }) : super(key: key);

  @override
  _PushNotificationManagerState createState() => _PushNotificationManagerState();
}

class _PushNotificationManagerState extends State<PushNotificationManager> {
  Future<void> setNotifications() async {
    // FirebaseMessaging.onMessageOpenedApp.listen(openMessage);
  }

  // Future<void> openMessage(RemoteMessage message) async {
  //   if (message.data != null) {
  //     final filterService = GetIt.I.get<FilterService>();
  //     final info = filterService.converterNotificationInfo(
  //       value: message.data['section'],
  //     );
  //     widget.openScreen(PushNotificationMessageDataModel(
  //       uid: message.data['uid'],
  //       section: info.url,
  //       idMessage: message.data['id_message'],
  //       type: message.data['type'],
  //       sort: message.data['sort'],
  //       filterNotifcation: info,
  //       codeProduct: message.data['code_product'],
  //       idNews: message.data['id_news'],
  //     ));
  //   }
  //   log('${message.data['tag']}');
  //   log('Open message');
  // }

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      setNotifications();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

Future<void> initializeDefault() async {
  FirebaseApp app = await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCIgCCJNbiCYSS4kcT7iIxHIjO7yi80Sww',
      appId: '1:1085146611593:android:18880eab0fb8784ad56b58',
      messagingSenderId: '1085146611593',
      projectId: 'blind-chicken-17561',
      storageBucket: 'blind-chicken-17561.appspot.com',
    ),
  );
  log('Initialized default app $app');
}
