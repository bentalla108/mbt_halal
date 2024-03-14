class CartItemModel {
  final String cartId;
  final String image;
  final String name;
  final int quantity;
  final double cost;
  final String productId;
  final double price;

  CartItemModel({
    required this.productId,
    required this.price,
    required this.cartId,
    required this.image,
    required this.name,
    required this.quantity,
    required this.cost,
  });

  factory CartItemModel.fromMap(Map<String, dynamic>? data) {
    if (data == null) {
      throw ArgumentError("Data cannot be null");
    }

    return CartItemModel(
      cartId: data['cartId']?.toString() ?? '',
      image: data['image']?.toString() ?? '',
      name: data['name']?.toString() ?? '',
      quantity: (data['quantity'] as num?)?.toInt() ?? 0,
      cost: (data['cost'] as num?)?.toDouble() ?? 0.0,
      productId: data['productId']?.toString() ?? '',
      price: (data['price'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': cartId,
        'productId': productId,
        'image': image,
        'name': name,
        'quantity': quantity,
        'cost': price * quantity,
        'price': price,
      };
}
