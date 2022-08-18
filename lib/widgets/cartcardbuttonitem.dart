import 'package:flutter/material.dart';

class CartCardButtonItem extends StatelessWidget {
  const CartCardButtonItem({super.key, required this.buttonItem});
  final String buttonItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        buttonItem,
        style: const TextStyle(
          color: Color(0xFFFFFFFF),
          fontFamily: 'SFProText',
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
