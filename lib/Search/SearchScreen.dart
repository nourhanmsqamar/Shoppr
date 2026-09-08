import 'package:flutter/material.dart';

import '../Home/HomeScreen.dart';
import '../Search/SearchScreen.dart';
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
    HomeScreen(),
    SearchScreen(),
    ProductListScreen(),
    Profilescreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///========== body ===============================
      body: screens[index],


      ///========== bottom navigation ==================
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,

        ///========== selected icon color ==============
        selectedItemColor: Color(0xff5E5CE6),

        ///========== unselected icon color ============
        unselectedItemColor: Colors.grey,

        ///========== remove labels ====================
        showSelectedLabels: false,
        showUnselectedLabels: false,

        type: BottomNavigationBarType.fixed,


        ///=============================================
        currentIndex: index,

        onTap: (value) {
          setState(() {
            index = value;
          });
        },


        ///========== navigation icons =================
        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),

        ],
      ),
    );
  }
}