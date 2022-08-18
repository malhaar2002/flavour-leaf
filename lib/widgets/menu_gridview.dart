import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/product_controller.dart';
import 'package:ticci/widgets/menucard.dart';

class MenuGridview extends StatelessWidget {
  final productController = Get.put(ProductController());
  MenuGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: productController.products.length,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 5,
        mainAxisExtent: 310,
      ),
      itemBuilder: (context, index) {
        return FoodCard(menuItem: productController.products[index]);
      },
    );
  }
}
