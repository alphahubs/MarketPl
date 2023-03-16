import 'package:flutter/material.dart';
import 'package:marketplace/constant/screens.dart';
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
      children: const [
        AppBarWidget(heading: 'Cart'),
        sizedHeight10,
        Text('\$index items in your cart'),
        sizedHeight10,
        CartDiscout(),
        sizedHeight20,
        CartItemsList(),
        sizedHeight10,
        CheckoutBtn()
      ],
    ));
  }
}
