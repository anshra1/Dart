void main() {
  Vehicle vehicle = Vehicle(counts: 4);
  print(vehicle);
  Car car = Car();
  print(car);
}

class Vehicle {
  final int counts;

  Vehicle({required this.counts});

  // @override
  // String toString(){
  //   if(runtimeType == Vehicle) {
  //     return  '$runtimeType with $counts wheels';
  //   }else {
  //     return super.toString();
  //   }
  // }

  @override
  String toString() {
    return '$runtimeType with $counts wheels';
  }
}

class Car extends Vehicle {
  Car() : super(counts: 4);
}
