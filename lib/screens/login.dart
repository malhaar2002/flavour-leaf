import 'package:flutter/material.dart';
import 'package:ticci/services/login_firebase.dart';
import 'package:ticci/widgets/custom_formfield.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Login extends StatelessWidget {
  Login({super.key});
  late String email;
  late String password;
  static const id = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Image.asset(
                'assets/images/undraw_barbecue.png',
                width: 300,
              ),
              const SizedBox(height: 40),
              CustomFormField(
                placeholder: 'Email ID',
                onChanged: (value) {
                  email = value.trim();
                },
                keyboardType: TextInputType.emailAddress,
              ),
              CustomFormField(
                placeholder: 'Password',
                onChanged: (value) {
                  password = value.trim();
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(height: 40),
              RoundedButton(
                text: 'Login',
                onPressed: () => signIn(context, email, password),
                colour: const Color(0xFFFFFFFF),
                backgroundColour: const Color(0xFFFA4A0C),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
