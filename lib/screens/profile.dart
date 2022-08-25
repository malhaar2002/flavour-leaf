import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ticci/services/loggedin_user.dart';
import 'package:ticci/widgets/custom_textfield.dart';
import 'package:ticci/widgets/rounded_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static const id = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
            icon: const Icon(Icons.menu),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                const Text(
                  'Update Profile',
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 50),
                CustomTextField(
                  text: userName,
                  label: 'Full Name',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  text: userEmail,
                  label: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  text: userPhone,
                  label: 'Phone Number',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 50),
                RoundedButton(
                  text: 'Update Profile',
                  onPressed: () {},
                  colour: const Color(0xFFFFFFFF),
                  backgroundColour: const Color(0xFFFA4A0C),
                ),
              ],
            ),
          ),
        ));
  }
}
