import 'package:flutter/material.dart';
import 'package:shop_app/features/profile/profile_without_login.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _State();
}

class _State extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: ProfileWithoutLogin(),
    );
  }
}
