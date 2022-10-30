import 'package:flutter/material.dart';
import 'package:project/login.dart';
// import 'package:project/on_boarding_screen.dart';
// import 'favorites_screen.dart';
// import 'details_screen.dart';
// import 'map.dart';

void main() {
  runApp(
    MaterialApp(
      // home: FavoritesScreen(),
      initialRoute: 'DetailsScreen',
      routes: {
        'DetailsScreen': (context) => const LoginScreen(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
