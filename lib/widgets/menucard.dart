import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/controllers/product_controller.dart';
import 'package:ticci/models/menu_item_model.dart';

class FoodCard extends StatelessWidget {
  FoodCard({super.key, required this.menuItem});
  final MyMenuItem menuItem;
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/food/${menuItem.id}.jpeg'),
              radius: 50,
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
              child: Text(
                menuItem.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'SF-Pro-Rounded',
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              '₹${menuItem.price}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'SFProText',
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => ElevatedButton(
                onPressed: () {
                  if (cartController.products.containsKey(menuItem)) {
                    cartController.removeProduct(menuItem);
                  } else {
                    cartController.addProduct(menuItem);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFA4A0C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  cartController.products.containsKey(menuItem) ? 'Added' : 'Add to Cart',
                  style: const TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
