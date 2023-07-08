void main() {
  final int intValue = eitherIntOrDouble();
  intValue.printFirst();

  final double doubleValue = eitherIntOrDouble();
  doubleValue.printFirst();

  final String string = eitherIntOrDouble();
  string.printFirst();
  print('object');
}

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.2 as T;
    case String:
      return 'ss' as T;
    default:
      throw Exception('Unknown Type');
  }
}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}
