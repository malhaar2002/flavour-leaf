import 'package:flutter/material.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key});

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
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/food/1.jpeg'),
                radius: 50,
              ),
              title: Text(
                'Pizza',
                style: TextStyle(
                  fontFamily: 'SF-Pro-Rounded',
                ),
              ),
              subtitle: Text(
                "₹200",
                style: TextStyle(
                  fontFamily: 'SFProText',
                ),
              ),
              trailing: Text(
                'x 1',
                style: TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 17,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '20 Aug 2022 at 4:15 pm',
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 12,
                  ),
                ),
                Card(
                  color: Color(0xFFC7C7C7),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Completed',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: 12,
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
