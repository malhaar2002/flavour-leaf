import 'package:flutter/material.dart';
import 'package:ticci/services/register_firebase.dart';
import 'package:ticci/widgets/custom_formfield.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  static const id = 'register';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  String fullName = '';

  String email = '';

  String phoneNo = '';

  String password = '';

  String repeatPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Register',
                style: TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Let's help you get set up",
                style: TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 50),
              CustomFormField(
                placeholder: 'Full Name',
                onChanged: (value) {
                  fullName = value.trim();
                },
                keyboardType: TextInputType.name,
              ),
              CustomFormField(
                placeholder: 'Email Address',
                onChanged: (value) {
                  email = value.trim();
                },
                keyboardType: TextInputType.emailAddress,
              ),
              CustomFormField(
                placeholder: 'Phone Number',
                onChanged: (value) {
                  phoneNo = value.trim();
                },
                keyboardType: TextInputType.phone,
              ),
              CustomFormField(
                placeholder: 'Password',
                onChanged: (value) {
                  password = value.trim();
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              CustomFormField(
                placeholder: 'Repeat Password',
                onChanged: (value) {
                  repeatPassword = value.trim();
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(height: 50),
              RoundedButton(
                text: 'Register',
                onPressed: () {
                  if (password == repeatPassword) {
                    print(fullName);
                    signUp(
                      context,
                      fullName,
                      email,
                      phoneNo,
                      password,
                    );
                  }
                },
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
