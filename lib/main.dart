//Always remove unused imports
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shop_app/features/home_Page/home_screen.dart';
import 'package:shop_app/features/landing_Page/landing_page.dart';
import 'package:shop_app/features/profile/profile_screen.dart';

/// Always remove unused imports
import 'package:shop_app/foundation/theme/theme_data.dart';

void main() {
  /// @2 When you create a const Constructor always use const with it to improve performance
  /// When the view rebuilds the const widgets do not rebuild as it stay in memory unchanged
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  /// @1 Constructors for public widgets should have a named key parameter
  const MyApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Stop Using libraries like GetX at least for now
    return GetMaterialApp(
      title: 'Shop App',
      theme: ThemeData(textTheme: AppTheme.themData),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (buildContext) => const HomeScreen(),
        ProfilePage.routeName: (buildContext) => const ProfilePage(),
        LandingPage.routeName: (buildContext) => const LandingPage()
      },
      initialRoute: LandingPage.routeName,
    );
  }
}
