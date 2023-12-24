import 'package:flutter/material.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class CustomTextFormField extends StatelessWidget {
  /// Constructors for public widgets should have a named key parameter
  /// For better code organization try to put your constructor at the start of the class before the variables [Optional]

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.validator,
  }) : super(key: key);

  /// Try to make your variables immutable declare them as final as long as they don't change when creation
  /// To make the widget constructor const
  final String labelText;
  final String hintText;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        validator: validator,

        /// Use const to improve performance
        style: const TextStyle(
          color: AppColor.captionColor,
          fontSize: 13,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black54,
            fontSize: 13,
          ),
          prefix: const Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 15,
            ),
          ),

          /// Use const to improve performance
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: AppColor.buttonColor,
            ),
          ),

          /// Use const to improve performance
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: AppColor.captionColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
