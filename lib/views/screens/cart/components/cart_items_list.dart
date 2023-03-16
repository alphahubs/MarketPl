import 'package:flutter/material.dart';

import '../../../../constant/screens.dart';
import 'cart_items.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) {
          return sizedHeight10;
        },
        itemBuilder: (BuildContext context, int index) {
          return const CartItems();
        },
      ),
    );
  }
}
