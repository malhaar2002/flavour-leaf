import 'package:cloud_firestore/cloud_firestore.dart';

class MyMenuItem {
  final int id;
  final String name;
  final double price;

  const MyMenuItem({
    required this.id,
    required this.name,
    required this.price,
  });

  static MyMenuItem fromSnapshot(DocumentSnapshot snap) {
    MyMenuItem product = MyMenuItem(
      id: snap['id'],
      price: snap['price'].toDouble(),
      name: snap['name']
    );
    return product;
  }
}
