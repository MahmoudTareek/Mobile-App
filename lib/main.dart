import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'services/firebase_options.dart';
import 'views/on_boarding_screen.dart';
import 'dart:developer';

void main() async {
  log('your message here');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
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
