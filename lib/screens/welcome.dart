import 'package:flutter/material.dart';
import 'package:ticci/screens/register.dart';

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
                      height: 300
                    )
                  ),
                  const SizedBox(height: 40),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed:() => Navigator.pushNamed(context, Register.id),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 60.0,
                          vertical: 15.0,
                        ),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: 'SFProText',
                          color: Color(0xFFFF4B3A),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
