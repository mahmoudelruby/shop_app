import 'package:flutter/material.dart';

class BottomNavBarIcon extends StatelessWidget {
  String assetName;
  bool isSelected;

  BottomNavBarIcon({required this.assetName,this.isSelected=false}) {}

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$assetName',
      height: 25,
      width: 25,
      color: isSelected ? Color(0xfffe416c) :Colors.black
    );
  }
}
