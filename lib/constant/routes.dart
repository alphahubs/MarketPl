import 'package:flutter/cupertino.dart';

import '../constant/screens.dart';

final Map<String, WidgetBuilder> routes = {
  Onboarding.route: (context) => const Onboarding(),
  SignUp.route: (context) => const SignUp(),
  SignIn.route: (context) => const SignIn(),
  MainScreen.route: (context) => const MainScreen(),
  // DetailScreen.route: (context) => DetailScreen(
  //       products: products,
  //     ),
};
