import 'package:uuid/uuid.dart';

void main() {
  final uuid1 = const Uuid().v4();
  final uuid2 = const Uuid().v4();

  final person1 = Person(id: uuid1, name: 'Ansh', age: 25);
  final person1Again = Person(id: uuid1, name: 'ansh', age: 25);
  final person2 = Person(id: uuid2, name: 'Ansh Raj', age: 25);

  if (person1 == person1Again) {
    print('Person1 and person1Again are equel');
  }

  if (person1 == person2) {
    print('Person 1 and Person 2 are equel');
  } else {
    print('Person 1 and Person 2 are not equel');
  }
}

mixin hasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is hasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with hasIdentifier {
  @override
  final String id;
  final String name;
  final int age;

  Person({required this.id, required this.name, required this.age});
}
