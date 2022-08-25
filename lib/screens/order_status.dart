import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/controllers/product_controller.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/screens/orders.dart';
import 'package:ticci/services/add_order.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key, required this.status});
  final String status;
  static const id = 'order_status';

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  void initState() {
    super.initState();
    CartController cartController = Get.find();
    Future.delayed(Duration.zero, () async {
      for (MyMenuItem product in cartController.products.keys) {
        widget.status == "success"
            ? addOrder(product, cartController.products[product])
            : addFailedOrder(product, cartController.products[product]);
        cartController.removeProduct(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: widget.status == "success" ? 4000 : 3000,
          splash: widget.status == "success"
              ? Image.asset('assets/images/order_success.gif')
              : Image.asset('assets/images/order_fail.gif'),
          splashIconSize: 250,
          nextScreen: Orders(),
        ),
      ),
    );
  }
}
