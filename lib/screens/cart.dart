import 'package:flutter/material.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/widgets/food_card.dart';

class Cart extends StatelessWidget {
  Cart({super.key});
  static const id = 'cart';
  final Set<MyMenuItem> _cartItems = FoodCard.getCartItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _cartItems.isNotEmpty
            ? ListView.builder(
                itemCount: _cartItems.length,
                itemBuilder: (context, index) =>
                    FoodCard(menuItem: _cartItems.elementAt(index)),
              )
            : const Text('Your cart is empty'),
      ),
    );
  }
}
