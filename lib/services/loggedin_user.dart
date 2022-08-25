import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

User? loggedInUser;
String userName = '';
String userEmail = '';
String userPhone = '';

getCurrentUser() async {
  try {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      loggedInUser = user;
    }
    await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: loggedInUser?.email)
        .get()
        .then((value) async {
      for (var doc in value.docs) {
        userName = doc.data()['fullName'];
        userEmail = doc.data()['email'];
        userPhone = doc.data()['phoneNo'];
      }
    });
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
}