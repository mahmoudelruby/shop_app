import 'package:flutter/material.dart';
import 'package:shop_app/features/categories/categories.dart';
import 'package:shop_app/features/profile/profile_screen.dart';
import 'package:shop_app/foundation/sp_icon.dart';
import 'package:shop_app/foundation/theme/colors.dart';

import '../home_Page/home_screen.dart';

class LandingPage extends StatefulWidget {
  /// Constructors for public widgets should have a named key parameter
  /// Use const with constructor for better performance
  const LandingPage({Key? key}) : super(key: key);

  /// const String as it won't change
  static const String routeName = 'landing';

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> pages = [
    /// Use const keyword for better performance
    const HomeScreen(),
    /// Use const keyword for better performance
    const Categories(),
    /// Use const keyword for better performance
    const ProfilePage()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColor.buttonColor,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: BottomNavBarIcon(
                  assetName: 'logo-black.png',
                  isSelected: 0 == currentIndex,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: BottomNavBarIcon(
                  assetName: 'categories.png',
                  isSelected: 1 == currentIndex,
                ),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: BottomNavBarIcon(
                  assetName: 'profile.png',
                  isSelected: 2 == currentIndex,
                ),
                label: 'Profile'),
          ],
        ),
        body: pages[currentIndex]);
  }
}
