import 'package:flutter/material.dart';
import 'package:ticci/screens/cart.dart';
import 'package:ticci/screens/login.dart';
import 'package:ticci/screens/menu.dart';
import 'package:ticci/screens/profile.dart';
import 'package:ticci/screens/register.dart';
import 'package:ticci/screens/search.dart';
import 'package:ticci/screens/splash_screen.dart';
import 'package:ticci/screens/welcome.dart';
import 'package:ticci/widgets/navdrawer.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Menu.id,
      routes: {
        Welcome.id:(context) => const Welcome(),
        Register.id:(context) => const Register(),
        Login.id:(context) => const Login(),
        Menu.id:(context) => const Menu(),
        Cart.id:(context) => const Cart(),
        Search.id:(context) => const Search(),
        Profile.id:(context) => const Profile(),
        SplashScreen.id:(context) => const SplashScreen(),
        Navdrawer.id:(context) => const Navdrawer()
      },
    );
  }
}