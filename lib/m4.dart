void main() {
  final human = Human();
  human.run();
}

class Has2Feet {
  Has2Feet();
}

class Human extends Has2Feet with canRun {
  Human();
}


 // class Hemo with canRun {}  do not work

mixin canRun on Has2Feet {
  void run() => print('$runtimeType is running');
}
