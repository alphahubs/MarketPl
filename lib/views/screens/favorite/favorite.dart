import 'package:flutter/material.dart';
import 'package:marketplace/utils/app_bar_widget.dart';

import '../../../constant/screens.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const AppBarWidget(
          heading: 'Favorite',
        ),
        sizedHeight30,
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index) {
              return sizedHeight15;
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
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
              );
            },
          ),
        ),
      ],
    ));
  }
}
