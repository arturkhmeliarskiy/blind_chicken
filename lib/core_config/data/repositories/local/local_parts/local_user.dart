part of '../local_repository.dart';

abstract class _RepositoryUser {
  User? getUser();

  Future<String?> getUserId();

  Future<void> setUserId(String? userId);

  Future<bool> saveUser(User user);

  Future<User?> getMe();
}

class _LocalRepositoryUser implements _RepositoryUser {
  _LocalRepositoryUser._privateConstructor({required this.flutterSecureStorage, required this.sharedPreferences});

  static _LocalRepositoryUser createInstance({
    required FlutterSecureStorage flutterSecureStorage,
    required SharedPreferences sharedPreferences,
  }) {
    return _LocalRepositoryUser._privateConstructor(
      flutterSecureStorage: flutterSecureStorage,
      sharedPreferences: sharedPreferences,
    );
  }

  final FlutterSecureStorage flutterSecureStorage;
  final SharedPreferences sharedPreferences;

  static const _userIdKey = 'userId';
  static const _userKey = 'userKey';

  @override
  User? getUser() {
    String? string = sharedPreferences.getString(_userKey);
    if (string != null) {
      return User.fromRawJson(string);
    }
    return null;
  }

  @override
  Future<String?> getUserId() async {
    String? token = await flutterSecureStorage.read(key: _userIdKey);
    return token;
  }

  @override
  Future<void> setUserId(String? userId) {
    return flutterSecureStorage.write(key: _userIdKey, value: userId);
  }

  @override
  Future<bool> saveUser(User user) {
    return sharedPreferences.setString(_userKey, user.toRawJson());
  }

  @override
  Future<User?> getMe() async {
    return getUser();
  }
}
