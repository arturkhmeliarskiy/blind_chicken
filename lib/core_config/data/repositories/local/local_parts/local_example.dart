part of '../local_repository.dart';

class ExampleStore {
  String toJson() => '';

  static ExampleStore fromJson(String json) => ExampleStore();
}

abstract class _RepositoryStore {
  Future<void> saveStore(ExampleStore store);

  ExampleStore getStore();
}

class _LocalRepositoryExample implements _RepositoryStore {
  _LocalRepositoryExample._privateConstructor({required this.flutterSecureStorage, required this.sharedPreferences});

  static _LocalRepositoryExample createInstance({
    required FlutterSecureStorage flutterSecureStorage,
    required SharedPreferences sharedPreferences,
  }) {
    return _LocalRepositoryExample._privateConstructor(
      flutterSecureStorage: flutterSecureStorage,
      sharedPreferences: sharedPreferences,
    );
  }

  final FlutterSecureStorage flutterSecureStorage;
  final SharedPreferences sharedPreferences;

  static const _store = 'store';

  @override
  Future<void> saveStore(ExampleStore store) async {
    final data = store.toJson();
    await sharedPreferences.setString(_store, jsonEncode(data));
  }

  @override
  ExampleStore getStore() {
    final prefData = sharedPreferences.getString(_store);

    final decode = jsonDecode(prefData!);
    final store = ExampleStore.fromJson(decode);
    return store;
  }
}
