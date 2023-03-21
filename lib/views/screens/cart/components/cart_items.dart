import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/models/products/product_model.dart';

import '../../../../constant/screens.dart';
import 'cart_count.dart';

class CartItems extends StatelessWidget {
  final Product product;
  const CartItems({
    Key? key,
    required this.product,
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
              color: placeholder,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(product.productImage),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                product.productName,
                style: productNameStyle,
              ),
              Text(
                'NGN ${product.productPrice}',
                style: priceTextStyle,
              ),
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
