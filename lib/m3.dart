void main() {
  final whisker = Cat(age: 10);
  print(whisker.age);
  whisker.increment();
  print(whisker.age);
}

mixin hasAge {
  abstract int age;

  void increment() => age++;
}

class Cat with hasAge {
  @override
  int age;

  Cat({required this.age});
}
