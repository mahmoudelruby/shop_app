import 'package:flutter/material.dart';
import 'package:shop_app/features/home_Page/product_card/product_description.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      /// Use 'const' with the constructor to improve performance.
    margin: const EdgeInsets.all(2),
      child: Column(
        children: [
          SizedBox(
            //height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width / 2,
            child: Stack(
              children: [
                Image.asset('assets/images/shirt.jpg'),
                Positioned(
                  bottom: 13,
                  left: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white70),
                    child: const Row(
                      children: [
                        Text(
                          '4',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                        ),
                        Text(' | '),
                        Text(
                          '4.2 k',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // Use const with constructor for better performance

          const ProductDescription(
            productName: 'shirt',
            productDesc: 'cotton',
            priceBefore: '599',
            priceNow: '299',
            offer: '40 % OFF',
          )
        ],
      ),
    );
  }
}
