void main() {
  final johnDoe = Person(lastName: 'John', firstName: 'Doe');
  print(johnDoe.fullName);
  print(getFullname(johnDoe));
}

String getFullname(hasFullName obj) => obj.fullName;

mixin hasFirstName {
  String get firstName;
}

mixin hasLastName {
  String get lastName;
}

mixin hasFullName on hasFirstName, hasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with hasFirstName, hasLastName, hasFullName {
  // @override
  // String get firstName => 'Ansh Raj';

  @override
  final String firstName;

  @override
  final String lastName;

  Person({required this.lastName, required this.firstName});
}
