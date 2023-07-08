void main() {
  // print(AnimalType.cat.name);
  // describe(AnimalType.fox);
  // describe(animalType(str: 'cat'));
  // describe(animalType(str: 'fox'));
  animalType(str: 'dog');
  describe(animalType(str: 'cat'));
  print(animalType(str: 'fox'));
}

enum AnimalType { dog, cat, fish, fox, monkey }

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.dog:
      print('This is dog');
      break;
    case AnimalType.cat:
      print('This is cat');
      break;
    case AnimalType.fox:
      print('This is fox');
      break;
    default:
      print('Unknown Animal');
  }
}

AnimalType? animalType({required String str}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == str);
  } catch (e) {
    return null;
  }
}
