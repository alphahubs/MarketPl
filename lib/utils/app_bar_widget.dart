import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/constant/colors.dart';
import 'package:marketplace/constant/styles.dart';

class AppBarWidget extends StatelessWidget {
  final String heading;
  const AppBarWidget({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.05),
            shape: BoxShape.circle,
          ),
          height: 40,
          width: 40,
          child: IconButton(
            icon: const Icon(Iconsax.arrow_left_2),
            onPressed: () {},
          ),
        ),
        Text(
          heading,
          style: secondaryTextStyle.copyWith(fontSize: 18),
        ),
        Container(
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.05),
              shape: BoxShape.circle,
            ),
            height: 40,
            width: 40,
            child: IconButton(
              icon: const Icon(Iconsax.heart),
              onPressed: () {},
            )),
      ],
    );
  }
}
