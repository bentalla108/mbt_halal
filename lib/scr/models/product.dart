class ProductModel {
  final String? id;
  final String? productId;
  final String? image;
  final String? name;
  final String? brand;
  final double? price;
  final String? description;
  final bool? inStock;
  final double? quantity;

  ProductModel({
    required this.description,
    required this.id,
    required this.productId,
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
    this.inStock = false,
    this.quantity = 0,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
      id: data['id']?.toString() ?? '',
      productId: data['productId']?.toString() ?? '',
      image: data['image'] ?? "",
      name: data['name'] ?? "",
      brand: data['brand'] ?? "",
      inStock: data['inStock'],
      quantity: data['quantity']?.toDouble() ?? 0.0,
      description: data['description'] ?? "",
      price: data['price'].toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'brand': brand,
      'price': price,
      'description': description,
      'inStock': inStock,
      'quantity': quantity,
    };
  }
}
