import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/widgets/cartcard.dart';
import 'package:ticci/widgets/menucard.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Cart extends StatelessWidget {
  Cart({super.key});
  static const id = 'cart';
  final Set<MyMenuItem> _cartItems = FoodCard.getCartItems();

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Cart',
                style: TextStyle(
                  fontFamily: 'SFProText',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.swipe,
                    size: 13,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'swipe right on an item to delete',
                    style: TextStyle(
                      fontFamily: 'SFProText',
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              _cartItems.isNotEmpty
                  ? ListView.builder(
                      itemCount: _cartItems.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (context, index) =>
                          CartCard(cartItem: _cartItems.elementAt(index)),
                    )
                  : const Text('Your cart is empty'),
              const SizedBox(height: 25),
              RoundedButton(
                text: 'Confirm Order',
                onPressed: () {},
                backgroundColour: const Color(0xFFFA4A0C),
                colour: const Color(0xFFFFFFFF),
              )
            ],
          ),
        ),
      ),
    );
  }
}
