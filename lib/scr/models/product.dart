class ProductModel {
  final String id;
  final String image;
  final String name;
  final String brand;
  final double price;
  final String description;
  final bool inStock;
  final double quantity;

  ProductModel({
    required this.description,
    required this.id,
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
    this.inStock = true,
    this.quantity = 0,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: data['id'],
      image: data['image'],
      name: data['name'],
      brand: data['brand'],
      inStock: data['inStock'],
      quantity: data['quantity'].toDouble(),
      description: data['description'],
      price: data['price'].toDouble(),
    );
  }
}
