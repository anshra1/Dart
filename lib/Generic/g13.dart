void main() {
  int add(int i, int j) => i + j;
  int ss = fun((person) => add(2, 3));
  ss.printFirst();
}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}

T fun<T, E>(T Function(Person) e) {
  Person person = Person();
  return e(person);
}

class Person {
  Person();
}
