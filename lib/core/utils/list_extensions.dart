import 'dart:io';

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = <dynamic>{};
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}

extension ByPlatform<T> on List<T> {
  T get byPlatform {
    if (Platform.isIOS || Platform.isMacOS) {
      return this[1];
    }
    return this[0];
  }
}

extension ByPlatformText on String {
  String get byPlatform {
    if (Platform.isIOS || Platform.isMacOS) {
      return this;
    }
    return toUpperCase();
  }
}

extension NullOrEmptyExtension<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

bool get isCupertino => Platform.isIOS || Platform.isMacOS;
bool get isMaterial => !isCupertino;
