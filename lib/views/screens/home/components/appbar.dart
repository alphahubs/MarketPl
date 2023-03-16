import 'package:flutter/material.dart';
import 'package:marketplace/constant/screens.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: secondaryTextStyle,
              ),
              Text(
                'May Valerie',
                style: primaryTextStyle,
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: primaryColor,
            minRadius: 25,
          )
        ],
      ),
    );
  }
}
