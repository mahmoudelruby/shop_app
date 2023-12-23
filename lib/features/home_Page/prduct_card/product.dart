import 'package:flutter/material.dart';
import 'package:shop_app/features/home_Page/prduct_card/product_card.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 320),
        itemBuilder: (buildContext, index) => ProductCard());
  }
}
