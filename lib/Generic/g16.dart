abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }

  void fetch() {
    print("Dog fetches a ball");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }

  void scratch() {
    print("Cat scratches furniture");
  }
}

class Zoo<T extends Animal> {
  late List<T> animals;

  Zoo() {
    animals = [];
  }

  void addAnimal(T animal) {
    animals.add(animal);
  }

  void displayAnimals() {
    for (var animal in animals) {
      animal.makeSound();
    }
  }
}

void main() {
  final zoo = Zoo<Animal>();

  final dog = Dog();
  final cat = Cat();

  zoo.addAnimal(dog);
  zoo.addAnimal(cat);

  zoo.displayAnimals(); // Output: Dog barks, Cat meows

  dog.fetch();
  cat.scratch();

}
