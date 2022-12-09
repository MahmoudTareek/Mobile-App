import 'package:flutter/material.dart';
import 'package:project/details_screen.dart';
import 'package:project/on_boarding_screen.dart';

// import 'package:project/login.dart';
// import 'package:project/on_boarding_screen.dart';
// import 'favorites_screen.dart';
// import 'map.dart';
// import 'view_profile.dart';

void main() {
  runApp(
    MaterialApp(
      // home: FavoritesScreen(),
      // initialRoute: 'OnBoardingScreen',
      // routes: {
      //   'OnBoardingScreen': (context) => OnBoardingScreen(),
      // },

      initialRoute: 'onBoardingScreen',
      routes: {
        'onBoardingScreen': (context) => OnBoardingScreen(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
