// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pimmer_app/model/products.dart';
import 'package:pimmer_app/model/store.dart';
import 'package:pimmer_app/model/user.dart';
import 'package:pimmer_app/utils/language_helper.dart';
import 'package:pimmer_app/utils/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'local_parts/local_store.dart';
part 'local_parts/local_user.dart';

class LocalRepository {
  LocalRepository({
    required this.flutterSecureStorage,
    required this.sharedPreferences,
  })  : user = _LocalRepositoryUser.createInstance(
          flutterSecureStorage: flutterSecureStorage,
          sharedPreferences: sharedPreferences,
        ),
        store = _LocalRepositoryStore.createInstance(
          flutterSecureStorage: flutterSecureStorage,
          sharedPreferences: sharedPreferences,
        );

  static const _tokenKey = 'token';
  static const _exampleKey = 'exampleKey';
  static const _accessKey = 'authToken';
  static const _providerKey = 'authProvider';
  static const _productsKey = 'productsKey';
  static const _inviteKey = 'inviteKey';

  FlutterSecureStorage flutterSecureStorage;
  SharedPreferences sharedPreferences;
  _LocalRepositoryUser user;
  _LocalRepositoryStore store;

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

  Future<void> setAccessToken(String value) {
    logging(value, name: 'Token is set');
    return flutterSecureStorage.write(key: _accessKey, value: value);
  }

  Future<String?> getAccessToken() async {
    return flutterSecureStorage.read(key: _accessKey);
  }

  Future<void> setAuthProvider(String value) {
    return flutterSecureStorage.write(key: _providerKey, value: value);
  }

  Future<String?> getAuthProvider() async {
    return flutterSecureStorage.read(key: _providerKey);
  }

  Future<bool> saveProducts(List<Product> products, String idStore) {
    int count = 0;
    List<String> productsStr = [];
    for (var item in products) {
      if (item.isPlaceholder == false) {
        count++;
        productsStr.add(item.toRawJson());
      }
    }
    logging('products stored = $count', stackTrace: StackTrace.current);
    return sharedPreferences.setStringList('$_productsKey$idStore', productsStr);
  }

  Future<bool> clearProducts(String idStore) {
    int count = 0;
    List<String> productsStr = [];
    logging('products stored = $count', stackTrace: StackTrace.current);
    return sharedPreferences.setStringList('$_productsKey$idStore', productsStr);
  }

  List<Product>? getProducts(List<Product> products, String idStore) {
    List<Product> products = [];
    List<String>? list = sharedPreferences.getStringList('$_productsKey$idStore');
    if (list != null) {
      for (var item in list) {
        products.add(Product.fromRawJson(item));
      }
    }
    logging('products was restore = ${products.length}', stackTrace: StackTrace.current);
    if (products.isNotEmpty) return products;
    return null;
  }

  Future<bool> setInviteCode(String value) {
    return sharedPreferences.setString(_inviteKey, value);
  }

  String? getInviteCode() {
    return sharedPreferences.getString(_inviteKey);
  }

  Future<bool> clearInviteKey() {
    return sharedPreferences.remove(_inviteKey);
  }

  Future<void> clear() async {
    try {
      await sharedPreferences.clear();
      await flutterSecureStorage.deleteAll();
      await LanguageHelper.setLocaleToDefault();
      await GoogleSignIn(
        scopes: [
          'https://www.googleapis.com/auth/userinfo.profile',
          'https://www.googleapis.com/auth/userinfo.email',
        ],
      ).signOut();
    } catch (e, s) {
      logging(e.toString(), stackTrace: s);
    }
  }
}
