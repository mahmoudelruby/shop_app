import 'package:flutter/material.dart';
import 'package:shop_app/features/categories/categories.dart';
import 'package:shop_app/features/profile/profile_screen.dart';
import 'package:shop_app/foundation/sp_icon.dart';

import '../home_Page/Home_Screen.dart';

class LandingPage extends StatefulWidget {
  static String routeName = 'landing';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> pages = [
    HomeScreen(),
    Categories(),
   ProfilePage()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xfffe416c),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [  BottomNavigationBarItem(
            icon: SPIcon(
                assetName: 'logo-black.png',
                isSelected: 0==currentIndex,),
            label: 'home'),
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetName: 'categories.png',
                 isSelected: 1==currentIndex,),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetName: 'profile.png',
                 isSelected: 2==currentIndex,),
              label: 'Profile'),


        ],
      ),
      body: pages[currentIndex]
    );
  }
}
