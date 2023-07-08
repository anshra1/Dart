void main() {
  final vehicle = VehicleType.car;

  switch (vehicle) {
    case VehicleType.bus:
    case VehicleType.car:
    case VehicleType.bicycle:
      print('Most Common');
      break;
    case VehicleType.train:
      print('Public Transport');
      break;
  }
}

enum VehicleType { bus, car, bicycle, train }
