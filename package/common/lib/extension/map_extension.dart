extension MapExtension<K, V> on Map<K, V>? {
  int get length {
    return this?.length ?? 0;
  }

  bool get isEmpty {
    return this == null ? true : length == 0;
  }

  bool get isNotEmpty {
    return this == null ? false : length != 0;
  }
}
