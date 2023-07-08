void main() {
  final intValue = getValue<String>('value');
  intValue.printFirst();

  final stringValue = getValue<int>(3);
  stringValue.printFirst();

  List<double> doubleList = getValue<List<double>>([1.5, 2.5, 3.5]);
  print(doubleList);
}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}

T getValue<T>(T value){
  return value;
}
