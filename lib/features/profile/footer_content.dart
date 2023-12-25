import 'package:flutter/material.dart';
import 'package:shop_app/features/profile/sp_text_button.dart';

class FooterContent extends StatelessWidget {
  /// Constructors for public widgets should have a named key parameter
  const FooterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Use const with the constructor for better performance
    return const Column(
      children: [
        FooterTextButton(
          text: 'FAQs',
        ),
        FooterTextButton(
          text: 'ABOUT US',
        ),
        FooterTextButton(
          text: 'TERMS OF USE',
        ),
        FooterTextButton(
          text: 'PRIVACY POLICY',
        ),
      ],
    );
  }
}
