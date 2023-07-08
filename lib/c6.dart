void main() {
  final car = Car();
  print(car.vehicleKind);
  car.acclerate();
  car.deacclerate();

}

abstract class Vehicle {
  final VehicleKind vehicleKind;

  Vehicle({required this.vehicleKind});

  void acclerate() => print('$vehicleKind is accelerating');

  void deacclerate() => print('${vehicleKind.name} is deaccelerating');
}

class Car extends Vehicle {
  Car() : super(vehicleKind: VehicleKind.car);

  @override
  void acclerate(){
    print('car acclerate');
  }
}

class Train implements Vehicle{
  @override
  void acclerate() {

  }

  @override
  void deacclerate() {
    // TODO: implement deacclerate
  }

  @override
  // TODO: implement vehicleKind
  VehicleKind get vehicleKind => throw UnimplementedError();

}

enum VehicleKind { car, bus, bike, aeroplane }
