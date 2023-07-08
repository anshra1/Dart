void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  final n = numbers.filterAndTransform<int, int>((p) => add(p, 4));
  n.printFirst();
}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}

int add(int i, int j) => i + j;

extension<T> on List<T> {
  List<R> filterAndTransform<E, R>(R Function(E) transform) {
    List<T> list = this;
    List<R> result = [];
    for (var item in list) {
      if (item is E) {
        result.add(transform(item));
      }
    }
    return result;
  }
}
