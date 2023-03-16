import 'package:flutter/material.dart';

import '../../../../constant/screens.dart';

class CheckoutBtn extends StatelessWidget {
  const CheckoutBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Total'),
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
            buttonText: 'Checkout',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
