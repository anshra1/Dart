void main() {
  final animal = Animal.foo();
  print(animal.name);
  final a2 = Animal.other(name: 'ANsh raj');
  print(a2.name);

  final a3 = Animal('ansh raj');
}

class Animal {
  final String name;
  final int age;

//  Animal([this.name = 'ansh raj ',this.age = 40]);
  Animal(this.name, [this.age = 34]);

  // optional Constructor

  const Animal.other({String? name, int? age})
      : name = name ?? 'baz',
        age = age ?? 25;

  // one named Constructor
   const Animal.bar({required this.age}) : name = 'bar';

  // named Constructor
  const Animal.foo()
      : name = 'foo',
        age = 25;
}

class Person {
  final String name;
  final String age;

  Person({required this.name, required this.age});

// Person({required String name, required String age})
//     : name = name,
//       age = age;
}
