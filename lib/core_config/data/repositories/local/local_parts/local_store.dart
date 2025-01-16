part of '../local_repository.dart';

abstract class _RepositoryStore {
  Future<void> saveStore(Store store);

  Store getStore();
}

class _LocalRepositoryStore implements _RepositoryStore {
  _LocalRepositoryStore._privateConstructor({required this.flutterSecureStorage, required this.sharedPreferences});

  static _LocalRepositoryStore createInstance({
    required FlutterSecureStorage flutterSecureStorage,
    required SharedPreferences sharedPreferences,
  }) {
    return _LocalRepositoryStore._privateConstructor(
      flutterSecureStorage: flutterSecureStorage,
      sharedPreferences: sharedPreferences,
    );
  }

  final FlutterSecureStorage flutterSecureStorage;
  final SharedPreferences sharedPreferences;

  static const _store = 'store';

  @override
  Future<void> saveStore(Store store) async {
    final data = store.toJson();
    await sharedPreferences.setString(_store, jsonEncode(data));
  }

  @override
  Store getStore() {
    final prefData = sharedPreferences.getString(_store);

    final decode = jsonDecode(prefData!);
    final store = Store.fromJson(decode);
    return store;
  }
}
