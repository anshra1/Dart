void main() {
  print(1.2.toInt() == 1);
  print('dd'.toInt() == 0);
  print(6.toInt());
  print(true.toInt() == 0);
  print({1, 3}.toInt() == 4);
  print(['3', '4'].toInt());

  final numbers = [1, 2, 3, 4, 5];
  final sum = numbers.map((e) => (e)).reduce((a, b) => a + b);
  print(sum); // Output: 15
}

extension ToInt on Object {
  int toInt() {
    final list = [
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
      else if (this is int)
        {this}
      else
        {(double.tryParse(toString()) ?? 0.0).round()}
    ];

    return list
        .map(
          (e) => (double.tryParse(e.toString()) ?? 0.0).round(),
        )
        .reduce((value, element) => value + element);
  }

  int toIntd() {
    // own Version
    final list = [
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
      else if (this is int)
        this
      else if (this is String)
        5
      else if (this is bool)
        1
      else
        {(double.tryParse(toString()) ?? 0.0).round()}
    ];

    return list
        .map(
          (e) => (int.parse(e.toString())).round(),
        )
        .reduce((value, element) => value + element);
  }
}
