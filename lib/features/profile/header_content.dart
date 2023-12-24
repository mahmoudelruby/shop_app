import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/features/login/login_bottom_sheet.dart';
import '../../foundation/custom_eleveted_button.dart';
import '../../foundation/theme/colors.dart';

class HeaderContent extends StatelessWidget {
  /// Constructors for public widgets should have a named key parameter
  const HeaderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 110,
              color: AppColor.dummyBGColor,
            ),
            Container(
              color: AppColor.whiteColor,
              height: 80,
            )
          ],
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: SizedBox(
            /// Replace Container with sized box for bette performance
            height: 130,
            width: 130,
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(25),
                child: Image.asset('assets/images/user.png'),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 22,
            left: 170,
            child: CustomElevatedButton(
              text: 'LOG IN / SIGN UP',
              onPressed: () {
                /// Use const with constructor to improve performance
                Get.bottomSheet(
                  const LoginBottomSheet(),
                );
              },
            ))
      ],
    );
  }
}
