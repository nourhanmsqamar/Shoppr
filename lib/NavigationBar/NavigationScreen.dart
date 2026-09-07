import 'package:flutter/material.dart';

import '../ProductList/ProductListScreen.dart';
import '../Profile/ProfileScreen.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavigationScreen> {
  ///========== initial value ========================
  int index = 0;

  ///========== screens in home ======================
  List<Widget> screens = [
    // Homescreen(),
    //search(),
    ProductListScreen(),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///========== body ===============================
      body: screens[index],

      ///===============================================
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,

        ///=============================================
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },

        ///=============================================
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}