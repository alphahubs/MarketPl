import 'package:flutter/material.dart';

import '../../../../constant/screens.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recently Viewed',
          style: secondaryTextStyle.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        sizedHeight10,
        Container(
          height: 80,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: secondaryColor.withOpacity(.05),
          ),
          child: Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 50,
                  width: 50,
                  color: primaryColor,
                ),
              ),
              title: const Text('Product Name'),
              subtitle: const Text('Product Category'),
              trailing: Text(
                '\$price',
                style: secondaryTextStyle.copyWith(
                  color: secondaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
