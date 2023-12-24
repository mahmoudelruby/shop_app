import 'package:flutter/material.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class FooterTextButton extends StatelessWidget {
  /// Constructors for public widgets should have a named key parameter
  /// For better code organization try to put your constructor at the start of the class before the variables [Optional]
  /// Empty constructor bodies should be written using a ; rather than {}
  const FooterTextButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.whiteColor,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 60),
          width: MediaQuery.of(context).size.width,
          child: Text(
            text,
            /// Use const with constructor to improve performance
            style: const TextStyle(
                fontSize: 12,
                color: AppColor.headLine6,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
