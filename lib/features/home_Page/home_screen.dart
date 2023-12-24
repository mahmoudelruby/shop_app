import 'package:flutter/material.dart';

///Error in naming the file the file should be lower case letter separated by underscores home_screen.dart
import 'package:shop_app/features/home_Page/product_card/product.dart';

/// Always remove unnecessary imports and watch out for these typo mistakes prduct ===> product
// import 'package:shop_app/features/home_Page/prduct_card/product_card.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  /// Constructors for public widgets should have a named key parameter
  /// Use const with constructor for better performance
  const HomeScreen({Key? key}) : super(key: key);

  /// const String as it won't change
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        leading: IconButton(
          onPressed: () {},

          /// Use 'const' with the constructor to improve performance.
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),

        /// Use 'const' with the constructor to improve performance.

        title: const Column(
          children: [
            Text(
              'Men Cloths',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '2435 items',
              style: TextStyle(fontSize: 13, color: AppColor.captionColor),
            )
          ],
        ),
        actions: [
          /// Use 'const' with the constructor to improve performance.

          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 28,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},

              /// Use 'const' with the constructor to improve performance.
              icon: const Icon(
                Icons.favorite_border_outlined,
                size: 28,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              /// Use 'const' with the constructor to improve performance.
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 28,
                color: Colors.black,
              )),
        ],
      ),
      /// Use 'const' with the constructor to improve performance.
      body: const Product(),
    );
  }
}
