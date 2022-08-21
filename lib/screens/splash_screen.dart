import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ticci/screens/menu.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const id = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: 1000,
          splash: Image.asset('assets/images/logo.png'),
          splashIconSize: 250,
          nextScreen: const Menu(),
          splashTransition: SplashTransition.scaleTransition,
        ),
      ),
    );
  }
}