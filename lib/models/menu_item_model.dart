import 'package:equatable/equatable.dart';

class MyMenuItem extends Equatable {
  final int id;
  final String name;
  final double price;
  final String imageUrl;

  const MyMenuItem({
      required this.id,
      required this.name,
      required this.price,
      required this.imageUrl
    });

  @override
  List<Object?> get props => [id, name, price];

  static List<MyMenuItem> menuItems = [
    const MyMenuItem(
      id: 1,
      name: 'Pizza',
      price: 200,
      imageUrl: 'https://source.unsplash.com/random/900x700/?pizza',
    ),
    const MyMenuItem(
      id: 2,
      name: 'Coca Cola',
      price: 90,
      imageUrl: 'https://source.unsplash.com/random/900x700/?coke',
    ),
    const MyMenuItem(
      id: 3,
      name: 'Burger',
      price: 200,
      imageUrl: 'https://source.unsplash.com/random/900x700/?burger',
    ),
    const MyMenuItem(
      id: 4,
      name: 'Virgin Mojito',
      price: 100,
      imageUrl: 'https://source.unsplash.com/random/900x700/?mojito',
    ),
    const MyMenuItem(
      id: 5,
      name: 'Cold Coffee',
      price: 120,
      imageUrl: 'https://source.unsplash.com/random/900x700/?coffee',
    ),
    const MyMenuItem(
      id: 6,
      name: 'Oreo Shake',
      price: 80,
      imageUrl: 'https://source.unsplash.com/random/900x700/?milkshake',
    ),
  ];
}
