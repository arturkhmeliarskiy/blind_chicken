import 'package:blind_chicken/app.dart';
import 'package:blind_chicken/bootstraper.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupIoc();
  runApp(App());
}
