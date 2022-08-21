import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:ticci/controllers/cart_controller.dart';
import 'package:ticci/models/category_model.dart';
import 'package:ticci/screens/cart.dart';
import 'package:ticci/widgets/category_box.dart';
import 'package:ticci/widgets/menu_gridview.dart';
import 'package:badges/badges.dart';

class Menu extends StatelessWidget {
  Menu({super.key});
  static const id = 'menu';
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
          icon: const Icon(Icons.menu),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Center(
            child: Obx(
              () => Badge(
                position: BadgePosition.topEnd(top: 0, end: 0),
                showBadge: cartController.products.length > 0 ? true : false,
                animationType: BadgeAnimationType.scale,
                badgeContent: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    cartController.products.length.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                badgeColor: const Color(0xFFFA4A0C),
                child: IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined, size: 25),
                  color: Colors.grey,
                  onPressed: () {
                    Get.to(() => Cart());
                  },
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MediaQuery.of(context).size.width < 600
                    ? 'Delicious\nfood for you'
                    : 'Delicious food for you',
                style: const TextStyle(
                  fontFamily: 'SF-Pro-Rounded',
                  fontSize: 34,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 17,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.grey[100]!, width: 0.0)),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Category.categories.length,
                  itemBuilder: (context, index) {
                    return CategoryBox(
                      category: Category.categories[index],
                    );
                  },
                ),
              ),
              // ignore: prefer_const_constructors
              MenuGridview(),
            ],
          ),
        ),
      ),
    );
  }
}
