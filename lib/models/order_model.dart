import 'package:cloud_firestore/cloud_firestore.dart';

class OrderModel {
  int foodID;
  String name;
  int noItems;
  double price;
  String status;
  Timestamp date;
  String email;

  OrderModel({
    required this.foodID,
    required this.name,
    required this.noItems,
    required this.price,
    required this.status,
    required this.date,
    required this.email,
  });

  static OrderModel fromSnapshot(DocumentSnapshot snap) {
    OrderModel order = OrderModel(
      foodID: snap['foodID'],
      name: snap['name'],
      noItems: snap['noItems'],
      price: snap['price'].toDouble(),
      status: snap['status'],
      date: snap['date'],
      email: snap['email'],
    );
    return order;
  }
}
