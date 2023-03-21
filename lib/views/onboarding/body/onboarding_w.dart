import 'package:flutter/material.dart';

import '../../../constant/screens.dart';

class OnboardingWidget extends StatelessWidget {
  final String imgUrl;
  final String heading;
  final String desc;
  const OnboardingWidget({
    super.key,
    required this.imgUrl,
    required this.heading,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
            height: height * 0.61,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
            ))),
        Padding(
          padding: secondaryPadding,
          child: SizedBox(
            // color: secondaryColor,
            // height: height * 0.3,
            child: Column(
              children: [
                Text(
                  heading,
                  style: primaryTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  desc,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
