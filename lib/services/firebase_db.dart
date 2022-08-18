import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ticci/models/menu_item_model.dart';

class FirestoreDB {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<MyMenuItem>> getAllProducts() {
    return _firestore
    .collection('food')
    .snapshots()
    .map((snapshot) {
      return snapshot.docs.map((doc) => MyMenuItem.fromSnapshot(doc)).toList();
    });
  }
}
