// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marketplace/models/products/product_model.dart';

import '../../../../constant/screens.dart';

class RecentlyViewed extends StatelessWidget {
  final Product product;
  const RecentlyViewed({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recently Viewed',
          style: secondaryTextStyle.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        sizedHeight10,
        Container(
          height: 80,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: secondaryColor.withOpacity(.05),
          ),
          child: Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: placeholder,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(product.productImage))),
                ),
              ),
              title: Text(product.productName),
              subtitle: Text(
                product.productCategory,
                style: productCategoryStyle,
              ),
              trailing: Text(
                'NGN ${product.productPrice}',
                style: priceTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
