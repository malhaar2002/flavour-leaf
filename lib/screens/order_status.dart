import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ticci/screens/orders.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key, required this.status});
  final String status;
  static const id = 'order_status';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: status == "success" ? 4000 : 3000,
          splash: status == "success" ? Image.asset('assets/images/order_success.gif') : Image.asset('assets/images/order_fail.gif'),
          splashIconSize: 250,
          nextScreen:  Orders(),
        ),
      ),
    );
  }
}