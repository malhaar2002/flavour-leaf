import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ticci/models/menu_item_model.dart';

List<MyMenuItem> menuItems = [];

getFood() async {
  await FirebaseFirestore.instance
      .collection('food')
      .get()
      .then((QuerySnapshot querySnapshot) {
    for (var doc in querySnapshot.docs) {
      menuItems.add(
        MyMenuItem(
          id: doc['id'],
          name: doc['name'],
          price: doc['price'].toDouble(),
        ),
      );
    }
  });
}