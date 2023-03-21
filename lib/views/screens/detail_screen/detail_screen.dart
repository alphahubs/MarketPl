import 'package:flutter/material.dart';

import 'package:marketplace/utils/app_bar_widget.dart';
import 'package:marketplace/views/screens/detail_screen/product_desc.dart';

import '../../../constant/screens.dart';
import '../../../models/products/product_model.dart';

class DetailScreen extends StatelessWidget {
  final Product products;

  const DetailScreen({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            // Product Image
            Positioned(
              child: Container(
                height: 380,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: primaryColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(products.productImage),
                    )),
              ),
            ),
            // Product description
            ProductDescription(products: products),
            // App bar widget
            const Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Padding(
                padding: primaryPadding,
                child: AppBarWidget(
                  favIsVisible: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
