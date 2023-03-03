R run<R>(R Function() operation) {
  return operation();
}

extension DynamicExtension<T extends Object> on T? {
  R let<R>(R Function(T? self) operationFor) {
    return operationFor(this);
  }

  T orDefault(T Function(T? self) valueDefault) {
    if (this != null) {
      return this!;
    } else {
      return valueDefault(this);
    }
  }

  T? also(void Function(T? self) operationFor) {
    operationFor(this);
    return this;
  }

  T? takeIf(bool Function(T? self) predicament) {
    return predicament.call(this) ? this : null;
  }

  T? takeUnless(bool Function(T? self) predicament) {
    return predicament.call(this) ? null : this;
  }
}
