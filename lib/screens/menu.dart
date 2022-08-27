import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ticci/models/category_model.dart';
import 'package:ticci/widgets/cart_badge.dart';
import 'package:ticci/widgets/category_box.dart';
import 'package:ticci/widgets/menu_gridview.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  static const id = 'menu';

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
          CartBadge(),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  MediaQuery.of(context).size.width < 600
                      ? 'Delicious\nfood for you'
                      : 'Delicious food for you',
                  style: const TextStyle(
                    fontFamily: 'SF-Pro-Rounded',
                    fontSize: 34,
                  ),
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
