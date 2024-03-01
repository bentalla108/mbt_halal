class ProductModel {
  static const String _ID = "id";
  static const String _IMAGE = "image";
  static const String _NAME = "name";
  static const String _BRAND = "brand";
  static const String _PRICE = "price";
  static const String _DESCRIPTION = "description";

  final String id;
  final String image;
  final String name;
  final String brand;
  final double price;
  final String description;

  ProductModel({
    required this.description,
    required this.id,
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: data[_ID],
      image: data[_IMAGE],
      name: data[_NAME],
      brand: data[_BRAND],
      description: data[_DESCRIPTION],
      price: data[_PRICE].toDouble(),
    );
  }
}
