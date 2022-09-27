import 'package:get/get.dart';
import 'package:ticci/models/menu_item_model.dart';

class ProductController extends GetxController {
  // Add a list of product objects
  final products = <MyMenuItem>[
    const MyMenuItem(
      id: 1,
      name: 'Pizza',
      price: 200,
    ),
    const MyMenuItem(
      id: 2,
      name: 'Coca Cola',
      price: 90,
    ),
    const MyMenuItem(
      id: 3,
      name: 'Burger',
      price: 200,
    ),
    const MyMenuItem(
      id: 4,
      name: 'Virgin Mojito',
      price: 100,
    ),
    const MyMenuItem(
      id: 5,
      name: 'Cold Coffee',
      price: 120,
    ),
    const MyMenuItem(
      id: 6,
      name: 'Oreo Shake',
      price: 80,
    ),
  ].obs;

  // @override
  // void onInit() {
  //   products.bindStream(FirestoreDB().getAllProducts());
  //   super.onInit();
  // }
}
