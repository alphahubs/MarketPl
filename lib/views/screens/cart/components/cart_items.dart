import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constant/screens.dart';
import 'cart_count.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: secondaryColor.withOpacity(0.05),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // RichText(
              //     text: TextSpan(
              //   style: secondaryTextStyle.copyWith(
              //     color: secondaryColor,
              //   ),
              //   children: const [
              //     TextSpan(text: 'Product Name\n'),
              //     TextSpan(text: '\$price\n'),
              //     TextSpan(text: 'QTY'),
              //   ],
              // )),
              const Text('Product Name'),
              const Text('\$price'),
              sizedHeight10,
              Row(
                children: const [
                  CartCountBtn(
                    icon: Icon(Iconsax.minus),
                  ),
                  sizedWidth05,
                  Text('01'),
                  sizedWidth05,
                  CartCountBtn(
                    icon: Icon(Iconsax.add),
                  ),
                ],
              )
            ],
          ),
          sizedWidth30,
          const CartCountBtn(
            icon: Icon(Iconsax.close_circle),
          ),
        ],
      ),
    );
  }
}
