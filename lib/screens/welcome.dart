import 'package:flutter/material.dart';
import 'package:ticci/screens/menu.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  static const id = 'welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF4B3A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Image.asset('assets/images/logo.png', width: 40),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Flavour\nLeaf',
                    style: TextStyle(
                      fontFamily: 'SF-Pro-Rounded',
                      fontSize: 65,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/eating_together.png',
                      width: double.infinity,
                    )
                  ),
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.center,
                    child: RoundedButton(
                      text: 'Get Started',
                      onPressed: () => Navigator.pushNamed(context, Menu.id),
                      colour: const Color(0xFFFF4B3A),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

