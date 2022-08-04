class MyMenuItem {
  final int id;
  final String name;
  final double price;
  int quantity;
  bool addedToCart;

  MyMenuItem({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 0,
    this.addedToCart = false,
  });
}
