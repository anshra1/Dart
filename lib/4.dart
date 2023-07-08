void main() {
  AnimalType.cat.jump();
}

mixin canJump {
  int get feetCount;

  void jump() {
    if (feetCount < 1) {
      throw Exception('Cannot Jump');
    } else {
      print('Jumped');
    }
  }
}

enum AnimalType with canJump {
  cat(feetCount: 4),
  dog(feetCount: 4),
  fish(feetCount: 0);

  @override
  final int feetCount;

  const AnimalType({required this.feetCount});
}
