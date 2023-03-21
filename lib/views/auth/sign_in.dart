import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
import '../../constant/screens.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  static String route = 'sign_in';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  bool visiblePassWord = true;
  void showPassword() {
    setState(() {
      visiblePassWord = !visiblePassWord;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: primaryPadding,
        child: ListView(
          children: [
            Text(
              'Sign In',
              style: primaryTextStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            sizedHeight20,
            const Text('Welcome back, we\'ve missed you'),
            sizedHeight30,
            CustomTextField(
              inputHint: 'johndoe@gmail.com',
              label: 'Email Address',
              prefixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Ionicons.mail_outline)),
            ),
            CustomTextField(
              inputHint: 'enter password',
              label: 'Passsword',
              obscureText: visiblePassWord,
              prefixIcon:
                  IconButton(onPressed: () {}, icon: const Icon(Iconsax.lock)),
              suffixIcon: IconButton(
                onPressed: () => showPassword(),
                icon: visiblePassWord
                    ? const Icon(Iconsax.eye_slash)
                    : const Icon(Iconsax.eye),
              ),
            ),
            sizedHeight05,
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, SignUp.route, (route) => false),
                child: const Text(
                  'Forgot Password?',
                ),
              ),
            ),
            sizedHeight30,
            CustomButton(
              buttonText: 'Sign In',
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, MainScreen.route, (route) => false),
            ),
            sizedHeight20,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account yet?',
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, SignUp.route, (route) => false),
                  child: const Text(
                    'Sign Up',
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
