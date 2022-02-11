//Assignment 7 In Dart
//Service station
void main() {
  Vehical vehical = Vehical();
  Bus bus = Bus();
  Bike bike = Bike();
  Truck truck = Truck();
  Car car = Car();

  //ServiceCenter(vehical);
  ServiceCenter(car);
  ServiceCenter(bus);
  // ServiceCenter(bike);
  ServiceCenter(truck);
}

ServiceCenter(Vehical vehical) {
  vehical.DoService();
}

class Vehical {
  DoService() {
    print("Vehical Is Servicing....");
  }
}

class Car extends Vehical {
  @override
  DoService() {
    print("Car Is Servicing....");
  }
}

class Bus extends Vehical {
  @override
  DoService() {
    print("Bus Is Servicing....");
  }
}

class Truck extends Vehical {
  @override
  DoService() {
    print("Truck Is Servicing....");
  }
}

class Bike extends Vehical {
  @override
  DoService() {
    print("Bike Is Servicing....");
  }
}
