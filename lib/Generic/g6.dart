void main() {
  const person = Person(height: 1);
  person.height.printFirst();

  const fish = Fish(height: 1.3);
  fish.height.printFirst();
}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}

mixin HasHeight<H extends num> {
  H get height;
}

typedef HasIntHeigt = HasHeight<int>;
typedef HasDobleHeight = HasHeight<double>;

class Person with HasIntHeigt {
  @override
  final int height;

  const Person({required this.height});
}

class Fish with HasDobleHeight {
  @override
  final double height;

  const Fish({required this.height});
}
