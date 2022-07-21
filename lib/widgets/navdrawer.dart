import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart' as prefix;
import 'package:ticci/screens/menu.dart';

class Navdrawer extends StatelessWidget {
  const Navdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return prefix.SlideDrawer(
      items: [
        prefix.MenuItem(
          'Profile',
          icon: Icons.emoji_people,
          onTap: () {}
        ),
        prefix.MenuItem(
          'Cart',
          icon: Icons.shopping_cart_outlined,
          onTap: () {}
        ),
        prefix.MenuItem(
          'Orders',
          icon: Icons.shopping_bag_outlined,
          onTap: () {}
        ),
        prefix.MenuItem(
          'Contact Us',
          icon: Icons.contact_phone_outlined,
          onTap: () {}
        ),
      ],
      child: const Menu(),
    );
  }
}