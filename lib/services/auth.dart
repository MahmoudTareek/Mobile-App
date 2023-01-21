//import flutter material
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/views/home_page.dart';
import 'package:project/views/login.dart';
import 'package:project/views/admin_dashboard.dart';


//class auth
class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
//logged in hayrag3o 3al home screen

          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return DashboardScreen();
          }
//not logged in haywadeh 3a lloginscreen
        },
      ),
    );
  }
}
