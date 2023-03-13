import 'package:flutter/material.dart';
import 'package:marketplace/onboarding/body/screen1.dart';
import 'package:marketplace/onboarding/body/screen2.dart';
import 'package:marketplace/onboarding/body/screen3.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  PageController pageViewController = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            allowImplicitScrolling: true,
            controller: pageViewController,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              ScreenOne(),
              ScreenTwo(),
              ScreenThree(),
            ],
          ),
          Expanded(
            child: Positioned(
              bottom: 80,
              child: Container(
                // height: height,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
