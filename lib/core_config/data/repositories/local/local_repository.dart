// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:blind_chicken/core_config/utils/language_helper.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'local_parts/local_example.dart';

class LocalRepository {
  LocalRepository({
    required this.flutterSecureStorage,
    required this.sharedPreferences,
  }) : //user = _LocalRepositoryExample.createInstance(
        //  flutterSecureStorage: flutterSecureStorage,
        //  sharedPreferences: sharedPreferences,
        //),
        store = _LocalRepositoryExample.createInstance(
          flutterSecureStorage: flutterSecureStorage,
          sharedPreferences: sharedPreferences,
        );

  static const _tokenKey = 'token';
  static const _exampleKey = 'exampleKey';
  static const _newsKey = 'news';

  FlutterSecureStorage flutterSecureStorage;
  SharedPreferences sharedPreferences;
  _LocalRepositoryExample store;

  Future<String?> getToken() async {
    String? token = await flutterSecureStorage.read(key: _tokenKey);
    return token;
  }

  Future<void> setToken(String? apiToken) {
    return flutterSecureStorage.write(key: _tokenKey, value: apiToken);
  }

  Future<bool> setExampleKeyValue(bool value) {
    return sharedPreferences.setBool(_exampleKey, value);
  }

  bool? getExampleKeyValue() {
    return sharedPreferences.getBool(_exampleKey);
  }

  Future<bool> setNewsWasReadValue(String idNews) {
    return sharedPreferences.setBool(idNews + _newsKey, true);
  }

  bool getNewsWasReadValue(String idNews) {
    return sharedPreferences.getBool(idNews + _newsKey) ?? false;
  }

  Future<void> clear() async {
    try {
      await sharedPreferences.clear();
      await flutterSecureStorage.deleteAll();
      await LanguageHelper.setLocaleToDefault();
    } catch (e, s) {
      logging(e.toString(), stackTrace: s);
    }
  }
}
