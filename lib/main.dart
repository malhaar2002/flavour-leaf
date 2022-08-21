import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticci/screens/cart.dart';
import 'package:ticci/screens/login.dart';
import 'package:ticci/screens/menu.dart';
import 'package:ticci/screens/orders.dart';
import 'package:ticci/screens/profile.dart';
import 'package:ticci/screens/register.dart';
import 'package:ticci/screens/search.dart';
import 'package:ticci/screens/splash_screen.dart';
import 'package:ticci/screens/welcome.dart';
import 'package:ticci/widgets/zoomdrawer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const GetMaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ZoomDrawerMaker.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Register.id: (context) => const Register(),
        Login.id: (context) => const Login(),
        Menu.id: (context) => const Menu(),
        Cart.id: (context) => Cart(),
        Search.id: (context) => const Search(),
        Profile.id: (context) => const Profile(),
        SplashScreen.id: (context) => const SplashScreen(),
        ZoomDrawerMaker.id: (context) => const ZoomDrawerMaker(mainScreen: Menu()),
        Orders.id: (context) => const Orders(),
      },
    );
  }
}
