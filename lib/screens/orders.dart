import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/order_controller.dart';
import 'package:ticci/widgets/orders_card.dart';

class Orders extends StatelessWidget {
  Orders({super.key});
  static const id = 'orders';
  final orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
          icon: const Icon(Icons.menu),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: orderController.orders.isNotEmpty 
            ? SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        'Orders',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: orderController.orders.length,
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) =>
                            OrdersCard(order: orderController.orders[index]),
                      )
                    ],
                  ),
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 100,
                      color: Color(0xFFC7C7C7),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'No Order History Yet',
                      style: TextStyle(
                        fontFamily: 'SF-Pro-Rounded',
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Visit the menu to start ordering',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
