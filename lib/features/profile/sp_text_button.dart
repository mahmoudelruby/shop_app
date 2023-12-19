import 'package:flutter/material.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class SPTextButton extends StatelessWidget {

  String text;
  SPTextButton({required this.text }){}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.whiteColor,
      child: InkWell(
        onTap: (){},
        child: Container(

          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 60),
          width: MediaQuery.of(context).size.width,
          child: Text(text,style: TextStyle(
            fontSize: 12,
            color: AppColor.headLine6,
            fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}
