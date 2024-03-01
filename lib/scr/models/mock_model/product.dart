import 'dart:math';

import 'package:mbt_halal/scr/models/product.dart';

class MockProductModel extends ProductModel {
  static final _random = Random();

  MockProductModel(
      {String id = "mock_id",
      String image = 'assets/images/img/2.png',
      String name = "mock_name",
      String brand = "mock_brand",
      double price = 0.0,
      String description = "mock_description"})
      : super(
            id: id,
            image: image,
            name: name,
            brand: brand,
            price: price,
            description: description);

  factory MockProductModel.random() {
    return MockProductModel(
      id: "mock_id_${_random.nextInt(100)}",
      image:
          'assets/images/img/${_random.nextInt(3)}.png', // Utilisation d'une image aléatoire
      name: "mock_name_${_random.nextInt(100)}",
      brand: "mock_brand_${_random.nextInt(100)}",
      price: (_random.nextDouble() * 100),
      description: "mock_description_${_random.nextInt(100)}",
    );
  }
}
