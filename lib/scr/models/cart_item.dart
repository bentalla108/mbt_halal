class CartItemModel {
  final String id;
  final String image;
  final String name;
  final int quantity;
  final double cost;
  final String productId;
  final double price;

  CartItemModel({
    required this.productId,
    required this.price,
    required this.id,
    required this.image,
    required this.name,
    required this.quantity,
    required this.cost,
  });

  factory CartItemModel.fromMap(Map<String, dynamic> data) {
    return CartItemModel(
      id: data['id'],
      image: data['image'],
      name: data['name'],
      quantity: data['quantity'],
      cost: data['cost'].toDouble(),
      productId: data['productId'],
      price: data['price'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'productId': productId,
        'image': image,
        'name': name,
        'quantity': quantity,
        'cost': price * quantity,
        'price': price,
      };
}
