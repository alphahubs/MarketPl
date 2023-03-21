import 'package:flutter/material.dart';
import 'package:marketplace/models/products/product_data.dart';
import 'package:marketplace/models/products/product_model.dart';

import '../../../../constant/screens.dart';
import 'cart_items.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: products.length,
        separatorBuilder: (BuildContext context, int index) {
          return sizedHeight10;
        },
        itemBuilder: (BuildContext context, int index) {
          return CartItems(
            product: productList[index],
          );
        },
      ),
    );
  }
}
