import 'package:flutter/material.dart';
import 'package:ticci/data/get_food.dart';
import 'package:ticci/widgets/menucard.dart';

class MenuGridview extends StatelessWidget {
  const MenuGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: menuItems.length,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 5,
        mainAxisExtent: 310,
      ),
      itemBuilder: (context, index) {
        return FoodCard(menuItem: menuItems[index]);
      },
    );
  }
}
