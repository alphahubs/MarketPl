import 'package:flutter/material.dart';

import '../constant/screens.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;
  const CustomButton({
    Key? key,
    this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
