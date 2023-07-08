void main() {
  print('Vehicle Type ${Vehicle.car().runtimeType}');
  print(Vehicle.truck());
}

class Vehicle {
  Vehicle();

  factory Vehicle.car() => Car();

  factory Vehicle.truck() => Truck();

  String toString() => 'Vehicle Type $runtimeType';
}

class Car extends Vehicle {
  Car();
}

class Truck extends Vehicle {
  Truck();
}
