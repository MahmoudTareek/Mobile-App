// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/views/admin_screen.dart';
import 'components.dart';
import 'home_page.dart';
import 'view_profile.dart';
import 'favorites_screen.dart';
import '../services/user_service.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 1;
  List<Widget> screens = [
    ViewProfile(),
    HomeScreen(),
    FavoritesScreen(),
    AdminScreen(),
  ];

  var user = getRole();
  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<BottomNavigationBarItem> nonAdminNavBars = [
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'Favorite',
    ),
  ];

  List<BottomNavigationBarItem> adminNavBars = [
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.admin_panel_settings),
      label: 'Users',
    ),
  ];

  //retrive user data from firebase and store it in a variable called user
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    print(user.toString());
    return Scaffold(
      body: Center(
        child: screens.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: user.toString() == 'user' ? nonAdminNavBars : adminNavBars,
        currentIndex: currentIndex,
        selectedItemColor: maincolor,
        onTap: changeIndex,
      ),
    );
  }
}
