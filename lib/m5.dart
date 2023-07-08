void main() {
  final catSet = <Cat>{
    Cat(name: 'kitty1', age: '1'),
    Cat(name: 'kitty2', age: '2'),
    Cat(name: 'kitty1', age: '1'),
    Cat(name: 'kitty4', age: '4'),
  };


  catSet.forEach((element) {
    print(element);
  });
}

enum PetType { cat, dog }

mixin pet {
  PetType get petType;

  String get name;

  String get age;

  @override
  String toString() {
    return 'Pet ($petType), $name , $age';
  }

  @override
  int get hashCode => Object.hash(name, age, petType);

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with pet {
  @override
  final String age;

  @override
  final String name;

  @override
  final PetType petType;

  Cat({required this.name, required this.age}) : petType = PetType.cat;
}
