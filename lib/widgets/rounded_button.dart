import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.text, required this.onPressed, required this.colour});
  final String text;
  final VoidCallback onPressed;
  final Color colour;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 17.0,
        ),
        shape: const StadiumBorder(),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'SFProText',
          color: colour,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
