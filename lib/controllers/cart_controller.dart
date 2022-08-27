import 'package:get/get.dart';
import 'package:ticci/models/menu_item_model.dart';

class CartController extends GetxController {

  // Add a dict to store the products in the cart
  final _products = {}.obs;

  void addProduct(MyMenuItem product) {
    if (_products.containsKey(product)) {
      _products[product]++;
    } else {
      _products[product] = 1;
    }
  }

  void removeProduct(MyMenuItem product) {
    _products.removeWhere((key, value) => key == product);
  }

  void decreaseQuantity(MyMenuItem product) {
    if (_products[product] == 1) {
      removeProduct(product);
    } else {
      _products[product]--;
    }
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}