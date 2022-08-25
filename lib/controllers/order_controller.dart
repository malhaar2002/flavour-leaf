import 'package:get/get.dart';
import 'package:ticci/models/order_model.dart';
import 'package:ticci/services/firebase_db.dart';

class OrderController extends GetxController {
  // Add a list of order objects
  final orders = <OrderModel>[].obs;

  @override
  void onInit() {
    orders.bindStream(FirestoreDB().getAllOrders());
    super.onInit();
  }
}