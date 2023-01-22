import 'package:firebase_core/firebase_core.dart';
import 'package:project/views/home_page.dart';
import 'services/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'views/on_boarding_screen.dart';
import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
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
  final fcmToken = await FirebaseMessaging.instance.getToken();
  print(fcmToken);
}
