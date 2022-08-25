import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

final _auth = FirebaseAuth.instance;
var loggedInUser = null;

getCurrentUser() {
  try{
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
    }
  } catch(e) {
    if (kDebugMode) {
      print(e);
    }
  }
}