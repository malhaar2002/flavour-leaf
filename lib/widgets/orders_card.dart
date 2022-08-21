import 'package:flutter/material.dart';
import 'package:ticci/models/order_model.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key, required this.order});
  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/food/${order.id}.jpeg'),
                radius: 40,
              ),
              title: Text(
                order.name,
                style: const TextStyle(
                  fontFamily: 'SF-Pro-Rounded',
                ),
              ),
              subtitle: Text(
                "₹${order.price}",
                style: const TextStyle(
                  fontFamily: 'SFProText',
                ),
              ),
              trailing: Text(
                'x ${order.noItems}',
                style: const TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  order.date,
                  style: const TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 12,
                  ),
                ),
                Card(
                  color: order.status == "In Progress" ? const Color(0xFFFA4A0C): const Color(0xFFC7C7C7),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      order.status,
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: 12,
                        color: order.status == "In Progress" ? const Color(0xFFFFFFFF): const Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}