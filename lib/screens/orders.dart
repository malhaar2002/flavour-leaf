import 'package:flutter/material.dart';
import 'package:ticci/models/order_model.dart';
import 'package:ticci/widgets/orders_card.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});
  static const id = 'orders';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: OrderModel.ordersList.isNotEmpty
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
                        itemCount: OrderModel.ordersList.length,
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) =>
                            OrdersCard(order: OrderModel.ordersList[index]),
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
