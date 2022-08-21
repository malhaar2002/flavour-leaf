import 'package:flutter/material.dart';
import 'package:ticci/screens/cart.dart';
import 'package:ticci/screens/menu.dart';
import 'package:ticci/screens/orders.dart';
import 'package:ticci/screens/profile.dart';
import 'package:ticci/screens/welcome.dart';
import 'package:ticci/widgets/zoomdrawer.dart';

class Navdrawer extends StatelessWidget {
  const Navdrawer({super.key});
  static const id = 'navdrawer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFA4A0C),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavdrawerItem(
                  icon: Icons.local_pizza_outlined,
                  title: 'Menu',
                  menuScreen: Menu(),
                ),
                const SizedBox(height: 15),
                NavdrawerItem(
                  icon: Icons.shopping_cart_outlined,
                  title: 'Cart',
                  menuScreen: Cart(),
                ),
                const SizedBox(height: 15),
                const NavdrawerItem(
                  icon: Icons.shopping_bag_outlined,
                  title: 'Orders',
                  menuScreen: Orders(),
                ),
                const SizedBox(height: 15),
                const NavdrawerItem(
                  title: 'Profile',
                  icon: Icons.person,
                  menuScreen: Profile(),
                ),
              ],
            ),
            const NavdrawerItem(
              icon: Icons.logout,
              title: 'Sign-out',
              menuScreen: Welcome(),
            )
          ],
        ),
      ),
    );
  }
}

class NavdrawerItem extends StatelessWidget {
  const NavdrawerItem({super.key, required this.icon, required this.title, required this.menuScreen});
  final IconData icon;
  final String title;
  final Widget menuScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() =>  Navigator.push(context, MaterialPageRoute(builder:(context) => ZoomDrawerMaker(mainScreen: menuScreen)))),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'SFProText',
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
