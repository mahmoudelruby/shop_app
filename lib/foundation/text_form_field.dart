import 'package:flutter/material.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  String hintText;
  String? Function(String? value)? validator;

  CustomTextFormField(
      {required this.labelText, required this.hintText, this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        validator: validator,
        style: TextStyle(color: AppColor.captionColor, fontSize: 13),
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.black54, fontSize: 13),
            prefix: const Padding(
              padding: EdgeInsets.only(left: 10, top: 15),
            ),
            errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1.5, color: AppColor.buttonColor)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColor.captionColor)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.5, color: Colors.black54))),
      ),
    );
  }
}
