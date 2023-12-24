import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    this.productName,
    this.productDesc,
    this.priceBefore,
    this.priceNow,
    this.offer,
  }) : super(key: key);
  final String? productName;
  final String? productDesc;
  final String? priceBefore;
  final String? priceNow;
  final String? offer;

  @override
  Widget build(BuildContext context) {
    /// Always remove unnecessary containers and use sizedBox over container when there is no decoration

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName!,
                style: const TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w600),
              ),
              Text(
                productDesc!,
                style: const TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  Text(
                    '\u{20B9} $priceBefore',
                    style: const TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
                  Text('\u{20B9} $priceNow'),
                ],
              ),
              Text(offer!)
            ],
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_border))
        ],
      ),
    );
  }
}
