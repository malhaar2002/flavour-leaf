import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/services/loggedin_user.dart';

void addOrder(MyMenuItem product, int quantity) async {
    if (userEmail == '') await getCurrentUser();
    await FirebaseFirestore.instance
    .collection('orders')
    .add({
      'date': DateTime.now(),
      'email': userEmail,
      'foodID': product.id,
      'name': product.name,
      'noItems': quantity,
      'price': product.price,
      'status': 'In Progress',
    });
  }

void addFailedOrder(MyMenuItem product, int quantity) async {
    if (userEmail == '') await getCurrentUser();
    await FirebaseFirestore.instance
    .collection('orders')
    .add({
      'date': DateTime.now(),
      'email': userEmail,
      'foodID': product.id,
      'name': product.name,
      'noItems': quantity,
      'price': product.price,
      'status': 'Failed',
    });
  }