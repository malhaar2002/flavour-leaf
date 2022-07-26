class CartModel {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final int quantity;

  const CartModel({
      required this.id,
      required this.name,
      required this.price,
      required this.imageUrl,
      required this.quantity,
    });
}