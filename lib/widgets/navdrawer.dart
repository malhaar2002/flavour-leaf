import 'package:flutter/material.dart';

class Navdrawer extends StatelessWidget {
  const Navdrawer({super.key});
  static const id = 'navdrawer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFA4A0C),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                NavdrawerItem(
                  title: 'Profile',
                  icon: Icons.person,
                ),
                NavdrawerDivider(),
                NavdrawerItem(
                  icon: Icons.local_pizza_outlined,
                  title: 'Menu',
                ),
                NavdrawerDivider(),
                NavdrawerItem(
                  icon: Icons.shopping_bag_outlined,
                  title: 'Orders',
                ),
                NavdrawerDivider(),
                NavdrawerItem(
                  icon: Icons.shopping_cart_outlined,
                  title: 'Cart',
                ),
              ],
            ),
            const NavdrawerItem(
              icon: Icons.logout,
              title: 'Sign-out',
            )
          ],
        ),
      ),
    );
  }
}

class NavdrawerDivider extends StatelessWidget {
  const NavdrawerDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 0.3,
      indent: 70,
      endIndent: 130,
      color: Colors.white,
    );
  }
}

class NavdrawerItem extends StatelessWidget {
  const NavdrawerItem({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}
