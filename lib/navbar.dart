import 'package:flutter/material.dart';
import 'package:project/components.dart';
import 'admin_screen.dart';
import 'favorites_screen.dart';

class Navbar extends StatefulWidget {

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

   List<Widget> screens = [
    AdminScreen(),
    FavoritesScreen(),
  ];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Admin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: maincolor,
        onTap: changeIndex,
      ),
    );
  }
}
