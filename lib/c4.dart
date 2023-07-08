 void main() {
  print(Car.speed);
  Car car = Car(carName: 'Car');

  print(Car.speed);
}
class Car {
  static int _speed = 0;

  static int get speed => _speed;
  String carName;

  void carSpeed() => _speed++;

  Car({required this.carName}) {
    carSpeed();
  }
}
