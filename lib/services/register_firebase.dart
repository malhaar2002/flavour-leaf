import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticci/screens/menu.dart';
import 'package:ticci/screens/splash_screen.dart';
import 'package:ticci/widgets/zoomdrawer.dart';

Future signUp(
  BuildContext context,
  String fullName,
  String email,
  String phoneNo,
  String password,
) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: ((context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }),
  );

  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }

FirebaseFirestore.instance
  .collection('users')
  .add({
    'fullName': fullName,
    'email': email,
    'phoneNo': phoneNo,
  });

  Navigator.pop(context);
  Get.to(() => const SplashScreen());
}