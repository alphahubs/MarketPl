import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static const String imgUrl =
      'https://cdn.pixabay.com/photo/2018/09/14/10/59/food-3676766_960_720.jpg';
  const ScreenTwo({super.key});

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
        SizedBox(
          height: height * 0.30,
          child: const Text('Data'),
        )
      ],
    );
  }
}
