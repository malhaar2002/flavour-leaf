import 'package:flutter/material.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/widgets/menucardbutton.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.menuItem});
  final MyMenuItem menuItem;
  static Set<MyMenuItem> cartItems = {};
  static Set<MyMenuItem> getCartItems() => cartItems;

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
              backgroundImage: AssetImage('assets/images/food/${menuItem.id}.jpeg'),
              radius: 50,
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.center,
              child: Text(
                menuItem.name,
                style: const TextStyle(
                  fontFamily: 'SF-Pro-Rounded',
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              '₹${menuItem.price}',
              style: const TextStyle(
                fontFamily: 'SFProText',
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            MenuCardButton(menuItem: menuItem),
          ],
        ),
      ),
    );
  }
}