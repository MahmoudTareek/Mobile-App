import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class signout_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    signout();
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Center(
        // ignore: prefer_const_constructors
        child: Text("You have been signed out",
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
      ),
    );
  }

  signout() {
    FirebaseAuth.instance.signOut();
    GoogleSignIn().signOut();
  }
}
