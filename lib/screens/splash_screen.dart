import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ticci/screens/menu.dart';
import 'package:ticci/services/loggedin_user.dart';
import 'package:ticci/widgets/zoomdrawer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      getCurrentUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: 1000,
          splash: Image.asset('assets/images/logo.png'),
          splashIconSize: 250,
          nextScreen: const ZoomDrawerMaker(mainScreen: Menu()),
          splashTransition: SplashTransition.scaleTransition,
        ),
      ),
    );
  }
}