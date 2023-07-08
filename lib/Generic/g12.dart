void main() {
  final personName =
      personThing.mapIfOfType((Person p) => p.name) ?? 'unknown person name';
  personName.printFirst();


}

const Thing personThing = Person(age: 12, name: 'Foo');
const Thing animalThing = Animal(name: 'Barley', species: 'Cat');

extension<T> on T {
  R? mapIfOfType<E, R>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      return f(shadow);
    } else {
      return null;
    }
  }
}


extension Print on Object {
  void printFirst() {
    print(this);
  }
}

abstract class Thing {
  final String name;

  const Thing({required this.name});
}

class Person extends Thing {
  final int age;

  const Person({required this.age, required String name}) : super(name: name);
}

class Animal extends Thing {
  final String species;

  const Animal({required String name, required this.species})
      : super(name: name);
}
