import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.text, required this.onPressed, required this.colour, required this.backgroundColour});
  final String text;
  final VoidCallback onPressed;
  final Color colour;
  final Color backgroundColour;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColour,
        padding: const EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 14.0,
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
