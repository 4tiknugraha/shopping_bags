import 'package:flutter/material.dart';
import 'package:shopping_bags/constants.dart';
import 'package:shopping_bags/models/product.dart';
import 'package:shopping_bags/screens/details/components/product_title_with_image.dart';

import 'add_to_card.dart';
import 'color_and_size.dart';
import 'counter_btn_heart.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterBtnHeart(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCard(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
