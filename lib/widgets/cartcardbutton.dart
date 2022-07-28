import 'package:flutter/material.dart';

class CartCardButton extends StatefulWidget {
  const CartCardButton({super.key});

  @override
  State<CartCardButton> createState() => _CartCardButtonState();
}

class _CartCardButtonState extends State<CartCardButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 25,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFA4A0C),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {},
              child: CartCardButtonItem(buttonItem: '-'),
            ),
            const CartCardButtonItem(buttonItem: '1'),
            GestureDetector(
              onTap: () {},
              child: CartCardButtonItem(buttonItem: '+'),
            ),
          ],
        ),
      ),
    );
  }
}

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
