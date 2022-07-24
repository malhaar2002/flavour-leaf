import 'package:flutter/material.dart';
import 'package:ticci/screens/cart.dart';
import 'package:ticci/models/models.dart';
import 'package:ticci/widgets/category_box.dart';
import 'package:ticci/widgets/food_card.dart';
import 'package:ticci/widgets/navdrawer.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  static const id = 'menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            // TODO: Use badges package to display number of items in cart above the icon
            icon: const Icon(Icons.shopping_cart_outlined),
            color: Colors.grey,
            onPressed: () => Navigator.pushNamed(context, Cart.id),
          )
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
              GridView.builder(
                shrinkWrap: true,
                itemCount: MyMenuItem.menuItems.length,
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 310,
                ),
                itemBuilder: (context, index) {
                  return FoodCard(
                    menuItem: MyMenuItem.menuItems[index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
