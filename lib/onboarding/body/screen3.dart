import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  static const String imgUrl =
      'https://cdn.pixabay.com/photo/2020/11/25/11/52/shopping-5775491_960_720.jpg';
  const ScreenThree({super.key});

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
          child: const Text('data'),
        )
      ],
    );
  }
}
