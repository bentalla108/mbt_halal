class ProductModel {
  static const String ID = "id";
  static const String IMAGE = "image";
  static const String NAME = "name";
  static const String BRAND = "brand";
  static const String PRICE = "price";

  final String id;
  final String image;
  final String name;
  final String brand;
  final double price;

  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: data[ID],
      image: data[IMAGE],
      name: data[NAME],
      brand: data[BRAND],
      price: data[PRICE].toDouble(),
    );
  }
}
