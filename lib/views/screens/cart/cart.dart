import 'package:flutter/material.dart';
import 'package:marketplace/constant/screens.dart';
import 'package:marketplace/models/products/product_data.dart';
import 'package:marketplace/views/screens/cart/components/cart_items_list.dart';

import '../../../utils/app_bar_widget.dart';
import 'components/cart_discount.dart';
import 'components/checkout_btn.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        AppBarWidget(
          heading: Text(
            'Cart',
            style: secondaryTextStyle.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        sizedHeight10,
        Text('${products.length} items in your cart'),
        sizedHeight10,
        const CartDiscout(),
        sizedHeight20,
        const CartItemsList(),
        sizedHeight10,
        const CheckoutBtn()
      ],
    ));
  }
}
