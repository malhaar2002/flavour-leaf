import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ticci/screens/menu.dart';

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
    print(e);
  }

  Navigator.pushNamed(context, Menu.id);
}
