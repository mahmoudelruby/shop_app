import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/features/profile/footer_content.dart';
import 'package:shop_app/features/profile/header_content.dart';
import 'package:shop_app/features/profile/profile_item.dart';
import 'package:shop_app/foundation/theme/colors.dart';

import '../login/login_bottom_sheet.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Use const with constructor to improve performance
        const HeaderContent(),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(
                iconPath: 'orders.png',
                title: 'Orders',
                caption: 'Check your order',
                onTab: () {
                  /// Use const keyword for better performance
                  Get.bottomSheet(const LoginBottomSheet());
                },
              ),
              /// Use const with constructor to improve performance

              const ProfileItem(
                iconPath: 'customer-support.png',
                title: 'Help Center',
                caption: 'Help regarding your recent purchase',
              ),
              /// Use const with constructor to improve performance

              const ProfileItem(
                iconPath: 'wishlist.png',
                title: 'Wishlist',
                caption: 'Your most loved ',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: AppColor.whiteColor,
          /// Use const with constructor to improve performance

          child: const Column(
            children: [
              ProfileItem(
                iconPath: 'qr-code-scan.png',
                title: 'Scan',
                caption: null,
              ),
              ProfileItem(
                iconPath: 'people.png',
                title: 'Refer & Earn',
                caption: null,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        /// Use const with constructor to improve performance
        const FooterContent()
      ],
    );
  }
}
