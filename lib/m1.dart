void main() {
  final person = Person();
  print(person.speed);
  person.jump(speed: 10);
  person.walk(speed: 5);
}

mixin hasSpeed {
  abstract double speed;
}

mixin CanJump on hasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at $speed speed');
  }
}

mixin CanWalk on hasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at speed of $speed');
    this.speed = speed;
  }
}

class Person with hasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0;
}
