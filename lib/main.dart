import 'dart:developer';
import 'dart:io';
import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:blind_chicken/app.dart';
import 'package:blind_chicken/bootstraper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

AppMetricaConfig get _config => const AppMetricaConfig(
      '0f36d6f0-0774-4cf2-ad27-20b0289ddcf1',
      logs: true,
    );

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppMetrica.activate(_config);
  await setupIoc();

  runApp(const App());
  if (Platform.isAndroid) {
    await initializeDefault();
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
