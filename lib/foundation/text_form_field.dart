import 'package:flutter/material.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class CustomTextFormField extends StatelessWidget {
String labelText;
String hintText;
  CustomTextFormField({required this.labelText,required this.hintText}){}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(

        style: TextStyle(color: AppColor.captionColor, fontSize: 13),
        decoration: InputDecoration(
          hintText: hintText,
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.black54, fontSize: 13),
            prefix: const Padding(
              padding: EdgeInsets.only(left: 10, top: 15),

            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColor.captionColor)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.5, color: Colors.black54))),
      ),
    );
  }
}
