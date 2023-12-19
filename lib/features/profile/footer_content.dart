import 'package:flutter/material.dart';
import 'package:shop_app/features/profile/sp_text_button.dart';
class FooterContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SPTextButton(text: 'FAQs',),
        SPTextButton(text: 'ABOUT US',),
        SPTextButton(text: 'TERMS OF USE',),
        SPTextButton(text: 'PRIVACY POLICY',),

      ],
    );
  }
}
