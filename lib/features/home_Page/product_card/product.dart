import 'package:flutter/material.dart';
import 'package:shop_app/features/home_Page/product_card/product_card.dart';

class Product extends StatelessWidget {
  /// Constructors for public widgets should have a named key parameter
  /// Use const with constructor for better performance
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 320,
      ),
      /// Use const with constructor for better performance

      itemBuilder: (buildContext, index) => const ProductCard(),
    );
  }
}
