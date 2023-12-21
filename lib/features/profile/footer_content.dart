import 'package:flutter/material.dart';
import 'package:shop_app/features/profile/sp_text_button.dart';
class FooterContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FooterTextButton(text: 'FAQs',),
        FooterTextButton(text: 'ABOUT US',),
        FooterTextButton(text: 'TERMS OF USE',),
        FooterTextButton(text: 'PRIVACY POLICY',),

      ],
    );
  }
}
