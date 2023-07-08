void main() {
  Person person = Person(firstName: 'Ansh', lastName: 'Raj');
  print(person.fullName);

  NewPerson newPerson = NewPerson(firstName: 'Ansh ', lastName: 'Raj');
  print(newPerson.fullName);
}

class Person {
  final String firstName;
  final String lastName;
  String fullName;

  Person({required this.firstName, required this.lastName})
      : fullName = '$firstName $lastName';
}

class NewPerson {
  final String firstName;
  final String lastName;

  String get fullName => '$firstName $lastName';

  NewPerson({required this.firstName, required this.lastName});
}
