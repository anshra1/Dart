void main() {
  Iterable<int> iterable = [1, 2, 3, 3];
  int d = iterable.firstWhere((element) => element > 10, orElse: () => -1);
  d.printFirst();
  print(iterable.first);
  iterable.last.printFirst();
  String myName = 'Ansh Raj';
  final sp = myName.split('');
  sp.printFirst();

  print('==============');


  try {
    iterable.singleWhere((element) => element == 3).printFirst();
  } catch (e) {
    print(e);
  }

  final names = ['ansh', 'anand', 'raj', 'vishnu'];
  names.any((element) => element.contains('a')).printFirst();
  names.every((element) => element.contains('a')).printFirst();

  print('----------------');

  iterable.where((element) => element > 2).printFirst();
  var number = [1, 3, 4, 56, 7].where((element) => element > 2000).printFirst();
  print('----------');

  const numbers = [2, 1, 3, 11, -2, 0, 4, 5, 100, -100, 7, 8];

  var numbersUntilZero = numbers.takeWhile((number) => !number.isOdd);
  print('Numbers until 0: $numbersUntilZero');

  var numbersStartingAtZero = numbers.skipWhile((number) => number != 0);
  print('Numbers starting at 0: $numbersStartingAtZero');

  print('--------------');

  final output = numbers.map((number) => number * 10);
  output.printFirst();

  final user = [User('Ansh', 26)];

  getNameAndAges(user).printFirst();

  Map<String, String> iter = {'name':'Ansh Raj'};

}

Iterable<String> getNameAndAges(Iterable<User> users) {
  return users.map((e) => '${e.name} is ${e.age}');
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}

extension Print on Object {
  void printFirst() {
    print(this);
  }
}
