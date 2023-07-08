void main() {
  const intgers = [1000,100,10 ];
  const doubles = [100.10,50.0,10];
  intgers.reduce((value, element) => divide(value, element)).printFirst();
  doubles.reduce((value, element) => divide(value, element)).printFirst();

}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}

T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T;
  } else {
    return lhs / rhs as T;
  }
}
