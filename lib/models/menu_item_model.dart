import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final String name;
  final double price;
  // final String imageUrl;

  MenuItem({
      required this.id,
      required this.name,
      required this.price,
      // required this.imageUrl
    });

  @override
  List<Object?> get props => [id, name, price];

  static List<MenuItem> menuItems = [
    MenuItem(
      id: 1,
      name: 'Pizza',
      price: 200,
    ),
    MenuItem(
      id: 2,
      name: 'Coca Cola',
      price: 90,
    ),
  ];
}
