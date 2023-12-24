import 'package:flutter/material.dart';

class BottomNavBarIcon extends StatelessWidget {
  /// Constructors for public widgets should have a named key parameter
  /// For better code organization try to put your constructor at the start of the class before the variables [Optional]

  const BottomNavBarIcon({
    Key? key,
    required this.assetName,
    this.isSelected = false,
  }) : super(key: key);

  /// Try to make your variables immutable declare them as final as long as they don't change when creation
  /// To make the widget constructor const
  final String assetName;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/$assetName',
        height: 25,
        width: 25,
        /// Use const to improve performance

        color: isSelected ? const Color(0xfffe416c) : Colors.black);
  }
}
