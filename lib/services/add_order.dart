import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/controllers/checkout_controller.dart';
import 'package:ticci/services/loggedin_user.dart';

void addOrder(Map<String, int> productsMap) async {
    final CartController cartController = Get.find();
    final CheckoutController checkoutController = Get.find();
    if (userEmail == '') await getCurrentUser();
    await FirebaseFirestore.instance
    .collection('orders')
    .add({
      'date': DateTime.now(),
      'email': userEmail,
      'productsMap': productsMap,
      'deliveryLocation': checkoutController.deliveryLocation.value,
      'additionalInfo': checkoutController.additionalInfo.value,
      'price': cartController.total,
      'status': 'In Progress',
    });
  }

void addFailedOrder(Map<String, int> productsMap) async {
    final CartController cartController = Get.find();
    final CheckoutController checkoutController = Get.find();
    if (userEmail == '') await getCurrentUser();
    await FirebaseFirestore.instance
    .collection('orders')
    .add({
      'date': DateTime.now(),
      'email': userEmail,
      'productsMap': productsMap,
      'deliveryLocation': checkoutController.deliveryLocation.value,
      'additionalInfo': checkoutController.additionalInfo.value,
      'price': cartController.total,
      'status': 'Failed',
    });
  }