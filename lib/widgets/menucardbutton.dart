import 'package:flutter/material.dart';
import 'package:ticci/models/menu_item_model.dart';
import 'package:ticci/widgets/menucard.dart';

class MenuCardButton extends StatefulWidget {
  const MenuCardButton({super.key, required this.menuItem});
  final MyMenuItem menuItem;

  @override
  State<MenuCardButton> createState() => _MenuCardButtonState();
}

class _MenuCardButtonState extends State<MenuCardButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (!widget.menuItem.addedToCart) {
            widget.menuItem.quantity = 1;
            FoodCard.cartItems.add(widget.menuItem);
            widget.menuItem.addedToCart = true;
          } else {
            widget.menuItem.quantity = 0;
            FoodCard.cartItems.remove(widget.menuItem);
            widget.menuItem.addedToCart = false;
          }
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFA4A0C),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        widget.menuItem.quantity == 0 ? 'Add to Cart' : 'Added',
        style: const TextStyle(
          fontFamily: 'SFProText',
          fontSize: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}
