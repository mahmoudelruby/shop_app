import 'package:flutter/material.dart';

import '../../foundation/theme/colors.dart';

class HeaderContent extends StatelessWidget {
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
          child: Container(
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
            child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5),
                    backgroundColor:
                        MaterialStateProperty.all(AppColor.buttonColor)),
                onPressed: () {},
                child: Container(
                    child: Text(
                  'LOG IN / SIGN UP',
                  style: TextStyle(color: AppColor.whiteColor),
                ))))
      ],
    );
  }
}
