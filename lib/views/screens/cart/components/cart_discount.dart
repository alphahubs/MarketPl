import 'package:flutter/material.dart';

import '../../../../constant/screens.dart';

class CartDiscout extends StatelessWidget {
  const CartDiscout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: secondaryColor.withOpacity(0.8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tap to apply discounts',
            style: secondaryTextStyle.copyWith(color: Colors.white),
          ),
          sizedHeight10,
          Text(
            'You get 15% off all orders above \$price',
            style: tertiaryTextStyle.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
