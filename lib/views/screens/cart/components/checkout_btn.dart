import 'package:flutter/material.dart';

import '../../../../constant/screens.dart';

class CheckoutBtn extends StatelessWidget {
  final String? buttonText, price;
  const CheckoutBtn({
    Key? key,
    this.buttonText,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(price ?? 'Total'),
            Text(
              '\$price',
              style: secondaryTextStyle.copyWith(
                fontSize: 23,
                color: secondaryColor,
              ),
            ),
          ],
        ),
        sizedWidth60,
        Expanded(
          child: CustomButton(
            buttonText: buttonText ?? 'Checkout',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
