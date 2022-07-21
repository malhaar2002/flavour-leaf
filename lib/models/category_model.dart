import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];

  static List<Category> categories = [
    Category(
      id: 1,
      name: 'Starters'
    ),
    Category(
      id: 2,
      name: 'Main Course'
    ),
    Category(
      id: 3,
      name: 'Bread and Add-ons'
    ),
    Category(
      id: 4,
      name: 'Classic Combos'
    ),
    Category(
      id: 5,
      name: 'Parantha'
    ),
    Category(
      id: 6,
      name: 'Dessert'
    ),
    Category(
      id: 7,
      name: 'Salads'
    ),
    Category(
      id: 8,
      name: 'Add-on'
    ),
    Category(
      id: 9,
      name: 'Boiled'
    ),
  ];
}
