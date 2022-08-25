import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticci/screens/menu.dart';
import 'package:ticci/screens/splash_screen.dart';
import 'package:ticci/widgets/zoomdrawer.dart';

Future signIn(
  BuildContext context,
  String email,
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
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }

  Navigator.pop(context);
  Get.to(() => const SplashScreen());
}
