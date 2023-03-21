import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace/constant/validation.dart';

import '../../constant/screens.dart';

class SignUp extends StatefulWidget {
  static String route = 'sign_up';

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Text(
                'Sign Up',
                style: primaryTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              sizedHeight20,
              const Text('Welcome, fill in your details to start shopping'),
              sizedHeight30,
              const CustomTextField(
                inputHint: 'John Doe',
                label: 'Full name',
              ),
              const CustomTextField(
                inputHint: 'johndoe@gmail.com',
                label: 'Email Address',
                validator: validateEmail,
              ),
              CustomTextField(
                inputHint: 'enter password',
                label: 'Passsword',
                validator: validatePassword,
                obscureText: visiblePassWord,
                suffixIcon: IconButton(
                  onPressed: () => showPassword(),
                  icon: visiblePassWord
                      ? const Icon(Iconsax.eye_slash)
                      : const Icon(Iconsax.eye),
                ),
              ),
              CustomTextField(
                inputHint: '*******',
                label: 'Confirm Password',
                obscureText: visiblePassWord,
              ),
              sizedHeight20,
              CustomButton(
                buttonText: 'Sign Up',
                onPressed: () {},
              ),
              sizedHeight20,
              Row(
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
            ],
          ),
        ),
      )),
    );
  }
}
