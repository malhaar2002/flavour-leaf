import 'package:flutter/material.dart';
import 'package:ticci/models/category_model.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 10.0),
      child: Text(
        category.name,
        style: const TextStyle(
          fontFamily: 'SFProText',
          fontSize: 17,
          // color: Color(0xFFFA4A0C),
          color: Color(0xFF9A9A9D),
        ),
      ),
    );
  }
}