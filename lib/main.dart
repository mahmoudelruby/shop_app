import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shop_app/features/home_Page/Home_Screen.dart';
import 'package:shop_app/features/landing_Page/landing_page.dart';
import 'package:shop_app/foundation/theme/colors.dart';
import 'package:shop_app/foundation/theme/theme_data.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      title: 'Shop App',
      theme: ThemeData(textTheme: AppTheme.themData),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        LandingPage.routeName: (buildContext) => LandingPage()
      },
      initialRoute: LandingPage.routeName,
    );
  }
}
