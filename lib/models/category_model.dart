import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;

  const Category({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];

  static List<Category> categories = [
    const Category(
      id: 1,
      name: 'Starters'
    ),
    const Category(
      id: 2,
      name: 'Main Course'
    ),
    const Category(
      id: 3,
      name: 'Bread & Add-ons'
    ),
    const Category(
      id: 4,
      name: 'Classic Combos'
    ),
    const Category(
      id: 5,
      name: 'Parantha'
    ),
    const Category(
      id: 6,
      name: 'Dessert'
    ),
    const Category(
      id: 7,
      name: 'Salads'
    ),
    const Category(
      id: 8,
      name: 'Add-on'
    ),
    const Category(
      id: 9,
      name: 'Boiled'
    ),
  ];
}
