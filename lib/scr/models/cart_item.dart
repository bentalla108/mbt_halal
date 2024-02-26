class CartItemModel {
  static const String ID = "id";
  static const String IMAGE = "image";
  static const String NAME = "name";
  static const String QUANTITY = "quantity";
  static const String COST = "cost";
  static const String PRICE = "price";
  static const String PRODUCT_ID = "productId";

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
      id: data[ID],
      image: data[IMAGE],
      name: data[NAME],
      quantity: data[QUANTITY],
      cost: data[COST].toDouble(),
      productId: data[PRODUCT_ID],
      price: data[PRICE].toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        ID: id,
        PRODUCT_ID: productId,
        IMAGE: image,
        NAME: name,
        QUANTITY: quantity,
        COST: price * quantity,
        PRICE: price,
      };
}
