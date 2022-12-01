import 'package:flutter/foundation.dart';

import 'car_models.dart';

class Brand with ChangeNotifier {
  final String name;
  final String imageUrl;

  Brand({
    required this.name,
    required this.imageUrl,
  });
}

class Brands with ChangeNotifier {
  List<Brand> brands = List.generate(CarModels.values.length, (index) {
    final String name = CarModels.values[index].name;
    return Brand(name: name, imageUrl: 'assets/images/models/$name.jpg');
  });
}

