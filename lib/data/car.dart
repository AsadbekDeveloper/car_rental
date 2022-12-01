import 'package:car_rental/data/car_models.dart';
import 'package:flutter/foundation.dart';

class Car with ChangeNotifier {
  final String name;
  final CarModels model;
  final String description;
  final String speed;
  final String seats;
  final String engine;
  final String price;
  final String date;

  Car({
    required this.name,
    required this.model,
    required this.description,
    required this.speed,
    required this.seats,
    required this.engine,
    required this.price,
    required this.date,
  });
}

class Cars with ChangeNotifier {
  List<Car> cars = [
    Car(
      name: 'Damas',
      model: CarModels.damas,
      description: 'Yangi Damas avtomobili',
      speed: '150 km/h',
      seats: '8',
      engine: '4.0 L VB',
      price: r'$100',
      date: '02  Sep 2015',
    ),
    Car(
      name: 'Nexia',
      model: CarModels.nexia,
      description: 'Yangi Nexia avtomobili',
      speed: '200 km/h',
      seats: '5',
      engine: '4.0 L VB',
      price: r'$150',
      date: '21  Jun 2021',
    ),
  ];
}
