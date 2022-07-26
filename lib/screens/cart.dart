import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticci/widgets/food_card.dart';

class Cart extends StatelessWidget {
  Cart({
    super.key,
  });
  static const id = 'cart';

  // FIXME: Use Provider to get cart data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Provider.of<List>(context).isNotEmpty
            ? ListView.builder(
                itemCount: Provider.of<List>(context).length,
                itemBuilder: (context, index) =>
                    FoodCard(menuItem: Provider.of<List>(context)[index]),
              )
            : const Text('Your cart is empty'),
      ),
    );
  }
}