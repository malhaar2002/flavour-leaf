import 'package:flutter/material.dart';
import 'package:ticci/widgets/custom_formfield.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});
  static const id = 'register';

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
                onChanged: (value) {},
                keyboardType: TextInputType.name,
              ),
              CustomFormField(
                placeholder: 'Email Address',
                onChanged: (value) {},
                keyboardType: TextInputType.emailAddress,
              ),
              CustomFormField(
                placeholder: 'Phone Number',
                onChanged: (value) {},
                keyboardType: TextInputType.phone,
              ),
              CustomFormField(
                placeholder: 'Password',
                onChanged: (value) {},
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              CustomFormField(
                placeholder: 'Repeat Password',
                onChanged: (value) {},
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(height: 50),
              RoundedButton(
                text: 'Register',
                onPressed: (){},
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