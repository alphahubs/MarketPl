import 'package:flutter/material.dart';
import 'package:marketplace/constant/styles.dart';

class ScreenOne extends StatelessWidget {
  static const String imgUrl =
      'https://cdn.pixabay.com/photo/2015/07/10/16/15/bag-839602_960_720.jpg';
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
            height: height * 0.65,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
            ))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: height * 0.30,
            child: Text(
              'Buy Your Groceries with ease',
              style: mainTextStyle.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
