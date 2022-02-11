import 'dart:io';

void main() {
//Assignment 4 In Dart

  print("Enter Car Model To Get Its Current Price:");
  String car = stdin.readLineSync()!;
  if (car != "") {
    cars(car);
  } else {
    print("Please Enter Car Model To Get Its Current Price:");
  }
}

cars(String car) {
  Map<String, String> Cars_Price = {
    "Toyota Corolla": "3,800,000",
    "Toyota Yaris": "2,749,000",
    "Toyota Fortuner": "8,149,000",
    "Honda City": "2,599,000",
    "Honda Civic": "3,979,000",
    "Honda Accord": "11,999,000",
    "Kia Stonic": "3,660,000",
    "Kia Sportage": "5,000,000",
    "Kia Picanto": "1,781,000",
    "Hyundai Tucson": "5,469,000",
    "Hyundai Sonata": "6,499,999",
    "Hyundai Elantra": "39,99,000"
  };

  if (Cars_Price.containsKey(car)) {
    Cars_Price.forEach((key, value) {
      if (car == key) {
        print("Price of $key is PKR:$value");
      }
    });
  } else {
    print("We Dont Have Record Of This $car Car !!!");
  }
}
