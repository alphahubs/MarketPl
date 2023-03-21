import 'package:flutter/material.dart';

import '../../../../constant/screens.dart';

class CartCountBtn extends StatelessWidget {
  final Widget icon;
  const CartCountBtn({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.05),
        shape: BoxShape.circle,
      ),
      height: 30,
      width: 30,
      // child: const Icon(Iconsax.arrow_left_2)
      child: IconButton(
        icon: icon,
        iconSize: 15,
        onPressed: () {},
      ),
    );
  }
}
