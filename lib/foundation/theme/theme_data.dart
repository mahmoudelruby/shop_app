import 'package:flutter/material.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class AppTheme {
  static TextTheme themData = TextTheme(
      titleLarge: TextStyle(
          fontSize: 15, letterSpacing: .15, color: AppColor.headLine6),
      bodyLarge: TextStyle(color: AppColor.bodyColor1, fontSize: 15),
  bodySmall:TextStyle(color: AppColor.captionColor,fontSize: 11) );
}
