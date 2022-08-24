// Used in register and login

import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.placeholder = '',
    required this.onChanged,
    required this.keyboardType,
    this.obscureText = false,
    this.validator,
  });
  final String placeholder;
  final void Function(String) onChanged;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: TextFormField(
        textAlign: TextAlign.center,
        obscureText: obscureText,
        keyboardType: keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          hintText: placeholder,
        ),
        style: const TextStyle(fontSize: 15),
        onChanged: onChanged,
      ),
    );
  }
}
