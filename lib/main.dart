import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
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
import 'package:ticci/widgets/welcome_navbar.dart';
import 'package:ticci/widgets/zoomdrawer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late StreamSubscription<User?> user;

  // To keep the user signed in when they restart the app
  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (kDebugMode) {
        if (user == null) {
          print('User is currently signed out!');
        } else {
          print('User is signed in');
          print(user.email);
        }
      }
    });
  }

  @override
  void dispose() {
    user.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: FirebaseAuth.instance.currentUser == null ? Welcome.id : SplashScreen.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Register.id: (context) => const Register(),
        Login.id: (context) => Login(),
        Menu.id: (context) => const Menu(),
        Cart.id: (context) => Cart(),
        Search.id: (context) => const Search(),
        Profile.id: (context) => const Profile(),
        SplashScreen.id: (context) => const SplashScreen(),
        ZoomDrawerMaker.id: (context) => const ZoomDrawerMaker(mainScreen: Menu()),
        Orders.id: (context) =>  Orders(),
        WelcomeNavbar.id:(context) => const WelcomeNavbar(),
      },
    );
  }
}
