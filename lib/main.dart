import 'package:firebase_core/firebase_core.dart';
import 'package:project/views/home_page.dart';
import 'package:project/views/view_profile.dart';
import 'services/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/views/admin_screen.dart';
import 'package:project/views/details_screen.dart';
import 'package:project/views/home_page.dart';
import 'package:project/views/map.dart';
import 'package:project/views/plan.dart';
import 'views/on_boarding_screen.dart';
import 'views/details_screen.dart';
import 'dart:developer';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(
    ProviderScope(
      child: MaterialApp(
        // home: FavoritesScreen(),
        initialRoute: 'OnBoardingScreen',
        routes: {
          'OnBoardingScreen': (context) => HomeScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
