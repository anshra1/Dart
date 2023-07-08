void main() {
  const keyValue = KeyValue(1, 2);
  keyValue.key.printSecond().printFirst();
  print(keyValue.key);
  MapEntry<String,int> mapEntry = const MapEntry('3', 3);

  Map map = Map.fromEntries([keyValue]);

  Map<String, int> ages = Map.fromEntries([
    MapEntry('Alice', 25),
    MapEntry('Bob', 30),
    MapEntry('Charlie', 35),
    mapEntry,
  ]);
  print(ages['Charlie']); // Output: 35
}

typedef KeyValue<K, V> = MapEntry<K, V>;

extension Print on Object {
  void printFirst() {
    print(this);
  }

  Object printSecond() {
    return this;
  }
}


// map vs mapEntry
