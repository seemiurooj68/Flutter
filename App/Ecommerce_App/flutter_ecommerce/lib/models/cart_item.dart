class CartItem {
  final int id;
  final int productId;
  final int quantity;

  CartItem({
    required this.id,
    required this.productId,
    required this.quantity,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      productId: json['productId'],
      quantity: json['quantity'],
    );
  }
}
