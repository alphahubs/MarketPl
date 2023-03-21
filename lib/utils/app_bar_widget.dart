// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:marketplace/constant/screens.dart';

class AppBarWidget extends StatelessWidget {
  final Widget? heading;
  final bool? favIsVisible;
  const AppBarWidget({
    Key? key,
    this.heading,
    this.favIsVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          // radius: 50,
          borderRadius: BorderRadius.circular(50),
          onTap: () {
            Navigator.pushNamed(context, MainScreen.route);
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: secondaryColor.withOpacity(.3),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: const Offset(0, 0))
                  ]),
              height: 40,
              width: 40,
              child: const Icon(Iconsax.arrow_left_2)),
        ),
        Align(
          alignment: Alignment.center,
          child: heading,
        ),
        Visibility(
            replacement:
                favIsVisible ?? false ? const SizedBox.shrink() : sizedWidth40,
            visible: favIsVisible ?? false,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: secondaryColor.withOpacity(.3),
                            blurRadius: 5,
                            spreadRadius: 2,
                            offset: const Offset(0, 0))
                      ]),
                  height: 40,
                  width: 40,
                  child: const Icon(Iconsax.heart)),
            )),
      ],
    );
  }
}
