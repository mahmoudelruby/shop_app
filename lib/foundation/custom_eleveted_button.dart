import 'package:flutter/material.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  /// Constructors for public widgets should have a named key parameter
  /// For better code organization try to put your constructor at the start of the class before the variables [Optional]
  /// Empty constructor bodies should be written using a ; rather than {}
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(5),
            backgroundColor: MaterialStateProperty.all(AppColor.buttonColor)),
        onPressed: onPressed,
        child: Text(
          text,
          /// Use const to improve performance
          style: const TextStyle(color: AppColor.whiteColor),
        ));
  }
}
