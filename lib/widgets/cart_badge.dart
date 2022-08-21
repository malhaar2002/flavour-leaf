import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/screens/cart.dart';

class CartBadge extends StatelessWidget {
  CartBadge({super.key});
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => Badge(
          position: BadgePosition.topEnd(top: 0, end: 0),
          showBadge: cartController.products.length > 0 ? true : false,
          animationType: BadgeAnimationType.scale,
          badgeContent: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              cartController.products.length.toString(),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          badgeColor: const Color(0xFFFA4A0C),
          child: IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, size: 25),
            color: Colors.grey,
            onPressed: () {
              Get.to(() => Cart());
            },
          ),
        ),
      ),
    );
  }
}
