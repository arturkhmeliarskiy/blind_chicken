import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:appmetrica_push_plugin/appmetrica_push_plugin.dart';
import 'package:blind_chicken/app.dart';
import 'package:blind_chicken/bootstraper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';

AppMetricaConfig get _config => const AppMetricaConfig(
      '0f36d6f0-0774-4cf2-ad27-20b0289ddcf1',
      logs: true,
    );

Future<void> main() async {
  AppMetrica.runZoneGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    AppMetrica.activate(_config);
    AppMetricaPush.activate();

    await setupIoc();

    FlutterError.onError = (details) async {
      FlutterError.presentError(details);
      await sendError(
        exception: details.exceptionAsString(),
        stack: details.stack.toString(),
      );
      log('Stack ${details.stack.toString()}');
      log('Error ${details.exception.toString()}');
      log('Relevant ${details.exceptionAsString()}');
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      sendError(
        exception: error.toString(),
        stack: stack.toString(),
      );
      log('Dispatcher $error $stack');
      return true;
    };
    runApp(const App());
    if (Platform.isAndroid) {
      await initializeDefault();
    }
  });
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

Future<void> sendError({
  required String stack,
  required String exception,
}) async {
  // final errorAnalyzer = GetIt.I.get<ErrorAnalyzerRepository>();
  // await errorAnalyzer.sendError(stack: stack, exception: exception);
}
