import 'package:get/get.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/services/firebase_db.dart';

class ProductController extends GetxController {
  // Add a list of product objects
  final products = <MyMenuItem>[].obs;

  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}