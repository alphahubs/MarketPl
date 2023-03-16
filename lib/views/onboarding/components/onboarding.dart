import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constant/screens.dart';

class Onboarding extends StatefulWidget {
  static String route = 'onboarding';
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageViewController = PageController();
  bool onLastPage = false;

  @override
  build(BuildContext context) {
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
            //* This is the onboarding widget
            children: const [
              OnboardingWidget(
                imgUrl:
                    'https://cdn.pixabay.com/photo/2015/07/10/16/15/bag-839602_960_720.jpg',
                heading: 'Buy your Groceries \nwith ease',
                desc:
                    'Shop from the thousands of groceries, fruits, livestocks, vegetables, beverages, etc in our store with ease.',
              ),
              OnboardingWidget(
                imgUrl:
                    'https://cdn.pixabay.com/photo/2018/09/14/10/59/food-3676766_960_720.jpg',
                heading: 'Get discounts on \nbulk orders',
                desc:
                    'Get amazing discounts when you buy goods in bulk and use the app frequently.',
              ),
              OnboardingWidget(
                imgUrl:
                    'https://cdn.pixabay.com/photo/2020/11/25/11/52/shopping-5775491_960_720.jpg',
                heading: 'Your order delivered\nto your doorstep',
                desc:
                    'Once you have selected everything you want to buy, input your address and get your order delivered to your doorstep.',
              ),
            ],
          ),
          Positioned(
            child: Align(
              alignment: const Alignment(0, 0.65),
              child: SmoothPageIndicator(
                onDotClicked: (index) {
                  setState(() {
                    index += 1;
                  });
                },
                effect: WormEffect(
                  activeDotColor: primaryColor,
                  strokeWidth: .5,
                ),
                controller: pageViewController,
                count: 3,
              ),
            ),
          ),
          Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Padding(
                padding: primaryPadding,
                child: CustomButton(
                  buttonText: 'Sign Up',
                  onPressed: () {
                    onLastPage
                        ? Navigator.pushNamedAndRemoveUntil(
                            context, SignUp.route, (route) => false)
                        : pageViewController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                  },
                ),
              )),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, SignIn.route, (route) => false),
                  child: const Text(
                    'Login',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
