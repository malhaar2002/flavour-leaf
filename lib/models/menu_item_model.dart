class MyMenuItem {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  int quantity;
  bool addedToCart;

  MyMenuItem({
      required this.id,
      required this.name,
      required this.price,
      required this.imageUrl,
      this.quantity = 0,
      this.addedToCart = false,
    });

  static List<MyMenuItem> menuItems = [
    MyMenuItem(
      id: 1,
      name: 'Pizza',
      price: 200,
      imageUrl: 'https://source.unsplash.com/random/900x700/?pizza',
    ),
    MyMenuItem(
      id: 2,
      name: 'Coca Cola',
      price: 90,
      imageUrl: 'https://source.unsplash.com/random/900x700/?coke',
    ),
    MyMenuItem(
      id: 3,
      name: 'Burger',
      price: 200,
      imageUrl: 'https://source.unsplash.com/random/900x700/?burger',
    ),
    MyMenuItem(
      id: 4,
      name: 'Virgin Mojito',
      price: 100,
      imageUrl: 'https://source.unsplash.com/random/900x700/?mojito',
    ),
    MyMenuItem(
      id: 5,
      name: 'Cold Coffee',
      price: 120,
      imageUrl: 'https://source.unsplash.com/random/900x700/?coffee',
    ),
    MyMenuItem(
      id: 6,
      name: 'Oreo Shake',
      price: 80,
      imageUrl: 'https://source.unsplash.com/random/900x700/?milkshake',
    ),
  ];
}
