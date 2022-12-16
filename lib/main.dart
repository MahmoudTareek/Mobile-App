import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/login.dart';
import 'package:project/on_boarding_screen.dart';
import 'favorites_screen.dart';
import 'details_screen.dart';
import 'view_profile.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        // home: FavoritesScreen(),
        initialRoute: 'OnBoardingScreen',
        routes: {
          'OnBoardingScreen': (context) => OnBoardingScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
