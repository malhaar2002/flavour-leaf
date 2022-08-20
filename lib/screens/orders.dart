import 'package:flutter/material.dart';
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: const [
                Text(
                  'Orders',
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 25),
                OrdersCard(),
                OrdersCard(),
                OrdersCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
