import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/models/order_model.dart';

class FirestoreDB {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Stream<List<MyMenuItem>> ducts() {
  //   return _firestore
  //   .collection('food')
  //   .snapshots()
  //   .map((snapshot) {
  //     return snapshot.docs.map((doc) => MyMenuItem.fromSnapshot(doc)).toList();
  //   });
  // }

  Stream<List<OrderModel>> getAllOrders() {
    return _firestore
    .collection('orders')
    .snapshots()
    .map((snapshot) {
      List<OrderModel> orderList = snapshot.docs.map((doc) => OrderModel.fromSnapshot(doc)).toList();
      orderList.sort((a, b) => (b.date).compareTo(a.date));
      return orderList;
    });
  }
}
