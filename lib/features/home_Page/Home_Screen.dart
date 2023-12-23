import 'package:flutter/material.dart';
import 'package:shop_app/features/home_Page/prduct_card/product.dart';
import 'package:shop_app/features/home_Page/prduct_card/product_card.dart';
import 'package:shop_app/foundation/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Column(
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
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 28,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 28,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 28,
                color: Colors.black,
              )),
        ],
      ),
      body: Product(),
    );
  }
}
