void main() {
  final woof = Animal(name: 'Woof', animalType: AnimalType.dog);

  if (woof.animalType == AnimalType.cat) {
    print('This is  not dog');
  } else {
    print('This  is cat');
  }

  switch (woof.animalType) {
    case AnimalType.dog:
      print('This is dog');
      break;
    case AnimalType.cat:
      print('This is cat');
      break;
    case AnimalType.fish:
      print('This is Fish');
      break;

  }
}

enum AnimalType { dog, cat, fish, fox }

class Animal {
  final String name;
  final AnimalType animalType;

  Animal({required this.name, required this.animalType});
}
