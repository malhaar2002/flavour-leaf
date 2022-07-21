import 'package:flutter/material.dart';
import 'package:ticci/models/category_model.dart';

class CategoryBox extends StatefulWidget {
  CategoryBox({super.key, required this.category, this.selected = false});
  final Category category;
  bool selected;

  @override
  State<CategoryBox> createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selected = !widget.selected;
        });
      },
      child: Container(
        width: 80,
        margin: const EdgeInsets.only(right: 10.0),
        child: Text(
          widget.category.name,
          style: TextStyle(
            fontFamily: 'SFProText',
            fontSize: 17,
            color: widget.selected
                ? const Color(0xFFFA4A0C)
                : const Color(0xFF9A9A9D),
          ),
        ),
      ),
    );
  }
}
