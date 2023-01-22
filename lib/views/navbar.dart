// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/views/admin_screen.dart';
import 'package:project/views/signout_screen.dart';
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
  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  int currentIndex = 1;
  List<Widget> userScreens = [
    ViewProfile(),
    HomeScreen(),
    FavoritesScreen(),
    signout_screen(),
  ];

  List<Widget> adminScreens = [
    ViewProfile(),
    HomeScreen(),
    AdminScreen(),
    signout_screen(),
  ];

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
    BottomNavigationBarItem(
      icon: Icon(Icons.logout_outlined),
      label: 'SignOut',
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
    BottomNavigationBarItem(
      icon: Icon(Icons.logout_outlined),
      label: 'SignOut',
    ),
  ];

  //retrive user data from firebase and store it in a variable called user
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    if (userRole.toString() == 'user') {
      return Scaffold(
        body: Center(
          child: userScreens.elementAt(currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: nonAdminNavBars,
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          selectedItemColor: maincolor,
          onTap: changeIndex,
        ),
      );
    } else {
      print(userRole);
      return Scaffold(
        body: Center(
          child: userScreens.elementAt(currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: nonAdminNavBars,
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          selectedItemColor: maincolor,
          onTap: changeIndex,
        ),
      );
    }
  }
}
