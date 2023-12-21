import 'package:flutter/material.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class CustomElevatedButton extends StatelessWidget {
 String text;
Function()  onPressed;

  CustomElevatedButton({required this.text,required this.onPressed}){}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(5),
            backgroundColor:
            MaterialStateProperty.all(AppColor.buttonColor)),
        onPressed: onPressed,
        child: Container(
            child: Text(
              text,
              style: TextStyle(color: AppColor.whiteColor),
            )));
  }
}
